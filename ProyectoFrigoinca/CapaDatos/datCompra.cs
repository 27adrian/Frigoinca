using CapaEntidad;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    
    public class datCompra
    {
       
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly datCompra _instancia = new datCompra();
        //privado para evitar la instanciación directa
        public static datCompra Instancia
        {
            get
            {
                return datCompra._instancia;
            }
        }
        #endregion singleton

        #region metodos
        // Método para obtener órdenes de compra activas
        public List<entCompraActiva> ObtenerOrdenesCompraActivas()
        {
            List<entCompraActiva> lista = new List<entCompraActiva>();

            try
            {
                SqlConnection con = Conexion.Instancia.Conectar();
                {
                    
                    using (SqlCommand cmd = new SqlCommand("ListarOrdenesCompraActivas", con))
                    {
                        con.Open();
                        cmd.CommandType = CommandType.StoredProcedure;

                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            while (dr.Read())
                            {
                                entCompraActiva orden = new entCompraActiva
                                {
                                    idOrdCom = Convert.ToInt32(dr["idOrdCom"]),                                    
                                    cantidad = Convert.ToInt32(dr["cantidad"]),                                    
                                    fechaRegistro = Convert.ToDateTime(dr["fechaRegistro"]),
                                    descripcion = dr["descripcion"].ToString(),
                                    estado = Convert.ToBoolean(dr["estado"])
                                };
                                lista.Add(orden);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Manejo de excepciones
                throw new Exception("Error al obtener las órdenes de compra activas", ex);
            }

            return lista;
        }

        public List<entCompra> ListarCompra()
        {
            SqlCommand cmd = null;
            List<entCompra> lista = new List<entCompra>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cmd = new SqlCommand("ListarCompra", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                if (cn.State == ConnectionState.Closed)
                    cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    entCompra co = new entCompra
                    {
                        idOrdCom = Convert.ToInt64(dr["idOrdCom"]),
                        descMedPag = dr["descMedPag"].ToString(),
                        nombProv = dr["nombProv"].ToString(),
                        idReqComp = obtenerIntNulo(dr["idReqComp"]),
                        cantidad = Convert.ToInt32(dr["cantidad"]),
                        monto = Convert.ToDecimal(dr["monto"]),
                        montoTotal = Convert.ToDecimal(dr["montoTotal"]),
                        fechaRegistro = Convert.ToDateTime(dr["fechaRegistro"]),
                        descripcion = dr["descripcion"].ToString()
                    };
                    lista.Add(co);
                }
                dr.Close(); // Asegúrate de cerrar el SqlDataReader
            }
            catch (Exception e)
            {
                throw new Exception("Error al listar las compras", e); // Mejora el manejo de excepciones
            }
            finally
            {
                if (cmd != null && cmd.Connection != null && cmd.Connection.State == ConnectionState.Open)
                {
                    cmd.Connection.Close();
                }
            }
            return lista;
        }

        private int? obtenerIntNulo(object columna)
        {
            if (columna == DBNull.Value)
                return null;
            else
                return Convert.ToInt32(columna);
        }

        public bool VerificarYActualizarRequerimiento(int idReqComp)
        {
            SqlCommand cmd = null;
            bool actualizado = false;
            try
            {
                using (SqlConnection cn = Conexion.Instancia.Conectar())
                {
                    cmd = new SqlCommand("VerificarYActualizarRequerimiento", cn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@idReqComp", idReqComp);

                    SqlParameter outputParam = new SqlParameter("@actualizado", SqlDbType.Bit)
                    {
                        Direction = ParameterDirection.Output
                    };
                    cmd.Parameters.Add(outputParam);

                    cn.Open();
                    cmd.ExecuteNonQuery();
                    actualizado = Convert.ToBoolean(outputParam.Value);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                if (cmd != null && cmd.Connection != null)
                {
                    cmd.Connection.Close();
                }
            }
            return actualizado;
        }

        public bool InsertarOrdenCompra(entOrdenCompra ordenCompra)
        {
            SqlCommand cmd = null;
            bool insertado = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("[InsertarOrdenCompra]", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idMedPago", ordenCompra.idMedPago);
                cmd.Parameters.AddWithValue("@idProv", ordenCompra.idProv);

                // Check if idReqComp is null and set parameter value accordingly
                if (ordenCompra.idReqComp == null)
                {
                    cmd.Parameters.AddWithValue("@idReqComp", DBNull.Value);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@idReqComp", ordenCompra.idReqComp);
                }

                cmd.Parameters.AddWithValue("@cantidad", ordenCompra.cantidad);
                cmd.Parameters.AddWithValue("@monto", ordenCompra.monto);
                cmd.Parameters.AddWithValue("@montoTotal", ordenCompra.montoTotal);
                cmd.Parameters.AddWithValue("@fechaRegistro", ordenCompra.fechaRegistro);
                cmd.Parameters.AddWithValue("@descripcion", ordenCompra.descripcion);
                cmd.Parameters.AddWithValue("@estado", ordenCompra.estado);

                cn.Open();
                int rowsAffected = cmd.ExecuteNonQuery();
                insertado = rowsAffected > 0;
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                if (cmd.Connection != null && cmd.Connection.State == ConnectionState.Open)
                {
                    cmd.Connection.Close();
                }
            }
            return insertado;
        }

        #endregion
    }
}

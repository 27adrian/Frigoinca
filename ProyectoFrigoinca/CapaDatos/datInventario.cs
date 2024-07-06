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
    public class datInventario
    {

        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly datInventario _instancia = new datInventario();
        //privado para evitar la instanciación directa
        public static datInventario Instancia
        {
            get
            {
                return datInventario._instancia;
            }
        }
        #endregion singleton

        #region metodos

        //Agregar


        public void InsertarInventario(int stock, DateTime fechaRegistro, decimal precioXunidad, string descripcion)
        {
            SqlCommand cmd = null;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); // singleton
                cmd = new SqlCommand("InsertarInventario", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@stock", stock);
                cmd.Parameters.AddWithValue("@fechaRegistro", fechaRegistro);
                cmd.Parameters.AddWithValue("@precioXunidad", precioXunidad);
                cmd.Parameters.AddWithValue("@descripcion", descripcion);
                cn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                cmd.Connection.Close();
            }
        }

        // Método para verificar si la descripción existe y obtener el precio por unidad
        public Tuple<bool, decimal?> CheckDescriptionExists(string descripcion)
        {
            bool exists = false;
            decimal? precioUnidad = null;
            SqlCommand cmd = null;

            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("CheckDescriptionExists", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@descripcion", descripcion);
                cn.Open();

                // Ejecutar el procedimiento almacenado y obtener el resultado
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    int count = Convert.ToInt32(reader["CountDescription"]);
                    exists = (count > 0);
                    if (exists)
                    {
                        // Obtener el precio por unidad si existe la descripción
                        if (reader["PrecioUnidad"] != DBNull.Value)
                        {
                            precioUnidad = Convert.ToDecimal(reader["PrecioUnidad"]);
                        }
                    }
                }
                reader.Close();
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

            return new Tuple<bool, decimal?>(exists, precioUnidad);
        }

        public List<entInventario> ListarInventario()
        {
            List<entInventario> inventarios = new List<entInventario>();
            SqlCommand cmd = null;
            SqlDataReader dr = null;

            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); // Utilizando el Singleton de la clase Conexion
                cmd = new SqlCommand("ListarInventario", cn); // Nombre del procedimiento almacenado
                cmd.CommandType = CommandType.StoredProcedure;
                cn.Open();

                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    entInventario inventario = new entInventario();
                    inventario.IdInv = Convert.ToInt32(dr["idInv"]);
                    inventario.Stock = Convert.ToInt32(dr["stock"]);
                    inventario.FechaRegistro = Convert.ToDateTime(dr["fechaRegistro"]);
                    inventario.PrecioXunidad = Convert.ToDecimal(dr["precioXunidad"]);
                    inventario.Descripcion = dr["descripcion"].ToString();
                    // Mapear más propiedades si es necesario

                    inventarios.Add(inventario);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                if (dr != null)
                {
                    dr.Close();
                    dr.Dispose();
                }
                if (cmd != null && cmd.Connection != null)
                {
                    cmd.Connection.Close();
                }
            }

            return inventarios;
        }

        public List<entInventario2> BuscarInventarioPorDesc(string descripcion)
        {
            SqlCommand cmd = null;
            List<entInventario2> lista = new List<entInventario2>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cn.Open();
                cmd = new SqlCommand("BuscarInventarioPorDescripcion", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@descripcion", descripcion);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    entInventario2 inventario = new entInventario2();
                    inventario.IdInv = Convert.ToInt32(dr["idInv"]);
                    inventario.Descripcion = dr["descripcion"].ToString();
                    inventario.PrecioXunidad = Convert.ToDecimal(dr["precioXunidad"]);
                    inventario.Stock = Convert.ToInt32(dr["stock"]);
                    lista.Add(inventario);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                cmd.Connection.Close();
            }
            return lista;
        }

       
        public List<entInventario2> listarInventarioVenta()
        {
            SqlCommand cmd = null;
            List<entInventario2> lista = new List<entInventario2>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cmd = new SqlCommand("ListarInventarioVenta", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    entInventario2 co = new entInventario2();
                    co.IdInv = Convert.ToInt32(dr["idInv"]);
                    co.Descripcion = dr["descripcion"].ToString();
                    co.PrecioXunidad = Convert.ToDecimal(dr["precioXunidad"]);
                    co.Stock = Convert.ToInt32(dr["stock"]);
                    lista.Add(co);
                }
            }
            catch (Exception e)
            {
                throw e;

            }
            finally
            {
                cmd.Connection.Close();
            }
            return lista;
        }

        public void ActualizarPrecioXUnidad(int idInv, decimal nuevoPrecio)
        {
            SqlCommand cmd = null;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); // singleton
                cmd = new SqlCommand("ActualizarPrecioXUnidad", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idInv", idInv);
                cmd.Parameters.AddWithValue("@nuevoPrecio", nuevoPrecio);
                cn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                cmd.Connection.Close();
            }
        }

        public List<entInventario3> RequerimientosInventarioStock()
        {
            SqlCommand cmd = null;
            List<entInventario3> lista = new List<entInventario3>();
            try
            {
                using (SqlConnection cn = Conexion.Instancia.Conectar()) // Usando using para garantizar la disposición adecuada de recursos
                {
                    cmd = new SqlCommand("RequerimientosInvConStockBajo", cn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cn.Open();

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            entInventario3 inv = new entInventario3();
                            inv.IdInv = Convert.ToInt32(dr["idInv"]);
                            inv.Stock = Convert.ToInt32(dr["stock"]);
                            inv.Descripcion = dr["descripcion"].ToString();

                            lista.Add(inv);
                        }
                    }
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
            return lista;
        }

        //Restar a materia prima 

        public void ReduceMaterial(int idMP, int cantidad)
        {
            using (SqlConnection conn = Conexion.Instancia.Conectar())
            {
                using (SqlCommand cmd = new SqlCommand("ReduceMaterial", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@idMP", idMP);
                    cmd.Parameters.AddWithValue("@cantidad", cantidad);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
            }
        }

        public DataTable BuscarInventarioPorDescripcion(string descripcion)
        {
            DataTable dt = new DataTable();
            SqlCommand cmd = null;
            SqlDataAdapter da = null;

            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); // Utilizando el Singleton de la clase Conexion
                cmd = new SqlCommand("BuscarInventario", cn); // Nombre del procedimiento almacenado
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@descripcion", descripcion);
                cn.Open();

                da = new SqlDataAdapter(cmd);
                da.Fill(dt);
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
                if (da != null)
                {
                    da.Dispose();
                }
            }

            return dt;
        }

        #endregion
    }
}

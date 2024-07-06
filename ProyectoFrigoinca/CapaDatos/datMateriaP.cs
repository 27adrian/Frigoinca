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
    public class datMateriaP
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly datMateriaP _instancia = new datMateriaP();
        //privado para evitar la instanciación directa
        public static datMateriaP Instancia
        {
            get
            {
                return datMateriaP._instancia;
            }
        }
        #endregion singleton

        #region metodos

        ///REGISTRAR
        public bool AtenderOrdenCompraYRegistrarIngreso(long idOrdCom, int cantidad, bool estado, string descripcion)
        {
            SqlCommand cmd = null;
            bool exito = false;
            try
            {
                using (SqlConnection cn = Conexion.Instancia.Conectar())
                {
                    cmd = new SqlCommand("AtenderOrdenCompraYRegistrarIngreso", cn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@idOrdCom", idOrdCom);
                    cmd.Parameters.AddWithValue("@cantidad", cantidad);
                    cmd.Parameters.AddWithValue("@estado", estado);
                    cmd.Parameters.AddWithValue("@descripcion", descripcion);

                    cn.Open();
                    int result = Convert.ToInt32(cmd.ExecuteScalar());
                    exito = result == 1;
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
            return exito;
        }
        ////////////////////listadoMateria
        public List<entMateriaP> ListarMateriaP()
        {
            SqlCommand cmd = null;
            List<entMateriaP> lista = new List<entMateriaP>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cmd = new SqlCommand("[ListarMateriaP]", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    entMateriaP p = new entMateriaP();
                    p.idMP = Convert.ToInt64(dr["idMP"]);
                    p.idOrdCom = Convert.ToInt64(dr["idOrdCom"]);
                    p.cantidad = Convert.ToInt32(dr["cantidad"]);
                    p.estado = Convert.ToBoolean(dr["estado"]);
                    p.descripcion = dr["descripcion"].ToString();
                    lista.Add(p);
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

        public List<entMateriaP> ListarMatePriActiva()
        {
            SqlCommand cmd = null;
            List<entMateriaP> lista = new List<entMateriaP>();

            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); // singleton
                cmd = new SqlCommand("ListarMateriaPrimaActiva", cn);
                cmd.CommandType = CommandType.StoredProcedure;

                if (cn.State == ConnectionState.Closed)
                    cn.Open();

                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    entMateriaP p = new entMateriaP();
                    p.idMP = Convert.ToInt64(dr["idMP"]);
                    p.idOrdCom = Convert.ToInt64(dr["idOrdCom"]);
                    p.cantidad = Convert.ToInt32(dr["cantidad"]);
                    p.estado = Convert.ToBoolean(dr["estado"]);
                    p.descripcion = dr["descripcion"].ToString();
                    lista.Add(p);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                if (cmd != null && cmd.Connection.State == ConnectionState.Open)
                {
                    cmd.Connection.Close();
                }
            }

            return lista;
        }

        public List<entMateriaP> BuscarMateriaPPorDescripcion(string descripcion)
        {
            SqlCommand cmd = null;
            List<entMateriaP> lista = new List<entMateriaP>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cmd = new SqlCommand("[BuscarMateriaPPorDescripcion]", cn);
                cn.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@descripcion", descripcion);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    entMateriaP p = new entMateriaP();
                    p.idMP = Convert.ToInt64(dr["idMP"]);
                    p.idOrdCom = Convert.ToInt64(dr["idOrdCom"]);
                    p.cantidad = Convert.ToInt32(dr["cantidad"]);
                    p.estado = Convert.ToBoolean(dr["estado"]);
                    p.descripcion = dr["descripcion"].ToString();
                    lista.Add(p);
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

        public Tuple<int, string> BuscarIngresoMP(long idMP)
        {
            SqlCommand cmd = null;
            Tuple<int, string> resultado = null;

            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); // Ejemplo de uso del patrón Singleton en la conexión
                cmd = new SqlCommand("BuscarIngresoMP", cn); // Nombre del procedimiento almacenado
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idMP", idMP); // Parámetro para filtrar por idMP
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    int cantidad = Convert.ToInt32(dr["cantidad"]);
                    string descripcion = dr["descripcion"].ToString();
                    resultado = new Tuple<int, string>(cantidad, descripcion);
                }
            }
            catch (Exception e)
            {
                throw e;
                // Aquí manejarías la excepción de alguna forma específica para tu aplicación
            }
            finally
            {
                if (cmd != null && cmd.Connection != null)
                {
                    cmd.Connection.Close();
                }
            }

            return resultado;
        }

        //ACTUALIZAR STOCK Y REDUCIR MATERIA PRIMA 
        public void UpdateStockAndReduceMaterial(int idMP, int idInv, int cantidad)
        {
            using (SqlConnection conn = Conexion.Instancia.Conectar())
            {
                using (SqlCommand cmd = new SqlCommand("UpdateStockAndReduceMaterial", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@idMP", idMP);
                    cmd.Parameters.AddWithValue("@idInv", idInv);
                    cmd.Parameters.AddWithValue("@cantidad", cantidad);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
            }
        }

        public bool DeshabilitarMateria(int idMP)
        {
            bool deshabilitado = false;
            SqlCommand cmd = null;
            SqlConnection cn = null;
            try
            {
                cn = Conexion.Instancia.Conectar(); // Suponiendo que Conexion.Instancia devuelve una instancia válida de SqlConnection
                cmd = new SqlCommand("DeshabilitarMateriaPrima", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idMP", idMP);

                if (cn.State == ConnectionState.Closed)
                    cn.Open();

                // Utilizamos ExecuteScalar para obtener el resultado directamente
                int resultado = Convert.ToInt32(cmd.ExecuteScalar());

                // Si el resultado es 1, significa que se deshabilitó correctamente
                deshabilitado = resultado == 1;
            }
            catch (Exception e)
            {
                Console.WriteLine("Error al deshabilitar la materia: " + e.Message);
                throw; // Re-lanzamos la excepción para manejarla en capas superiores
            }
            finally
            {
                // Cerramos la conexión en el bloque finally para asegurar que siempre se cierre
                if (cn != null && cn.State == ConnectionState.Open)
                    cn.Close();
            }
            return deshabilitado;
        }


        #endregion
    }
}

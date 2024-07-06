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
    public class datProveedor
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly datProveedor _instancia = new datProveedor();
        //privado para evitar la instanciación directa
        public static datProveedor Instancia
        {
            get
            {
                return datProveedor._instancia;
            }
        }

        #endregion singleton

        public List<entProveedor> ListarProveedor()
        {
            SqlCommand cmd = null;
            List<entProveedor> lista = new List<entProveedor>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cmd = new SqlCommand("[ListarProveedor]", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    entProveedor p = new entProveedor();
                    p.idProv = Convert.ToInt32(dr["idProv"]);
                    p.especie = dr["especie"].ToString(); // Aquí especie en lugar de idAnimal
                    p.idUbigeo = Convert.ToInt32(dr["idUbigeo"]);
                    p.nombProv = dr["nombProv"].ToString();
                    p.estado = Convert.ToBoolean(dr["estado"]);
                    p.fecha = Convert.ToDateTime(dr["fecha"]);
                    p.direccion = dr["direccion"].ToString();
                    p.telefono = Convert.ToInt64(dr["telefono"]);
                    p.ruc = Convert.ToInt64(dr["ruc"]);
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
        public Boolean Insertarproveedor(entProveedor Prov)
        {
            SqlCommand cmd = null;
            Boolean inserta = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("InsertarProveedor", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idAnimal", Prov.especie);
                cmd.Parameters.AddWithValue("@idUbigeo", Prov.idUbigeo);
                cmd.Parameters.AddWithValue("@nombProv", Prov.nombProv);
                cmd.Parameters.AddWithValue("@estado", Prov.estado);
                cmd.Parameters.AddWithValue("@fecha", Prov.fecha);
                cmd.Parameters.AddWithValue("@direccion", Prov.direccion);
                cmd.Parameters.AddWithValue("@telefono", Prov.telefono);
                cmd.Parameters.AddWithValue("@ruc", Prov.ruc);
                cn.Open();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    inserta = true;
                }
            }
            catch (Exception e)
            {
                throw e;
            }
            finally { cmd.Connection.Close(); }
            return inserta;
        }
        public Boolean EditarProveedor(entProveedor pro)
        {
            SqlCommand cmd = null;
            Boolean edita = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("EditarProveedor", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idProv", pro.idProv);
                cmd.Parameters.AddWithValue("@idAnimal", pro.especie);
                cmd.Parameters.AddWithValue("@idUbigeo", pro.idUbigeo);
                cmd.Parameters.AddWithValue("@nombProv", pro.nombProv);
                cmd.Parameters.AddWithValue("@estado", pro.estado);
                cmd.Parameters.AddWithValue("@fecha", pro.fecha);
                cmd.Parameters.AddWithValue("@direccion", pro.direccion);
                cmd.Parameters.AddWithValue("@telefono", pro.telefono);
                cmd.Parameters.AddWithValue("@ruc", pro.ruc);
                if (cn.State == ConnectionState.Closed)
                    cn.Open();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    edita = true;
                }
            }
            catch (Exception e)
            {
                throw e;
            }
            finally { cmd.Connection.Close(); }
            return edita;
        }

        public List<entProveedor> BuscarProveedores(string nombProv, long? ruc, DateTime? fecha)
        {
            List<entProveedor> lista = new List<entProveedor>();

            using (SqlConnection cn = Conexion.Instancia.Conectar())
            {
                SqlCommand cmd = new SqlCommand("BuscarProveedor", cn);
                cmd.CommandType = CommandType.StoredProcedure;

                // Añadir parámetros
                cmd.Parameters.AddWithValue("@nombProv", string.IsNullOrEmpty(nombProv) ? (object)DBNull.Value : (object)nombProv);
                cmd.Parameters.AddWithValue("@ruc", ruc.HasValue ? (object)ruc.Value : (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@fecha", fecha != null && fecha.HasValue ? (object)fecha.Value : DBNull.Value);
                if (cn.State == ConnectionState.Closed)
                    cn.Open();

                try
                {
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        entProveedor proveedor = new entProveedor();
                        proveedor.idProv = Convert.ToInt32(dr["idProv"]);
                        proveedor.especie = dr["especie"].ToString();
                        proveedor.idUbigeo = Convert.ToInt32(dr["idUbigeo"]);
                        proveedor.nombProv = dr["nombProv"].ToString();
                        proveedor.estado = Convert.ToBoolean(dr["estado"]);
                        proveedor.fecha = Convert.ToDateTime(dr["fecha"]);
                        proveedor.direccion = dr["direccion"].ToString();
                        proveedor.telefono = Convert.ToInt64(dr["telefono"]);
                        proveedor.ruc = Convert.ToInt64(dr["ruc"]);
                        lista.Add(proveedor);
                    }
                }
                catch (Exception ex)
                {
                    // Manejar excepción
                    throw ex;
                }
            }

            return lista;
        }

        public bool DeshabilitarProveedor(int idProv)
        {
            SqlCommand cmd = null;
            bool deshabilitado = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("DeshabilitarProveedor", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idProv", idProv);

                if (cn.State == ConnectionState.Closed)
                    cn.Open();

                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    deshabilitado = reader.GetInt32(0) == 1;
                }
            }
            catch (Exception e)
            {
                // Captura cualquier excepción que ocurra durante el proceso y la registra
                Console.WriteLine("Error al deshabilitar el proveedor: " + e.Message);
                throw; // Lanza la excepción para que se maneje en la capa superior
            }
            finally
            {
                if (cmd != null && cmd.Connection != null && cmd.Connection.State == ConnectionState.Open)
                    cmd.Connection.Close();
            }
            return deshabilitado;
        }
    }
}

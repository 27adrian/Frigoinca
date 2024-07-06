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
    public class datTrabajador
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly datTrabajador _instancia = new datTrabajador();
        //privado para evitar la instanciación directa
        public static datTrabajador Instancia
        {
            get
            {
                return datTrabajador._instancia;
            }
        }

        #endregion singleton

        public List<entTrabajador> ListarTrabajador()
        {
            SqlCommand cmd = null;
            List<entTrabajador> lista = new List<entTrabajador>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cn.Open();
                cmd = new SqlCommand("[ListarTrabajador]", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    entTrabajador p = new entTrabajador();
                    p.idTrab = Convert.ToInt32(dr["idTrab"]);
                    p.idRol = Convert.ToInt32(dr["idRol"]);
                    p.idUbigeo = Convert.ToInt32(dr["idUbigeo"]);
                    p.nombTrab = dr["nombTrab"].ToString();
                    p.estado = Convert.ToBoolean(dr["estado"]);
                    p.usuario = dr["usuario"].ToString();
                    p.contraseña = dr["contraseña"].ToString();
                    p.fechaRegistro = Convert.ToDateTime(dr["fechaRegistro"]);
                    p.numDoc = Convert.ToInt32(dr["numDoc"]);
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

        public bool InsertarTrabajador(entTrabajador trabajador)
        {
            SqlCommand cmd = null;
            bool insertado = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cn.Open();
                cmd = new SqlCommand("InsertarTrabajador", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idRol", trabajador.idRol);
                cmd.Parameters.AddWithValue("@idUbigeo", trabajador.idUbigeo);
                cmd.Parameters.AddWithValue("@nombTrab", trabajador.nombTrab);
                cmd.Parameters.AddWithValue("@estado", trabajador.estado);
                cmd.Parameters.AddWithValue("@usuario", trabajador.usuario);
                cmd.Parameters.AddWithValue("@contraseña", trabajador.contraseña);
                cmd.Parameters.AddWithValue("@fechaRegistro", trabajador.fechaRegistro);
                cmd.Parameters.AddWithValue("@numDoc",trabajador.numDoc);

                int rowsAffected = cmd.ExecuteNonQuery();
                insertado = rowsAffected > 0;
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                cmd.Connection.Close();
            }
            return insertado;
        }

        public Boolean Editartrabajador(entTrabajador trab)
        {
            SqlCommand cmd = null;
            Boolean edita = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cn.Open();
                cmd = new SqlCommand("EditarTrabajador", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idTrab", trab.idTrab);
                cmd.Parameters.AddWithValue("@idRol", trab.idRol);
                cmd.Parameters.AddWithValue("@idUbigeo", trab.idUbigeo);
                cmd.Parameters.AddWithValue("@nombTrab", trab.nombTrab);
                cmd.Parameters.AddWithValue("@estado", trab.estado);
                cmd.Parameters.AddWithValue("@usuario", trab.usuario);
                cmd.Parameters.AddWithValue("@contraseña", trab.contraseña);
                cmd.Parameters.AddWithValue("@fechaRegistro", trab.fechaRegistro);
                cmd.Parameters.AddWithValue("@numDoc", trab.numDoc);
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

        public Boolean EliminarTrabajador(long idTrab)
        {
            SqlCommand cmd = null;
            Boolean eliminado = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cn.Open();
                cmd = new SqlCommand("EliminarTrabajador", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idTrab", idTrab);
                if (cn.State == ConnectionState.Closed)
                    cn.Open();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    eliminado = true;
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
            return eliminado;
        }

        public List<entTrabajador> BuscarTrabajadores(int? idRol, string nombTrab, DateTime? fechaRegistro, int? numDoc)
        {
            SqlCommand cmd = null;
            List<entTrabajador> lista = new List<entTrabajador>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cn.Open();
                cmd = new SqlCommand("[BuscarTrabajadores]", cn);
                cmd.CommandType = CommandType.StoredProcedure;

                // Añadir parámetros
                cmd.Parameters.AddWithValue("@idRol", idRol.HasValue? (object)idRol.Value : DBNull.Value);
                cmd.Parameters.AddWithValue("@numDoc", numDoc.HasValue ? (object)numDoc.Value : DBNull.Value);
                cmd.Parameters.AddWithValue("@nombTrab", !string.IsNullOrEmpty(nombTrab) ? (object)nombTrab : DBNull.Value);
                cmd.Parameters.AddWithValue("@fechaRegistro", fechaRegistro != null && fechaRegistro.HasValue ? (object)fechaRegistro.Value : DBNull.Value);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    entTrabajador p = new entTrabajador();
                    p.idTrab = Convert.ToInt32(dr["idTrab"]);
                    p.idRol = Convert.ToInt32(dr["idRol"]);
                    p.idUbigeo = Convert.ToInt32(dr["idUbigeo"]);
                    p.nombTrab = dr["nombTrab"].ToString();
                    p.estado = Convert.ToBoolean(dr["estado"]);
                    p.usuario = dr["usuario"].ToString();
                    p.contraseña = dr["contraseña"].ToString();
                    p.fechaRegistro = Convert.ToDateTime(dr["fechaRegistro"]);
                    p.numDoc = Convert.ToInt32(dr["numDoc"]);
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



    }
}

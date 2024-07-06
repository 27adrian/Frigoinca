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
    public class datUbigeo
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly datUbigeo _instancia = new datUbigeo();
        //privado para evitar la instanciación directa
        public static datUbigeo Instancia
        {
            get
            {
                return datUbigeo._instancia;
            }
        }
        #endregion singleton

        #region metodos
        ////////////////////listadoAnimal
        public List<entUbigeo> ListarUbigeo()
        {
            SqlCommand cmd = null;
            List<entUbigeo> lista = new List<entUbigeo>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cmd = new SqlCommand("ListarUbigeo", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    entUbigeo en = new entUbigeo();
                    en.idUbigeo = Convert.ToInt32(dr["idUbigeo"]);
                    en.departamento = dr["DEPARTAMENTO"].ToString();
                    en.provincia = dr["PROVINCIA"].ToString();
                    en.distrito = dr["DISTRITO"].ToString();
                    lista.Add(en);
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

        public List<entUbigeo> BuscarUbigeo(string departamento, string provincia, string distrito)
        {
            SqlCommand cmd = null;
            List<entUbigeo> lista = new List<entUbigeo>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cmd = new SqlCommand("[BuscarUbigeo]", cn);
                cn.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Departamento", string.IsNullOrEmpty(departamento) ? DBNull.Value : (object)departamento);
                cmd.Parameters.AddWithValue("@Provincia", string.IsNullOrEmpty(provincia) ? DBNull.Value : (object)provincia);
                cmd.Parameters.AddWithValue("@Distrito", string.IsNullOrEmpty(distrito) ? DBNull.Value : (object)distrito);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    entUbigeo ubi = new entUbigeo();
                    ubi.idUbigeo = Convert.ToInt32(dr["idUbigeo"]);
                    ubi.departamento = dr["departamento"].ToString();
                    ubi.provincia = dr["provincia"].ToString();
                    ubi.distrito = dr["distrito"].ToString();
                    lista.Add(ubi);
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
        //////////////
        ///FABRIZIO///
        //////////////
        public List<entUbigeo> BuscarIdUbigeo(entUbigeo ubi)
        {
            SqlCommand cmd = null;
            List<entUbigeo> lista = new List<entUbigeo>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cmd = new SqlCommand("BuscarIdUbigeo", cn);
                cn.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idUbigeo", ubi.idUbigeo);                
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    entUbigeo ubigeo = new entUbigeo(); // Crea un nuevo objeto en cada iteración

                    ubigeo.idUbigeo = Convert.ToInt32(dr["idUbigeo"]);
                    ubigeo.departamento = dr["DEPARTAMENTO"].ToString();
                    ubigeo.provincia = dr["PROVINCIA"].ToString();
                    ubigeo.distrito = dr["DISTRITO"].ToString();

                    lista.Add(ubigeo);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                if (cmd != null && cmd.Connection != null && cmd.Connection.State != ConnectionState.Closed)
                    cmd.Connection.Close();
            }
            return lista;
        }
        public List<string> LlenarDepartamentos()
        {
            SqlCommand cmd = null;
            List<string> lista = new List<string>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();                
                cmd = new SqlCommand("ListarDepartamentos", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    lista.Add(dr["departamento"].ToString());
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
        public List<string> LlenarProvincia(string departamento)
        {
            SqlCommand cmd = null;
            List<string> lista = new List<string>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();                
                cmd = new SqlCommand("ListarProvincias", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@DEPARTAMENTO", departamento);
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    lista.Add(dr["provincia"].ToString());
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
        public List<string> LlenarDistrito(string provincia)
        {
            SqlCommand cmd = null;
            List<string> lista = new List<string>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();                
                cmd = new SqlCommand("ListarDistritos", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@PROVINCIA", provincia);
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    lista.Add(dr["distrito"].ToString());
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
        public int ObtenerUbigeo(entUbigeo ubi)
        {
            SqlCommand cmd = null;
            int IdUbigeo = 0;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();                
                cmd = new SqlCommand("ObtenerUbigeo", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@DEPARTAMENTO", ubi.departamento);
                cmd.Parameters.AddWithValue("@PROVINCIA", ubi.provincia);
                cmd.Parameters.AddWithValue("@DISTRITO", ubi.distrito);
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    IdUbigeo = Convert.ToInt32(dr["idUbigeo"]);
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
            return IdUbigeo;
        }
        public entUbigeo BuscarUbigeoBoleta(int ubi)
        {
            SqlCommand cmd = null;
            entUbigeo ubiBoleta = new entUbigeo();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cmd = new SqlCommand("BuscarIdUbigeo", cn);
                cn.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idUbigeo", ubi);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    entUbigeo ubigeo = new entUbigeo(); // Crea un nuevo objeto en cada iteración

                    ubigeo.idUbigeo = Convert.ToInt32(dr["idUbigeo"]);
                    ubigeo.departamento = dr["DEPARTAMENTO"].ToString();
                    ubigeo.provincia = dr["PROVINCIA"].ToString();
                    ubigeo.distrito = dr["DISTRITO"].ToString();

                    ubiBoleta = ubigeo;
                }
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                if (cmd != null && cmd.Connection != null && cmd.Connection.State != ConnectionState.Closed)
                    cmd.Connection.Close();
            }
            return ubiBoleta;
        }
        #endregion
    }
}

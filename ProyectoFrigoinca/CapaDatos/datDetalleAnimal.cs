using CapaEntidad;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Routing;

namespace CapaDatos
{
    public class datDetalleAnimal
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly datDetalleAnimal _instancia = new datDetalleAnimal();
        //privado para evitar la instanciación directa
        public static datDetalleAnimal Instancia
        {
            get
            {
                return datDetalleAnimal._instancia;
            }
        }
        #endregion singleton

        #region metodos
        ////////////////////listadoAnimal
        public List<enDetalleAnimalInfo> ListarDatos(int id)
        {
            SqlCommand cmd = null;
            List<enDetalleAnimalInfo> lista = new List<enDetalleAnimalInfo>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("ListarDetAnimEspecifico", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idAnimal", id);
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    enDetalleAnimalInfo animal = new enDetalleAnimalInfo();
                    animal.idDetAmim = Convert.ToInt32(dr["idDetAnim"]);
                    animal.especie = Convert.ToString(dr["especie"]);
                    animal.descCorteAnim = Convert.ToString(dr["descCorteAnim"]);
                    lista.Add(animal);
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
        public Boolean InsertarDetAnim(entDetalleAnimal detanim)
        {
            SqlCommand cmd = null;
            Boolean insertado = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("InsertarDetAnim", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idAnimal", detanim.idAnimal);
                cmd.Parameters.AddWithValue("@idCorteAnim", detanim.idCorteAnim);
                cn.Open();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    insertado = true;
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
            return insertado;
        }
        public Boolean EliminarDetalleAnimal(long idCorteAnim)
        {
            SqlCommand cmd = null;
            Boolean eliminado = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("[EliminarDetalleAnimal]", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idDetAnim", idCorteAnim);
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

        public List<enDetalleAnimalInfo> ObtenerCortesPorEspecie(string especie)
        {
            SqlCommand cmd = null;
            List<enDetalleAnimalInfo> lista = new List<enDetalleAnimalInfo>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("CortesPorEspecie", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@especie", especie);
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    enDetalleAnimalInfo corte = new enDetalleAnimalInfo();
                    corte.idDetAmim = Convert.ToInt32(dr["idDetAnim"]);
                    corte.descCorteAnim = dr["desCorte"].ToString();
                    lista.Add(corte);
                }
                dr.Close();
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

        public int? ObtenerIdDetalleAnimal(string tipoAnimal, string tipoCorte)
        {
            try
            {
                using (SqlConnection connection = Conexion.Instancia.Conectar())
                {
                    connection.Open();

                    using (SqlCommand command = new SqlCommand("BuscarDetalleAnimal", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@tipoAnimal", tipoAnimal);
                        command.Parameters.AddWithValue("@tipoCorte", tipoCorte);

                        object result = command.ExecuteScalar();
                        if (result != null)
                        {
                            return Convert.ToInt32(result);
                        }
                        else
                        {
                            return null;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Manejo de excepciones
                throw new Exception("Error al buscar en la base de datos", ex);
            }
        }
        #endregion metodos
    }
}

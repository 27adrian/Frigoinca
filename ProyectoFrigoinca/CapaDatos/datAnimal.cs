using CapaEntidad;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;

namespace CapaDatos
{
    public class datAnimal
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly datAnimal _instancia = new datAnimal();
        //privado para evitar la instanciación directa
        public static datAnimal Instancia
        {
            get
            {
                return datAnimal._instancia;
            }
        }
        #endregion singleton

        #region metodos
        ////////////////////listadoAnimal
        public List<entAnimal> ListarAnima()
        {
            SqlCommand cmd = null;
            List<entAnimal> lista = new List<entAnimal>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("ListarAnimal", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    entAnimal animal = new entAnimal();
                    animal.idAnimal = Convert.ToInt32(dr["idAnimal"]);
                    animal.especie = dr["especie"].ToString();

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
        public Boolean InsertarCorte(entAnimal corte)
        {
            SqlCommand cmd = null;
            Boolean insertado = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("InsertarAnimal", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@especie", corte.especie);
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
        public Boolean EditarCorte(entAnimal co)
        {
            SqlCommand cmd = null;
            Boolean edita = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("EditarAnimal", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idAnimal", co.idAnimal); // Asegúrate de tener esta propiedad en tu entidad
                cmd.Parameters.AddWithValue("@especie", co.especie);

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
            finally
            {
                cmd.Connection.Close();
            }
            return edita;
        }
        public Boolean EliminarCorte(long idCorteAnim)
        {
            SqlCommand cmd = null;
            Boolean eliminado = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("EliminarAnimal", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idAnimal", idCorteAnim);
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
        #endregion
    }
}

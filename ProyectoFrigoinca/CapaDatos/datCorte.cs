using CapaEntidad;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;

namespace CapaDatos
{
    public class datCorte
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly datCorte _instancia = new datCorte();
        //privado para evitar la instanciación directa
        public static datCorte Instancia
        {
            get
            {
                return datCorte._instancia;
            }
        }
        #endregion singleton

        #region metodos
        ////////////////////listadoAnimal
        public List<entCorte> ListarCorte()
        {
            SqlCommand cmd = null;
            List<entCorte> lista = new List<entCorte>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("ListarCorte", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    entCorte animal = new entCorte();
                    animal.idCorteAnim = Convert.ToInt32(dr["idCorteAnim"]);
                    animal.descCorteAnim = dr["descCorteAnim"].ToString();

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
        public Boolean InsertarCorte(entCorte corte)
        {
            SqlCommand cmd = null;
            Boolean insertado = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("InsertarCorte", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@descCorteAnim", corte.descCorteAnim);
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
        public Boolean EditarCorte(entCorte co)
        {
            SqlCommand cmd = null;
            Boolean edita = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("EditarCorte", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idCorteAnim", co.idCorteAnim); // Asegúrate de tener esta propiedad en tu entidad
                cmd.Parameters.AddWithValue("@descCorteAnim", co.descCorteAnim);

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
                cmd = new SqlCommand("EliminarCorte", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idCorteAnim", idCorteAnim);
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

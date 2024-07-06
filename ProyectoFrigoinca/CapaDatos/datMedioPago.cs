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
    public class datMedioPago
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly datMedioPago _instancia = new datMedioPago();
        //privado para evitar la instanciación directa
        public static datMedioPago Instancia
        {
            get
            {
                return datMedioPago._instancia;
            }
        }
        #endregion singleton

        #region metodos
        ////////////////////listadoAnimal
        public List<entMedioPago> ListarMedioPago()
        {
            SqlCommand cmd = null;
            List<entMedioPago> lista = new List<entMedioPago>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cmd = new SqlCommand("[ListarMedioPago]", cn);
                cmd.CommandType = CommandType.StoredProcedure; 
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    entMedioPago me = new entMedioPago();
                    me.idMedPago = Convert.ToInt32(dr["idMedPago"]);
                    me.descMedPag = dr["descMedPag"].ToString();
                    lista.Add(me);

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

        public Boolean EditarmedioPag(entMedioPago pro)
        {
            SqlCommand cmd = null;
            Boolean edita = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("EditarMedPago", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idMedPago", pro.idMedPago);
                cmd.Parameters.AddWithValue("@descMedPag", pro.descMedPag);
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
        #endregion
    }
}

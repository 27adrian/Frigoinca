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
    public class datRol
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly datRol _instancia = new datRol();
        //privado para evitar la instanciación directa
        public static datRol Instancia
        {
            get
            {
                return datRol._instancia;
            }
        }
        #endregion singleton

        #region metodos
        ////////////////////listadoRol
        public List<entRol> ListarRol()
        {
            SqlCommand cmd = null;
            List<entRol> lista = new List<entRol>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cmd = new SqlCommand("ListarRol", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    entRol en = new entRol();
                    en.idRol = Convert.ToInt32(dr["idRol"]);                    
                    en.descripcion = dr["descripcion"].ToString();
                    en.estado = Convert.ToBoolean(dr["estado"]);
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
        #endregion


    }
}

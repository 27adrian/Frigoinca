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
    public class datRqCompra
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly datRqCompra _instancia = new datRqCompra();
        //privado para evitar la instanciación directa
        public static datRqCompra Instancia
        {
            get
            {
                return datRqCompra._instancia;
            }
        }
        #endregion singleton

        #region metodos
        ////////////////////listadoAnimal
        public List<entRqCompra> ListarRqCompra()
        {
            SqlCommand cmd = null;
            List<entRqCompra> lista = new List<entRqCompra>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cmd = new SqlCommand("[ListarRqCompra]", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    entRqCompra p = new entRqCompra();
                    p.idReqComp = Convert.ToInt64(dr["idReqComp"]);
                    p.DesReqComp = dr["desReqComp"].ToString();
                    p.cantidad = Convert.ToInt32(dr["cantidad"]);
                    p.estado = Convert.ToBoolean(dr["estado"]);
                    p.idInv = Convert.ToInt32(dr["idInv"]);
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

        public bool InsertarRqCompra(entRqCompra rqCompra)
        {
            SqlCommand cmd = null;
            bool insertado = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("[InsertarRqCompra]", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@desReqComp", rqCompra.DesReqComp);
                cmd.Parameters.AddWithValue("@cantidad", rqCompra.cantidad);
                cmd.Parameters.AddWithValue("@estado", rqCompra.estado);
                cmd.Parameters.AddWithValue("@idInv", rqCompra.idInv);
                cn.Open();
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

        public List<entRqCompra> ListarRqCompraEstadoTrue()
        {
            SqlCommand cmd = null;
            List<entRqCompra> lista = new List<entRqCompra>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cmd = new SqlCommand("ListarRqCompraEstadoActivo", cn);
                cn.Open();
                cmd.CommandType = CommandType.StoredProcedure;                
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    entRqCompra p = new entRqCompra();
                    p.idReqComp = Convert.ToInt64(dr["idReqComp"]);
                    p.DesReqComp = dr["desReqComp"].ToString();
                    p.cantidad = Convert.ToInt32(dr["cantidad"]);
                    p.estado = Convert.ToBoolean(dr["estado"]);
                    p.idInv = Convert.ToInt32(dr["idInv"]);
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

       
        #endregion




    }
}

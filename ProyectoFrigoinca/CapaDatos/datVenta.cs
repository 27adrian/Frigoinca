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
    public class datVenta
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly datVenta _instancia = new datVenta();
        //privado para evitar la instanciación directa
        public static datVenta Instancia
        {
            get
            {
                return datVenta._instancia;
            }
        }
        #endregion singleton

        #region metodos

        ////////////////////listadoCompra
        public List<entVenta> ListarVenta()
        {
            SqlCommand cmd = null;
            List<entVenta> lista = new List<entVenta>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cmd = new SqlCommand("[ListarVenta]", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                //cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    entVenta co = new entVenta();
                    co.idOrdVen = Convert.ToInt32(dr["idOrdVen"]);
                    co.idMedPago = Convert.ToInt32(dr["idMedPago"]);
                    co.idCli = Convert.ToInt32(dr["idCli"]);
                    //co.idInv= Convert.ToInt32(dr["idInv"]);
                    co.cantidad = Convert.ToInt32(dr["cantidad"]);
                    co.montoTotal = Convert.ToDecimal(dr["montoTotal"]);
                    co.fechaRegistro = Convert.ToDateTime(dr["fechaRegistro"]);
                    lista.Add(co);
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
        public Boolean InsertarVenta(ref entVenta venta)
        {
            SqlCommand cmd = null;
            Boolean insertado = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("InsertarVenta", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idMedPago", venta.idMedPago);
                cmd.Parameters.AddWithValue("@idCli", venta.idCli);
                cmd.Parameters.AddWithValue("@cantidad", venta.cantidad);
                cmd.Parameters.AddWithValue("@montoTotal", venta.montoTotal);
                cmd.Parameters.AddWithValue("@fechaRegistro", venta.fechaRegistro);
                SqlParameter idOrdVen = new SqlParameter("@idOrdVen", SqlDbType.Int);
                idOrdVen.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(idOrdVen);
                cn.Open();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    insertado = true;
                    i = 0;
                    int.TryParse(cmd.Parameters["@idOrdVen"].Value.ToString(), out i);
                    venta.idOrdVen = i;
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

        public Boolean InsertarOrdenVentaVisa(ref entOrdenVentaVisa venta)
        {
            SqlCommand cmd = null;
            Boolean insertado = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("InsertarOrdenVentaVisa", cn);

                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idOrdVen", venta.idOrdVen);
                cmd.Parameters.AddWithValue("@purchaseNumber", venta.purchaseNumber);
                cmd.Parameters.AddWithValue("@cadenaJson", venta.cadenaJson);
                SqlParameter idOrdVen = new SqlParameter("@id", SqlDbType.Int);
                idOrdVen.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(idOrdVen);
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
        #endregion
    }
}

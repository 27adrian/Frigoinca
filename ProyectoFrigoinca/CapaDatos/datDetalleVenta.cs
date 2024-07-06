using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaEntidad;

namespace CapaDatos
{
    public class datDetVenta
    {
        private static readonly datDetVenta _instancia = new datDetVenta();
        //privado para evitar la instanciación directa
        public static datDetVenta Instancia
        {
            get
            {
                return datDetVenta._instancia;
            }
        }

        public Boolean InsertarDetVenta(entDetVenta detVenta)
        {
            SqlCommand cmd = null;
            Boolean insertado = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("InsertarDetalleVentas", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idOrdVen", detVenta.idOrdVen);
                cmd.Parameters.AddWithValue("@idInv", detVenta.idInv);
                cmd.Parameters.AddWithValue("@cantidad", detVenta.cantidad);
                cmd.Parameters.AddWithValue("@precioUnitario", detVenta.precioUnitario);
                cmd.Parameters.AddWithValue("@subTotal", detVenta.subTotal);
                cn.Open();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    insertado = true;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                cmd.Connection.Close();
                RestarStock(detVenta.idInv, detVenta.cantidad);
            }
            return insertado;
        }
        public Boolean RestarStock(int id, int cant)
        {
            SqlCommand cmd = null;
            Boolean insertado = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("RestarStock", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idInv", id);
                cmd.Parameters.AddWithValue("@cant", cant);
                cn.Open();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    insertado = true;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                cmd.Connection.Close();
            }
            return insertado;
        }
    }
}

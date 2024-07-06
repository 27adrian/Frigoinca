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
    public class datLoteProducto
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly datLoteProducto _instancia = new datLoteProducto();
        //privado para evitar la instanciación directa
        public static datLoteProducto Instancia
        {
            get
            {
                return datLoteProducto._instancia;
            }
        }
        #endregion singleton

        #region metodos

        public bool InsertarLoteProducto(int idDetAnim, Int64 idIngresoMP, string descripcion)
        {
            SqlCommand cmd = null;
            bool inserted = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("InsertarLoteProducto", cn);
                cn.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idDetAnim", idDetAnim);
                cmd.Parameters.AddWithValue("@idIngresoMP", idIngresoMP);
                cmd.Parameters.AddWithValue("@descripcion", descripcion);

                SqlParameter returnValue = new SqlParameter();
                returnValue.Direction = ParameterDirection.ReturnValue;
                cmd.Parameters.Add(returnValue);

                cmd.ExecuteNonQuery();
                int result = (int)returnValue.Value;

                if (result == 0)
                {
                    inserted = true;
                }
                else if (result == -1)
                {
                    // Manejar el caso donde el idDetAnim ya existe
                    throw new Exception("El lote con el idDetAnim especificado ya existe.");
                }
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                if (cmd != null)
                {
                    cmd.Connection.Close();
                }
            }
            return inserted;
        }
        ////////////////////listadoProducto
        public List<entLoteConDesProducto> ListarLoteProductoConDescripciones()
        {
            SqlCommand cmd = null;
            List<entLoteConDesProducto> lista = new List<entLoteConDesProducto>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); // Suponiendo que tienes una clase de conexión llamada Conexion y un método estático Instancia que devuelve una instancia de la conexión
                cmd = new SqlCommand("ListarLoteProductoConDescripciones", cn);
                cn.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    entLoteConDesProducto lp = new entLoteConDesProducto();
                    lp.idLoteProd = Convert.ToInt64(dr["idLoteProd"]);
                    lp.idIngresoMP = Convert.ToInt64(dr["idIngresoMP"]); // Suponiendo que necesitas este campo también
                    lp.descripcion = dr["LoteDescripcion"].ToString();
                    lp.descCorteAnim = dr["TipoCorte"].ToString();
                    lp.descAnimal = dr["TipoAnimal"].ToString();
                    lp.stock = Convert.ToInt32(dr["stock"]);
                    lp.fecchaRegistro = Convert.ToDateTime(dr["fechaRegistro"]);

                    lista.Add(lp);
                }
            }
            catch (Exception e)
            {
                throw e;
                // Manejo de la excepción según tus necesidades
            }
            finally
            {
                if (cmd != null)
                {
                    cmd.Connection.Close(); // Asegúrate de cerrar la conexión
                }
            }
            return lista;
        }


        public Boolean EditarLoteProducto(entLoteProducto p)
        {
            SqlCommand cmd = null;
            Boolean edita = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("EditarLoteProducto", cn);
                cn.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idLoteProd", p.idLoteProd);
                cmd.Parameters.AddWithValue("@idCorteAnim", p.idCorteAnim);
                cmd.Parameters.AddWithValue("@descripcion", p.descripcion);
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

        public List<entLoteConDesProducto> ObtenerDescripcionAnimal(string especie)
        {
            SqlCommand cmd = null;
            List<entLoteConDesProducto> lista = new List<entLoteConDesProducto>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("ObtenerDescripcionAnimal", cn);
                cn.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@especie", especie);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    entLoteConDesProducto ad = new entLoteConDesProducto();
                    ad.idLoteProd = Convert.ToInt64(dr["idLoteProd"]);
                    ad.descAnimal = dr["especie"].ToString();
                    ad.descCorteAnim = dr["descCorteAnim"].ToString();
                    ad.descripcion = dr["descripcion"].ToString();
                    lista.Add(ad);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                if (cmd != null)
                {
                    cmd.Connection.Close();
                }
            }
            return lista;
        }
        #endregion metodos
    }

}


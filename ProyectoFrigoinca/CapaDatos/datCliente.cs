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
    public class datCliente
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly datCliente _instancia = new datCliente();
        //privado para evitar la instanciación directa
        public static datCliente Instancia
        {
            get
            {
                return datCliente._instancia;
            }
        }

        #endregion singleton
        //Registrar
        public bool InsertarCliente(entCliente cliente)
        {
            SqlCommand cmd = null;
            bool insertado = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cn.Open();
                cmd = new SqlCommand("[InsertarCliente]", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@nombCli", cliente.nombCli);
                cmd.Parameters.AddWithValue("@apellCli", cliente.apellido);
                cmd.Parameters.AddWithValue("@tipoCliente", cliente.tipoCliente);
                cmd.Parameters.AddWithValue("@tipoDoc", cliente.tipoDoc);
                cmd.Parameters.AddWithValue("@numeroDoc", cliente.numeroDoc);
                cmd.Parameters.AddWithValue("@idUbigeo", cliente.idUbigeo);
                cmd.Parameters.AddWithValue("@telefono", cliente.telefono);
                cmd.Parameters.AddWithValue("@estado", cliente.estado);
                cmd.Parameters.AddWithValue("@direccion", cliente.direccion);
                cmd.Parameters.AddWithValue("@fecha", cliente.fecha);

                int result = cmd.ExecuteNonQuery();
                insertado = result > 0;
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
            return insertado;
        }
        ////////////////////ListadoCliente
        public List<entCliente> ListarCliente()
        {
            SqlCommand cmd = null;
            List<entCliente> lista = new List<entCliente>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cn.Open();
                cmd = new SqlCommand("[ListarCliente]", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    entCliente Cliente = new entCliente(); // Crea un nuevo objeto en cada iteración 
                    Cliente.idCli = Convert.ToInt32(dr["idCli"]);
                    Cliente.nombCli = dr["nombCli"].ToString();
                    Cliente.apellido = dr["apellCli"].ToString();
                    Cliente.tipoCliente = dr["tipoCliente"].ToString();
                    Cliente.tipoDoc = dr["tipoDoc"].ToString();
                    Cliente.numeroDoc = Convert.ToInt64(dr["numeroDoc"]);
                    Cliente.idUbigeo = Convert.ToInt32(dr["idUbigeo"]);
                    Cliente.telefono = Convert.ToInt32(dr["telefono"]);
                    Cliente.estado = Convert.ToBoolean(dr["estado"]);
                    Cliente.direccion = dr["direccion"].ToString();
                    Cliente.fecha = Convert.ToDateTime(dr["fecha"]);
                    lista.Add(Cliente);
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
        // Método para buscar clientes por tipo y número de documento
        public List<entClienteResumen> BuscarClientePorDocumento(string tipoDoc, long? numeroDoc)
        {
            SqlCommand cmd = null;
            List<entClienteResumen> lista = new List<entClienteResumen>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cn.Open();
                cmd = new SqlCommand("[BuscarClientePorDocumento]", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@tipoDoc", tipoDoc);
                cmd.Parameters.AddWithValue("@numeroDoc", numeroDoc.HasValue ? (object)numeroDoc.Value : DBNull.Value);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    entClienteResumen cliente = new entClienteResumen();
                    cliente.idCli = Convert.ToInt32(dr["idCli"]);
                    cliente.nombComp = dr["nombComp"].ToString();
                    cliente.tipoDoc = dr["tipoDoc"].ToString();
                    cliente.numeroDoc = Convert.ToInt64(dr["numeroDoc"]);
                    lista.Add(cliente);
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


        public List<entClienteResumen> ListarCLientesResumen()
        {
            SqlCommand cmd = null;
            List<entClienteResumen> lista = new List<entClienteResumen>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cn.Open();
                cmd = new SqlCommand("ListarClienteResumido", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                //cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    entClienteResumen Cli = new entClienteResumen(); // Crea un nuevo objeto en cada iteración 
                    Cli.idCli = Convert.ToInt32(dr["idCli"]);
                    Cli.nombComp = dr["nombComp"].ToString();
                    Cli.tipoDoc = dr["tipoDoc"].ToString();
                    Cli.numeroDoc = Convert.ToInt64(dr["numeroDoc"]);
                    lista.Add(Cli);
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
        public Boolean Editarcliente(entCliente Cli)
        {
            SqlCommand cmd = null;
            Boolean edita = false;
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar();
                cn.Open();
                cmd = new SqlCommand("Editarcliente", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idCli", Cli.idCli);
                cmd.Parameters.AddWithValue("@nombCli", Cli.nombCli);
                cmd.Parameters.AddWithValue("@apellCli", Cli.apellido);
                cmd.Parameters.AddWithValue("@tipoCliente", Cli.tipoCliente);
                cmd.Parameters.AddWithValue("@tipoDoc", Cli.tipoDoc);
                cmd.Parameters.AddWithValue("@numeroDoc", Cli.numeroDoc);
                cmd.Parameters.AddWithValue("@idUbigeo", Cli.idUbigeo);
                cmd.Parameters.AddWithValue("@telefono", Cli.telefono);
                cmd.Parameters.AddWithValue("@estado", Cli.estado);
                cmd.Parameters.AddWithValue("@direccion", Cli.direccion);
                cmd.Parameters.AddWithValue("@fecha", Cli.fecha);
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

        public bool DeshabilitarCliente(int clienteId)
        {
            using (SqlConnection connection = Conexion.Instancia.Conectar())
            {
                try
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand("DeshabilitarCliente", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@ClienteID", clienteId);

                        SqlParameter returnParameter = command.Parameters.Add("RetVal", SqlDbType.Int);
                        returnParameter.Direction = ParameterDirection.ReturnValue;

                        command.ExecuteNonQuery();

                        int returnValue = (int)returnParameter.Value;

                        if (returnValue == 0)
                        {
                            return true;
                        }
                        else if (returnValue == -1)
                        {
                            throw new InvalidOperationException("El cliente ya está deshabilitado.");
                        }
                        else
                        {
                            throw new InvalidOperationException("Error al deshabilitar el cliente.");
                        }
                    }
                }
                catch (SqlException ex)
                {
                    Console.WriteLine("Error de SQL: " + ex.Message);
                    return false;
                }
                catch (InvalidOperationException ex)
                {
                    Console.WriteLine("Error: " + ex.Message);
                    return false;
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Error: " + ex.Message);
                    return false;
                }
            }
        }

        public List<entCliente> BuscarCliente(entCliente Cli)
        {
            SqlCommand cmd = null;
            List<entCliente> lista = new List<entCliente>();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cn.Open();
                cmd = new SqlCommand("BuscarCliente", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("numeroDoc", Cli.numeroDoc);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    entCliente Cliente = new entCliente(); // Crea un nuevo objeto en cada iteración 
                    Cliente.idCli = Convert.ToInt32(dr["idCli"]);
                    Cliente.nombCli = dr["nombCli"].ToString();
                    Cliente.apellido = dr["apellCli"].ToString();
                    Cliente.tipoCliente = dr["tipoCliente"].ToString();
                    Cliente.tipoDoc = dr["tipoDoc"].ToString();
                    Cliente.numeroDoc = Convert.ToInt64(dr["numeroDoc"]);
                    Cliente.idUbigeo = Convert.ToInt32(dr["idUbigeo"]);
                    Cliente.telefono = Convert.ToInt32(dr["telefono"]);
                    Cliente.estado = Convert.ToBoolean(dr["estado"]);
                    Cliente.direccion = dr["direccion"].ToString();
                    Cliente.fecha = Convert.ToDateTime(dr["fecha"]);
                    lista.Add(Cliente);
                    //if (cn.State == ConnectionState.Closed)
                    //    cn.Open();
                    //int i = cmd.ExecuteNonQuery();
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
        public entClienteBoleta BuscarClienteBoleta(int Cli)
        {
            SqlCommand cmd = null;
            entClienteBoleta cli = new entClienteBoleta();
            try
            {
                SqlConnection cn = Conexion.Instancia.Conectar(); //singleton
                cn.Open();
                cmd = new SqlCommand("BuscarClienteBoleta", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("idCli", Cli);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    entClienteBoleta Cliente = new entClienteBoleta(); // Crea un nuevo objeto en cada iteración 
                    Cliente.idCli = Convert.ToInt32(dr["idCli"]);
                    Cliente.numeroDoc = Convert.ToInt64(dr["numeroDoc"]);
                    Cliente.nombComp = dr["nombComp"].ToString();
                    Cliente.direccion = dr["direccion"].ToString();
                    Cliente.idUbigeo = Convert.ToInt32(dr["idUbigeo"]);
                    Cliente.tipoDoc = dr["tipoDoc"].ToString();
                    cli = Cliente;
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
            return cli;
        }
    }
}

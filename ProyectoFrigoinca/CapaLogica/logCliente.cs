using CapaDatos;
using CapaEntidad;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaLogica
{
    public class logCliente
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly logCliente _instancia = new logCliente();
        //privado para evitar la instanciación directa
        public static logCliente Instancia
        {
            get
            {
                return logCliente._instancia;
            }
        }
        #endregion singleton

        public bool InsertarCliente(entCliente cliente)
        {
            return datCliente.Instancia.InsertarCliente(cliente);
        }

        public List<entCliente> ListarCliente()
        {
            return datCliente.Instancia.ListarCliente();
        }

        public List<entClienteResumen> ListarCLientesResumen()
        {
            return datCliente.Instancia.ListarCLientesResumen();
        }
        public void Editarcliente(entCliente Cli)
        {
            datCliente.Instancia.Editarcliente(Cli);
        }

        // Método para buscar clientes por tipo y número de documento
        public List<entClienteResumen> BuscarClientePorDocumento(string tipoDoc, long? numeroDoc)
        {
            return datCliente.Instancia.BuscarClientePorDocumento(tipoDoc, numeroDoc);
        }

        public entClienteBoleta BuscarClienteBoleta(int Cli)
        {
            return datCliente.Instancia.BuscarClienteBoleta(Cli);

        }
        public List<entCliente> BuscarCliente(entCliente Cli)
        {
            return datCliente.Instancia.BuscarCliente(Cli);

        }
        public bool DeshabilitarCliente(int clienteId)
        {
            return datCliente.Instancia.DeshabilitarCliente(clienteId);
        }
    }
}

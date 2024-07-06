using CapaDatos;
using CapaEntidad;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaLogica
{
    public class logCompra
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly logCompra _instancia = new logCompra();
        //privado para evitar la instanciación directa
        public static logCompra Instancia
        {
            get
            {
                return logCompra._instancia;
            }
        }
        #endregion singleton
        ///listado

        public List<entCompra> ListarCompra()
        {
            return datCompra.Instancia.ListarCompra();
        }

        public List<entCompraActiva> ListarOrdenesCompraActivas()
        {
            return datCompra.Instancia.ObtenerOrdenesCompraActivas();
        }

        public bool VerificarYActualizarRequerimiento(int idReqComp)
        {
            return datCompra.Instancia.VerificarYActualizarRequerimiento(idReqComp);
        }

        public bool InsertarOrdenCompra(entOrdenCompra ordenCompra)
        {
            return datCompra.Instancia.InsertarOrdenCompra(ordenCompra);
        }
    }
}

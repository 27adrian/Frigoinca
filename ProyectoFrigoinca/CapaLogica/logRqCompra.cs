using CapaDatos;
using CapaEntidad;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaLogica
{
    public class logRqCompra
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly logRqCompra _instancia = new logRqCompra();
        //privado para evitar la instanciación directa
        public static logRqCompra Instancia
        {
            get
            {
                return logRqCompra._instancia;
            }
        }
        #endregion singleton
        ///listado

        public List<entRqCompra> ListarRqCompra()
        {
            return datRqCompra.Instancia.ListarRqCompra();
        }

        public bool InsertarRqCompra(entRqCompra rqCompra)
        {
            return datRqCompra.Instancia.InsertarRqCompra(rqCompra);
        }


        public List<entRqCompra> ListarRqCompraEstadoTrue()
        {
            return datRqCompra.Instancia.ListarRqCompraEstadoTrue();
        }

    }
}

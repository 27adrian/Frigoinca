using CapaDatos;
using CapaEntidad;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaLogica
{
    public class logVenta
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly logVenta _instancia = new logVenta();
        //privado para evitar la instanciación directa
        public static logVenta Instancia
        {
            get
            {
                return logVenta._instancia;
            }
        }
        #endregion singleton
        ///listado

        public List<entVenta> ListarVenta()
        {
            return datVenta.Instancia.ListarVenta();
        }

        public bool InsertarVenta(ref entVenta venta)
        {
            return datVenta.Instancia.InsertarVenta(ref venta);
        }

        public bool InsertarOrdenVentaVisa(ref entOrdenVentaVisa ordVenVisa)
        {
            return datVenta.Instancia.InsertarOrdenVentaVisa(ref ordVenVisa);
        }
    }
}

using CapaDatos;
using CapaEntidad;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaLogica
{
    public class logDetVenta
    {
        private static readonly logDetVenta _instancia = new logDetVenta();
        //privado para evitar la instanciación directa
        public static logDetVenta Instancia
        {
            get
            {
                return logDetVenta._instancia;
            }
        }

        public bool InsertarDetVenta(entDetVenta detVenta)
        {
            return datDetVenta.Instancia.InsertarDetVenta(detVenta);
        }
    }
}

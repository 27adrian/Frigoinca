using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidad
{
    public class entDetVenta
    {
        public long idOrdVen { get; set; }
        public int idInv { get; set; }
        public int cantidad { get; set; }
        public decimal precioUnitario { get; set; }
        public decimal subTotal { get; set; }
    }
}

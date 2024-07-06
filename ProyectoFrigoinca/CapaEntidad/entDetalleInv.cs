using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidad
{
    public class entDetalleInv
    {
        public int IdInv { get; set; }
        public int Stock { get; set; }
        public DateTime FechaRegistro { get; set; }
        public decimal PrecioXunidad { get; set; }
        public string Descripcion { get; set; }

    }
    
    public class entDetalleLote
    {
        public int IdLoteProd { get; set; }
        public int IdDetAnim { get; set; }
        public Int64 IdIngresoMP { get; set; }
        public string Descripcion { get; set; }
        public int stock {  get; set; }
        public DateTime fechaRegistro { get; set; }
    }
}

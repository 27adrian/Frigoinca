using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidad
{
    public class entInventario
    {
        public int IdInv { get; set; }
        public int Stock { get; set; }
        public DateTime FechaRegistro { get; set; }
        public decimal PrecioXunidad { get; set; }
        public string Descripcion { get; set; }
    }
    public class entInventario2
    {
        public int IdInv { get; set; }
        public string Descripcion { get; set; }
        public decimal PrecioXunidad { get; set; }
        public int Stock { get; set; }
    }
    public class entInventario3
    {
        public int IdInv { get; set; }
        public string Descripcion { get; set; }        
        public int Stock { get; set; }
    }
}

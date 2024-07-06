using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidad
{
    public class entLoteProducto
    {
        public Int64 idLoteProd { get; set; }
        public int idCorteAnim { get; set; }
        public string descripcion { get; set; }
    }

    public class entLoteConDesProducto
    {
        public Int64 idLoteProd { get; set; }
        public Int64 idIngresoMP {  get; set; }
        public string descCorteAnim { get; set; }
        public string descAnimal { get; set; }
        public string descripcion { get; set; }
        public int stock { get; set; }
        public DateTime fecchaRegistro {  get; set; }
    }
}

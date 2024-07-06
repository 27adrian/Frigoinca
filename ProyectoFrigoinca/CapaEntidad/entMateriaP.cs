using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidad
{
    public class entMateriaP
    {
        public Int64 idMP {  get; set; }
        public Int64 idOrdCom { get; set; }
        public int cantidad { get; set; }
        public bool estado {  get; set; }
        public string descripcion {  get; set; }

    }
}

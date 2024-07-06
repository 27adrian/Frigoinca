using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidad
{
    public class entProveedor
    {
        public int idProv { get; set; }
        public string especie { get; set; }
        public int idUbigeo { get; set; }
        public string nombProv { get; set; }
        public Boolean estado { get; set; }
        public DateTime fecha { get; set; }
        public string direccion {  get; set; }
        public Int64 telefono {  get; set; }
        public Int64 ruc {  get; set; }
    }
}

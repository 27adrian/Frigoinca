using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidad
{
    public class entTrabajador
    {
        public Int64 idTrab { get; set; }
        public int? idRol { get; set; }
        public int idUbigeo { get; set; }
        public string nombTrab { get; set; }
        public Boolean estado { get; set; }        
        public string usuario { get; set; }       
        public string contraseña { get; set; }
        public DateTime fechaRegistro { get; set; }

        public int? numDoc { get; set; }

    }
}

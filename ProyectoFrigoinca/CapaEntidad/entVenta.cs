using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidad
{
    public class entVenta
    {

        public long idOrdVen { get; set; }
        public int idMedPago { get; set; }
        public int idCli { get; set; }
        public int cantidad { get; set; }
        public decimal montoTotal { get; set; }
        public DateTime fechaRegistro { get; set; }
    }
}

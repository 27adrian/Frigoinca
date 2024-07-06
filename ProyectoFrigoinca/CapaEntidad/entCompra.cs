using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidad
{
    public class entCompra
    {
        public long idOrdCom { get; set; }
        public string descMedPag { get; set; }
        public string nombProv { get; set; }
        public int? idReqComp { get; set; }
        public int cantidad { get; set; }
        public decimal monto { get; set; }
        public decimal montoTotal { get; set; }
        public DateTime fechaRegistro { get; set; }
        public string descripcion { get; set; }

    }
    public class entOrdenCompra
    {
        public long idOrdCom { get; set; }
        public int idMedPago { get; set; }
        public int idProv { get; set; }
        public int? idReqComp { get; set; }
        public int cantidad { get; set; }
        public decimal monto { get; set; }
        public decimal montoTotal { get; set; }
        public DateTime fechaRegistro { get; set; }
        public string descripcion { get; set; }
        public bool estado { get; set; }

    }
    public class entCompraActiva
    {
        public long idOrdCom { get; set; }        
        public int cantidad { get; set; }        
        public DateTime fechaRegistro { get; set; }
        public string descripcion { get; set; }
        public bool estado { get; set; }                
        
    }
}

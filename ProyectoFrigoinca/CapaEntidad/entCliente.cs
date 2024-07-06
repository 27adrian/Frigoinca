using System;
using System.Collections.Generic;
using System.Linq;
using System.Numerics;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidad
{
    public class entCliente
    {
        //Cliente
        public int idCli { get; set; }
        public int idUbigeo { get; set; }
        public string nombCli { get; set; }
        public string apellido { get; set; }
        public Boolean estado { get; set; }
        public Int64 numeroDoc { get; set; }
        public Int64 telefono { get; set; }
        public string tipoCliente { get; set; }
        public string tipoDoc { get; set; }
        public string direccion { get; set; }
        public DateTime fecha { get; set; }
    }

    public class entClienteResumen
    {
        public int idCli { get; set; }
        public string nombComp { get; set; }
        public string tipoDoc { get; set; }
        public Int64 numeroDoc { get; set; }
    }
    public class entClienteBoleta
    {
        public int idCli { get; set; }
        public Int64 numeroDoc { get; set; }
        public string nombComp { get; set; }
        public string direccion { get; set; }
        public int idUbigeo { get; set; }
        public string tipoDoc { get; set; }
    }
}

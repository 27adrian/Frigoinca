using CapaDatos;
using CapaEntidad;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaLogica
{
    public class logUbigeo
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly logUbigeo _instancia = new logUbigeo();
        //privado para evitar la instanciación directa
        public static logUbigeo Instancia
        {
            get
            {
                return logUbigeo._instancia;
            }
        }
        #endregion singleton
        ///listado

        public List<entUbigeo> ListarUbigeo()
        {
            return datUbigeo.Instancia.ListarUbigeo();
        }

        public List<entUbigeo> BuscarUbigeo(entUbigeo ubigeo)
        {
            return datUbigeo.Instancia.BuscarUbigeo(ubigeo.departamento, ubigeo.provincia, ubigeo.distrito);
        }
        //////////////
        ///FABRIZIO///
        //////////////
        public List<entUbigeo> BuscarIdUbigeo(entUbigeo ubi)
        {
            return datUbigeo.Instancia.BuscarIdUbigeo(ubi);

        }
        public List<string> LlenarDepartamentos()
        {
            return datUbigeo.Instancia.LlenarDepartamentos();
        }
        public List<string> LlenarProvincia(string departamento)
        {
            return datUbigeo.Instancia.LlenarProvincia(departamento);
        }
        public List<string> LlenarDistrito(string provincia)
        {
            return datUbigeo.Instancia.LlenarDistrito(provincia);
        }
        public int ObtenerUbigeo(entUbigeo ubigeo)
        {
            return datUbigeo.Instancia.ObtenerUbigeo(ubigeo);
        }
        public entUbigeo BuscarUbigeoBoleta(int ubi)
        {
            return datUbigeo.Instancia.BuscarUbigeoBoleta(ubi);

        }
    }
}

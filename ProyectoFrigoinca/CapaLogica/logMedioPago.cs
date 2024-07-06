using CapaDatos;
using CapaEntidad;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaLogica
{
    public class logMedioPago
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly logMedioPago _instancia = new logMedioPago();
        //privado para evitar la instanciación directa
        public static logMedioPago Instancia
        {
            get
            {
                return logMedioPago._instancia;
            }
        }
        #endregion singleton



        ///listado

        public List<entMedioPago> ListarMedioPago()
        {
            return datMedioPago.Instancia.ListarMedioPago();
        }

        
        //edita
        public void EditarMedioPag(entMedioPago med)
        {
            datMedioPago.Instancia.EditarmedioPag(med);
        }
    }
}

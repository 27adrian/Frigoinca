using CapaDatos;
using CapaEntidad;
using System;
using System.Collections.Generic;

namespace CapaLogica
{
    public class logCorte
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly logCorte _instancia = new logCorte();
        //privado para evitar la instanciación directa
        public static logCorte Instancia
        {
            get
            {
                return logCorte._instancia;
            }
        }
        #endregion singleton
        ///listado

        public List<entCorte> ListarCorte()
        {
            return datCorte.Instancia.ListarCorte();
        }
        public void InsertarCorte(entCorte corte)
        {
            datCorte.Instancia.InsertarCorte(corte);
        }
        //edita
        public void EditarCorte(entCorte co)
        {
            datCorte.Instancia.EditarCorte(co);
        }
        // Método para eliminar un Corte
        public Boolean EliminarCorte(long idCorteAnim)
        {
            return datCorte.Instancia.EliminarCorte(idCorteAnim);
        }
    }
}

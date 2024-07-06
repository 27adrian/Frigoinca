using CapaDatos;
using CapaEntidad;
using System;
using System.Collections.Generic;

namespace CapaLogica
{
    public class logAnimal
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly logAnimal _instancia = new logAnimal();
        //privado para evitar la instanciación directa
        public static logAnimal Instancia
        {
            get
            {
                return logAnimal._instancia;
            }
        }
        #endregion singleton
        ///listado

        public List<entAnimal> ListarAnimal()
        {
            return datAnimal.Instancia.ListarAnima();
        }
        public void InsertarCorte(entAnimal corte)
        {
            datAnimal.Instancia.InsertarCorte(corte);
        }
        //edita
        public void EditarCorte(entAnimal co)
        {
            datAnimal.Instancia.EditarCorte(co);
        }
        // Método para eliminar un Corte
        public Boolean EliminarCorte(long idCorteAnim)
        {
            return datAnimal.Instancia.EliminarCorte(idCorteAnim);
        }
    }
}

using CapaDatos;
using CapaEntidad;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaLogica
{
    public class logDetalleAnimal
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly logDetalleAnimal _instancia = new logDetalleAnimal();
        //privado para evitar la instanciación directa
        public static logDetalleAnimal Instancia
        {
            get
            {
                return logDetalleAnimal._instancia;
            }
        }
        #endregion singleton
        ///listado

        public List<enDetalleAnimalInfo> ListarDatos(int id)
        {
            return datDetalleAnimal.Instancia.ListarDatos(id);
        }
        public void InsertarDetAnim(entDetalleAnimal detanim)
        {
            datDetalleAnimal.Instancia.InsertarDetAnim(detanim);
        }
        // Método para eliminar un Corte
        public Boolean EliminarDetalleAnimal(long idCorteAnim)
        {
            return datDetalleAnimal.Instancia.EliminarDetalleAnimal(idCorteAnim);
        }
        //Obterner FormLote
        public List<enDetalleAnimalInfo> ObtenerCortesPorEspecie(string especie)
        {
            return datDetalleAnimal.Instancia.ObtenerCortesPorEspecie(especie);
        }
        //Buscar detalle FormLote        
        public int? BuscarIdDetalleAnimal(string tipoAnimal, string tipoCorte)
        {
            return datDetalleAnimal.Instancia.ObtenerIdDetalleAnimal(tipoAnimal, tipoCorte);
        }

    }
}

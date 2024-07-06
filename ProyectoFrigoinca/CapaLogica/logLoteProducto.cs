using CapaDatos;
using CapaEntidad;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaLogica
{
    public class logLoteProducto
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly logLoteProducto _instancia = new logLoteProducto();
        //privado para evitar la instanciación directa
        public static logLoteProducto Instancia
        {
            get
            {
                return logLoteProducto._instancia;
            }
        }
        #endregion singleton
        ///listado

        public List<entLoteConDesProducto> ListarLoteProducto()
        {
            return datLoteProducto.Instancia.ListarLoteProductoConDescripciones();
        }
        //INSERTAR
        public bool InsertarLoteProducto(int idDetAnim, Int64 idIngresoMP, string descripcion)
        {
            try
            {
                return datLoteProducto.Instancia.InsertarLoteProducto(idDetAnim, idIngresoMP, descripcion);
            }
            catch (Exception ex)
            {
                // Manejo de la excepción, puedes registrar el error o manejarlo según sea necesario
                throw new Exception("Error al insertar el lote: " + ex.Message);
            }
        }

        //edita
        public void EditarLoteProducto(entLoteProducto p)
        {
            datLoteProducto.Instancia.EditarLoteProducto(p);
        }

        public List<entLoteConDesProducto> ObtenerDescripcionAnimal(string especie)
        {
            return datLoteProducto.Instancia.ObtenerDescripcionAnimal(especie);
        }
    }
}

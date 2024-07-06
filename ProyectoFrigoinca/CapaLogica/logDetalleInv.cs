using CapaDatos;
using CapaEntidad;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaLogica
{
    public class logDetalleInv
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly logDetalleInv _instancia = new logDetalleInv();
        //privado para evitar la instanciación directa
        public static logDetalleInv Instancia
        {
            get
            {
                return logDetalleInv._instancia;
            }
        }
        #endregion singleton
        public void RegisterInventarioYLot(entDetalleInv inventario, entDetalleLote loteProducto)
        {
            try
            {
                // Llama al método de la capa de datos que ejecuta el procedimiento almacenado
                datDetalleInv.Instancia.RegisterInventoryAndLot(inventario, loteProducto);

                // Aquí puedes agregar un mensaje o lógica adicional si es necesario
                Console.WriteLine("Registro de inventario y lote exitoso.");
            }
            catch (Exception ex)
            {
                // Manejar otros errores
                throw new Exception("Error al registrar inventario y lote: " + ex.Message);
            }

        }




    }
}

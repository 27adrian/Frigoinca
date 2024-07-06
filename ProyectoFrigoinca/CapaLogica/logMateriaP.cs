using CapaDatos;
using CapaEntidad;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaLogica
{
    public class logMateriaP
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly logMateriaP _instancia = new logMateriaP();
        //privado para evitar la instanciación directa
        public static logMateriaP Instancia
        {
            get
            {
                return logMateriaP._instancia;
            }
        }
        #endregion singleton
        ///listado

        public bool AtenderOrdenCompraYRegistrarIngreso(long idOrdCom, int cantidad, bool estado, string descripcion)
        {
            return datMateriaP.Instancia.AtenderOrdenCompraYRegistrarIngreso(idOrdCom, cantidad, estado, descripcion);
        }
        public List<entMateriaP> ListarMateriaP()
        {
            return datMateriaP.Instancia.ListarMateriaP();
        }

        public List<entMateriaP> ListarMatePrimaActiva()
        {
            return datMateriaP.Instancia.ListarMatePriActiva();
        }


        public List<entMateriaP> BuscarMateriaPPorDescripcion(string descripcion)
        {
            try
            {
                return datMateriaP.Instancia.BuscarMateriaPPorDescripcion(descripcion);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public Tuple<int, string> BuscarIngresoMP(long idMP)
        {
            try
            {
                // Utilizamos el Singleton de datMateriaP para acceder al método BuscarIngresoMP
                return datMateriaP.Instancia.BuscarIngresoMP(idMP);
            }
            catch (Exception ex)
            {
                throw ex;
                // Aquí manejarías la excepción de alguna forma específica para tu aplicación
            }
        }


        //PARA ACTUALIZAR EL STOCK
        public void ProcessStockUpdate(int idMP, int idInv, int cantidad)
        {
            // Validaciones adicionales si son necesarias
            if (cantidad <= 0)
            {
                throw new ArgumentException("La cantidad debe ser mayor a cero.");
            }

            datMateriaP.Instancia.UpdateStockAndReduceMaterial(idMP, idInv, cantidad);
        }

        //Deshabilitar
        public bool DeshabilitarMateria(int idMP)
        {
            try
            {
                // Llamar al método de la capa de datos (datMateriaP.Instancia)
                return datMateriaP.Instancia.DeshabilitarMateria(idMP);
            }
            catch (Exception ex)
            {
                // Capturar cualquier excepción y manejarla adecuadamente
                Console.WriteLine("Error al deshabilitar la materia: " + ex.Message);
                return false; // Devolver false para indicar que hubo un error
            }
        }

    }
}

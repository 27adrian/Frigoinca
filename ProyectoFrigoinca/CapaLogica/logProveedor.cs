using CapaDatos;
using CapaEntidad;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlTypes;

namespace CapaLogica
{
    public class logProveedor
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly logProveedor _instancia = new logProveedor();
        //privado para evitar la instanciación directa
        public static logProveedor Instancia
        {
            get
            {
                return logProveedor._instancia;
            }
        }
        #endregion singleton

        public List<entProveedor> ListarProveedor()
        {
            return datProveedor.Instancia.ListarProveedor();
        }
        public bool Insertarproveedor(entProveedor Prov)
        {
            return datProveedor.Instancia.Insertarproveedor(Prov);
        }
        //edita
        public void EditarProveedor(entProveedor pro)
        {
            datProveedor.Instancia.EditarProveedor(pro);
        }
        //Buscar
        // Método para buscar proveedores
        public List<entProveedor> BuscarProveedores(entProveedor pro)
        {
            // Asigna los valores de los parámetros de búsqueda
            long? ruc = pro.ruc;
            string nombProv = pro.nombProv;
            DateTime? fecha = pro.fecha;

            // Verifica si los valores son nulos y ajusta en consecuencia
            if (ruc == 0) ruc = null; // Si el RUC es 0, se convierte en nulo
            if (string.IsNullOrEmpty(nombProv)) nombProv = null; // Si el nombre del proveedor es nulo o una cadena vacía, se convierte en nulo
            // Verifica si fechaRegistro tiene un valor y está dentro del rango permitido
            DateTime? fechaRegistroParam = null;
            if (fecha != null && (fecha.Value >= SqlDateTime.MinValue.Value && fecha.Value <= SqlDateTime.MaxValue.Value))
            {
                fechaRegistroParam = fecha;
            }
            // Llama al método en la capa de datos para buscar proveedores
            return datProveedor.Instancia.BuscarProveedores(nombProv, ruc, fechaRegistroParam);
        }
        //Deshabilitar
        public bool DeshabilitarProveedor(int idProv)
        {
            try
            {
                return datProveedor.Instancia.DeshabilitarProveedor(idProv);
            }
            catch (Exception ex)
            {
                // Aquí puedes registrar el error si es necesario
                Console.WriteLine("Error: " + ex.Message);
                return false;
            }
        }



    }
}

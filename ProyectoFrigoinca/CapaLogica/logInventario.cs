using CapaDatos;
using CapaEntidad;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaLogica
{
    public class logInventario
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly logInventario _instancia = new logInventario();
        //privado para evitar la instanciación directa
        public static logInventario Instancia
        {
            get
            {
                return logInventario._instancia;
            }
        }
        #endregion singleton
        ///listado

        public List<entInventario> ListarInventario()
        {
            return datInventario.Instancia.ListarInventario();
        }

        public Tuple<bool, decimal?> VerificarDescripcion(string descripcion)
        {
            Tuple<bool, decimal?> resultado;
            try
            {
                resultado = datInventario.Instancia.CheckDescriptionExists(descripcion);
            }
            catch (Exception e)
            {
                throw e;
            }
            return resultado;
        }

        public List<entInventario2> listarInventarioVenta()
        {
            return datInventario.Instancia.listarInventarioVenta();
        }

        public void ActualizarPrecioXUnidad(int idInv, decimal nuevoPrecio)
        {
            try
            {
                datInventario.Instancia.ActualizarPrecioXUnidad(idInv, nuevoPrecio);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        //requerimientoinventario>10
        public List<entInventario3> RequerimientosInventarioStock()
        {
            try
            {
                return datInventario.Instancia.RequerimientosInventarioStock();
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        // Método para buscar inventario por descripción
        public List<entInventario2> BuscarInventarioPorDesc(string descripcion)
        {
            return datInventario.Instancia.BuscarInventarioPorDesc(descripcion);
        }

        public void ProcesoInventarioYMP(int stock, DateTime fechaRegistro, decimal precioXunidad, string descripcion, int idMP, int cantidad)
        {
            // Validaciones adicionales si son necesarias
            if (cantidad <= 0)
            {
                throw new ArgumentException("La cantidad debe ser mayor a cero.");
            }

            // Inserta el nuevo inventario
            datInventario.Instancia.InsertarInventario(stock, fechaRegistro, precioXunidad, descripcion);

            // Reduce la cantidad de materia prima
            datInventario.Instancia.ReduceMaterial(idMP, cantidad);
        }

        public DataTable BuscarInventarioPorDescripcion(string descripcion)
        {
            try
            {
                // Aquí podrías implementar validaciones de negocio antes de llamar a la capa de datos
                return datInventario.Instancia.BuscarInventarioPorDescripcion(descripcion);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}

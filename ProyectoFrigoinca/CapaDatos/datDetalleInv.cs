using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaEntidad;

namespace CapaDatos
{
    public class datDetalleInv
    {
        #region sigleton
        //Patron Singleton
        // Variable estática para la instancia
        private static readonly datDetalleInv _instancia = new datDetalleInv();
        //privado para evitar la instanciación directa
        public static datDetalleInv Instancia
        {
            get
            {
                return datDetalleInv._instancia;
            }
        }
        #endregion singleton

        public void RegisterInventoryAndLot(entDetalleInv inventario, entDetalleLote loteProducto)
        {
            using (SqlConnection connection = Conexion.Instancia.Conectar())
            {
                using (SqlCommand command = new SqlCommand("RegistrarInventarioYLote", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@stock", inventario.Stock);
                    command.Parameters.AddWithValue("@fechaRegistro", inventario.FechaRegistro);
                    command.Parameters.AddWithValue("@precioXunidad", inventario.PrecioXunidad);
                    command.Parameters.AddWithValue("@descripcionInventario", inventario.Descripcion);
                    command.Parameters.AddWithValue("@idDetAnim", loteProducto.IdDetAnim);
                    command.Parameters.AddWithValue("@idIngresoMP", loteProducto.IdIngresoMP);
                    command.Parameters.AddWithValue("@descripcionLote", loteProducto.Descripcion);
                    command.Parameters.AddWithValue("@StockLote", loteProducto.stock);
                    command.Parameters.AddWithValue("@FechaRegistroLote", loteProducto.fechaRegistro);

                    connection.Open();
                    try
                    {
                        int resultCode = (int)command.ExecuteScalar();

                        if (resultCode == 1)
                        {
                            Console.WriteLine("El inventario existente ha sido actualizado.");
                        }
                        else if (resultCode == 2)
                        {
                            Console.WriteLine("Un nuevo inventario ha sido insertado.");
                        }
                    }
                    catch (SqlException ex)
                    {
                        if (ex.Number == 50000) // Código de error definido por el usuario en RAISERROR
                        {
                            throw new Exception("Error en la ejecución del procedimiento almacenado: " + ex.Message);
                        }
                        else
                        {
                            throw;
                        }
                    }
                }
            }
        }

    }
}

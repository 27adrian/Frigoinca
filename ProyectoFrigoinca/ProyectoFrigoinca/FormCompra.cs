using CapaDatos;
using CapaEntidad;
using CapaLogica;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net.NetworkInformation;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ProyectoFrigoinca
{
    public partial class FormCompra : Form
    {

        public FormCompra()
        {
            InitializeComponent();
            ListarCompra();
            cargarMetodosPago();
            CambiarEncabezados();
            txtIdReqCompra.Visible = false;
            Timer timer = new Timer();
            timer.Interval = 1000;
            timer.Tick += Timer_Tick;
            timer.Start();
            txtRazonSocial.Enabled = false;
            txtNomProducto.Enabled = false;
            gbxCliente.Enabled = false;
            gbxProducto.Enabled = false;
            txtCantidad.Enabled = true;
            cbmMetodoPago.SelectedIndex = -1;
            txtCodigoPro.Enabled = false;
            txtFecha.Enabled = false;
            txtPrecioTotal.Enabled = false;
            cbxEstado.Checked = true;
            cbxEstado.Visible = false;
            btnCancelar.Visible = false;
            // Conectar los eventos TextChanged con sus manejadores
            txtCantidad.TextChanged += new EventHandler(txtCantidad_TextChanged);
            txtPrecioUnidad.TextChanged += new EventHandler(txtPrecioUnidad_TextChanged);

        }


        private void CambiarEncabezados()
        {
            dgvCompra.Columns["idOrdCom"].HeaderText = "ID de Orden";
            dgvCompra.Columns["descMedPag"].HeaderText = "Medio de Pago";
            dgvCompra.Columns["nombProv"].HeaderText = "Nombre de Proveedor";
            dgvCompra.Columns["idReqComp"].HeaderText = "ID de Requisición";
            dgvCompra.Columns["cantidad"].HeaderText = "Cantidad";
            dgvCompra.Columns["monto"].HeaderText = "Precio Unitario";
            dgvCompra.Columns["montoTotal"].HeaderText = "Monto Total";
            dgvCompra.Columns["fechaRegistro"].HeaderText = "Fecha de Registro";
            dgvCompra.Columns["descripcion"].HeaderText = "Descripción";
        }



        private void cargarMetodosPago()
        {
            cbmMetodoPago.DataSource = logMedioPago.Instancia.ListarMedioPago();
            cbmMetodoPago.DisplayMember = "descMedPag";
            cbmMetodoPago.ValueMember = "idMedPago";
        }
        private void Timer_Tick(object sender, EventArgs e)
        {
            // Actualiza la etiqueta con la fecha y hora actuales
            txtFecha.Text = DateTime.Now.ToString();
        }
        private void btnBuscar_Click(object sender, EventArgs e)
        {
            AbrirFormSecundario();
        }

        private void AbrirFormSecundario()
        {
            using (FormBuscarProv formBuscarProv = new FormBuscarProv())
            {
                if (formBuscarProv.ShowDialog() == DialogResult.OK)
                {
                    txtIdProv.Text = formBuscarProv.IdProv;
                    txtNomProducto.Text = formBuscarProv.Animal;  // Asigna el valor a txtAnimal
                    txtRazonSocial.Text = formBuscarProv.Nombre;  // Asigna el valor a txtNombre
                }
            }
        }

        public void ListarCompra()
        {
            dgvCompra.DataSource = logCompra.Instancia.ListarCompra();
        }

       

        public void limpiar()
        {

            txtNomProducto.Text = "";
            txtPrecioUnidad.Text = "";
            txtRazonSocial.Text = "";
            txtCantidad.Text = "";            
            txtCodigoPro.Text = "";
            txtIdProv.Text = "";
            cbmMetodoPago.SelectedIndex = -1;
        }





        //private void btnBuscarCo_Click_1(object sender, EventArgs e)
        //{

        //    string codigo = txtCodigoPro.Text;

        //    using (SqlConnection connection = Conexion.Instancia.Conectar())
        //    {
        //        connection.Open();

        //        string query = @"
        //        SELECT descNomProd
        //        FROM NOMBRE_PRODUCTO
        //        WHERE idNomProd = @idNomProd";

        //        using (SqlCommand command = new SqlCommand(query, connection))
        //        {
        //            command.Parameters.AddWithValue("@idNomProd", codigo);

        //            using (SqlDataReader reader = command.ExecuteReader())
        //            {
        //                if (reader.Read())
        //                {

        //                    string descripcionProducto = reader["descNomProd"].ToString();

        //                    // Mostrar el nombre y la descripción del producto en los TextBox correspondientes                            
        //                    txtNomProducto.Text = descripcionProducto;
        //                }
        //                else
        //                {
        //                    MessageBox.Show("Producto no encontrado");
        //                    txtNomProducto.Text = "";
        //                }
        //            }
        //        }
        //    }
        //}

        private void btnNuevo_Click_1(object sender, EventArgs e)
        {

            gbxCliente.Enabled = true;

            gbxProducto.Enabled = true;
            btnRealizar.Enabled = true;
        }

        private void iconButton1_Click(object sender, EventArgs e)
        {

            //string id = txtIdReqCompra.Text;
            //List<string> requerimientos = new List<string>();

            //using (SqlConnection connection = Conexion.Instancia.ObtenerConexion())
            //{
            //    connection.Open();

            //    string query = @"
            //     SELECT idReqComp, desReqComp
            //     FROM REQUERIMIENTO_COMPRA
            //     WHERE estado = 1 AND idReqComp = @idReqComp";

            //    using (SqlCommand command = new SqlCommand(query, connection))
            //    {
            //        command.Parameters.AddWithValue("@idReqComp", id);

            //        using (SqlDataReader reader = command.ExecuteReader())
            //        {
            //            while (reader.Read())
            //            {
            //                string descripcionRequerimiento = reader["desReqComp"].ToString();
            //                requerimientos.Add(descripcionRequerimiento);

            //            }
            //        }
            //    }
            //}

            //// Mostrar los requerimientos de compra en el TextBox correspondiente
            //if (requerimientos.Count > 0)
            //{
            //    txtReqCom.Text = string.Join(", ", requerimientos);
            //    MessageBox.Show("Se encontro un requerimiento");
            //}
            //else
            //{
            //    MessageBox.Show("No hay Requerimientos en esa orden");
            //    txtReqCom.Text = "";
            //}
        }

        private void btnVerificar_Click(object sender, EventArgs e)
        {
            
            gbxCliente.Enabled = true;
            gbxProducto.Enabled = true;
            gbxPago.Enabled = true;
            btnCancelar.Visible = true;
            btnRealizar.Enabled = true;
        }

        private void dtaRequerimiento_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            //try
            //{
            //    if (e.RowIndex >= 0)
            //    {
            //        DataGridViewRow row = dtaRequerimiento.Rows[e.RowIndex];

            //        bool estado = (bool)row.Cells[3].Value;

            //        if (estado)
            //        {
            //            txtIdReqCompra.Text = row.Cells[0].Value?.ToString();
            //            txtReqCom.Text = row.Cells[1].Value?.ToString();
            //            txtCantidad.Text = row.Cells[2].Value?.ToString();
            //            txtCantidad.Enabled = false;
            //            MessageBox.Show("Requerimiento encontrado.");
            //        }
            //        else
            //        {
            //            MessageBox.Show("No se pueden mostrar datos de esta fila porque el requerimiento ya fue atendido.");
            //        }
            //    }
            //}
            //catch
            //{
            //    // Handle any exceptions
            //}
        }





        private void btnCancelar_Click(object sender, EventArgs e)
        {
            btnCancelar.Visible = false;
            gbxCliente.Enabled = false;
            gbxProducto.Enabled = false;
            gbxPago.Enabled =
            
            gbxPago.Enabled = false;
            txtRequerimiento.Text = "";
            limpiar();
        }

        private void btnLimpiarReq_Click(object sender, EventArgs e)
        {
            limpiar();
        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {

            try
            {
                // Obtener los valores de los campos
                int idPago;
                int idProv;
                int cantidad;
                decimal monto;
                decimal montoTotal;
                string descripcion = txtNomProducto.Text;
                bool estadoCheckbox = cbxEstado.Checked;

                // Validar si el campo txtMetodo está vacío y mostrar un mensaje de error si es necesario
                if (cbmMetodoPago.SelectedIndex != -1)
                {
                    idPago = Convert.ToInt32(cbmMetodoPago.SelectedValue);
                }
                else
                {
                    errorProvider.SetError(cbmMetodoPago, "Por favor seleccione una forma de pago.");
                    return;
                }

                if (!int.TryParse(txtIdProv.Text, out idProv))
                {
                    errorProvider.SetError(txtIdProv, "Por favor añada un proveedor.");
                    return;
                }

                if (!int.TryParse(txtCantidad.Text, out cantidad))
                {
                    errorProvider.SetError(txtCantidad, "Por favor añada una cantidad.");
                    return;
                }

                if (!decimal.TryParse(txtPrecioUnidad.Text, out monto))
                {
                    errorProvider.SetError(txtPrecioUnidad, "Por favor añada un precio.");
                    return;
                }

                if (!decimal.TryParse(txtPrecioTotal.Text, out montoTotal))
                {
                    errorProvider.SetError(txtPrecioTotal, "Por favor añada un precio total.");
                    return;
                }

                string idReqComp = txtIdReqCompra.Text;

                // Limpiar los mensajes de error si todos los campos son válidos
                errorProvider.SetError(cbmMetodoPago, "");
                errorProvider.SetError(txtIdProv, "");
                errorProvider.SetError(txtCantidad, "");
                errorProvider.SetError(txtPrecioUnidad, "");
                errorProvider.SetError(txtPrecioTotal, "");

                // Verificar y actualizar el requerimiento
                if (!string.IsNullOrEmpty(idReqComp) && int.TryParse(idReqComp, out int idReqCompInt))
                {
                    try
                    {
                        bool actualizado = logCompra.Instancia.VerificarYActualizarRequerimiento(idReqCompInt);
                        if (actualizado)
                        {
                            MessageBox.Show("Requerimiento atendido.");
                        }
                        else
                        {
                            MessageBox.Show("Registro no encontrado. El estado se mantiene en true.");
                        }
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("Error al actualizar el requerimiento: " + ex.Message);
                    }
                }
                else
                {
                    MessageBox.Show("ID de requerimiento no válido.");
                }

                // Crear la entidad entOrdenCompra
                entOrdenCompra ordenCompra = new entOrdenCompra
                {
                    idMedPago = idPago,
                    idProv = idProv,
                    idReqComp = string.IsNullOrEmpty(idReqComp) ? (int?)null : Convert.ToInt32(idReqComp),
                    cantidad = cantidad,
                    monto = monto,
                    montoTotal = montoTotal,
                    fechaRegistro = DateTime.Now,
                    descripcion = descripcion,
                    estado = estadoCheckbox
                };

                // Insertar la nueva orden de compra
                bool insertado = logCompra.Instancia.InsertarOrdenCompra(ordenCompra);
                if (insertado)
                {
                    MessageBox.Show("Descripción de orden de compra insertada correctamente.");
                    limpiar();
                    ListarCompra();
                }
                else
                {
                    MessageBox.Show("Error al insertar la orden de compra.");
                }

                btnRealizar.Enabled = false;
                gbxCliente.Enabled = false;
                gbxProducto.Enabled = false;
                btnCancelar.Visible = false;
                txtRequerimiento.Text = "";
                limpiar();
                ListarCompra();

                
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
        }

        private void txtFecha_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtNomProducto_TextChanged(object sender, EventArgs e)
        {
            BuscarYActualizarIdProducto(txtNomProducto.Text);
        }

        private void BuscarYActualizarIdProducto(string descripcion)
        {
            if (string.IsNullOrWhiteSpace(descripcion))
            {
                txtCodigoPro.Text = string.Empty;
                return;
            }
                        
            using (SqlConnection connection = Conexion.Instancia.Conectar())
            {
                string query = "SELECT idAnimal FROM Animal WHERE especie = @especie";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@especie", descripcion);

                try
                {
                    connection.Open();
                    object result = command.ExecuteScalar();
                    if (result != null)
                    {
                        txtCodigoPro.Text = result.ToString();
                    }
                    else
                    {
                        txtCodigoPro.Text = string.Empty; 
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error al buscar el producto: " + ex.Message);
                }
            }
        }

        private void txtPrecioUnidad_TextChanged(object sender, EventArgs e)
        {
            CalcularTotal();
        }

        private void txtCantidad_TextChanged(object sender, EventArgs e)
        {
            CalcularTotal();
        }


        private void CalcularTotal()
        {
            if (decimal.TryParse(txtCantidad.Text, out decimal cantidad) && decimal.TryParse(txtPrecioUnidad.Text, out decimal precioUnitario))
            {
                decimal total = cantidad * precioUnitario;
                txtPrecioTotal.Text = total.ToString("0.##"); // Formatear a dos decimales si es necesario
            }
            else
            {
                txtPrecioTotal.Text = string.Empty; // Limpiar el campo si la entrada no es válida
            }
        }

        private void btnBuscar_Click_1(object sender, EventArgs e)
        {
            using (FormRequerimiento formRequeri = new FormRequerimiento())
            {
                if (formRequeri.ShowDialog() == DialogResult.OK)
                {
                    txtIdReqCompra.Text = formRequeri.idReq;
                    txtRequerimiento.Text = formRequeri.descripcion;  // Asigna el valor a txtAnimal
                    txtCantidad.Text = formRequeri.cantidad;  // Asigna el valor a txtNombre
                }
            }
        }

        private void txtRequerimiento_TextChanged(object sender, EventArgs e)
        {
            // Comprueba si el TextBox tiene texto
            if (!string.IsNullOrEmpty(txtRequerimiento.Text))
            {
                txtCantidad.Enabled = false; // Deshabilita txtCantidad si txtRequerimiento tiene texto
            }
            else
            {
                txtCantidad.Enabled = true; // Habilita txtCantidad si txtRequerimiento está vacío
            }
        }
    }
}

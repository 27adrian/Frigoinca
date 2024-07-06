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
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ProyectoFrigoinca
{
    public partial class FormMateriaPri : Form
    {
        public FormMateriaPri()
        {
            InitializeComponent();
            listarMateriaP();
            btnRegistrar.Enabled = false;
            gbxDescripcion.Enabled = false;        
            txtDescripcion.Enabled = false;
            btnCancelar.Visible = false;
            cbxEstado.Visible = false;
            cbxEstado.Checked = true;           
            txtCantidad.Enabled = false;
            txtIdCompra.Enabled = false;
            txtIdM.Visible = false;
        }


        public void listarMateriaP()
        {
            dgvMateriaPrima.DataSource = logMateriaP.Instancia.ListarMateriaP();
        }

       

        private void btnRegistrar_Click(object sender, EventArgs e)
        {
            // Obtener el ID de la orden de compra y otros detalles desde los controles
            if (!Int64.TryParse(txtIdCompra.Text, out long idCompra))
            {
                errorProvider.SetError(txtIdCompra, "Por favor añada una orden de compra.");
            }
            else
            {
                errorProvider.SetError(txtIdCompra, ""); // Limpiar el mensaje de error si el campo no está vacío

                int cantidad = Convert.ToInt32(txtCantidad.Text);
                bool estado = cbxEstado.Checked; // Supongamos que tienes un CheckBox para el estado
                string descripcion = txtDescripcion.Text;

                try
                {
                    bool exito = logMateriaP.Instancia.AtenderOrdenCompraYRegistrarIngreso(idCompra, cantidad, estado, descripcion);
                    if (exito)
                    {
                        MessageBox.Show("Se atendió la orden de compra y se registró el ingreso correctamente.");
                    }
                    else
                    {
                        MessageBox.Show("Error al actualizar la orden de compra o registrar el ingreso.");
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error: " + ex.Message);
                }
            }
            btnRegistrar.Enabled = false;
            gbxDescripcion.Enabled = false;
            btnCancelar.Visible = false;
            Limpiar();
            listarMateriaP();

        }
        private void Limpiar()
        {
            txtDescripcion.Text = "";
            txtCantidad.Text = "";
            txtIdCompra.Text = "";            
        }

        private void btnNuevo_Click(object sender, EventArgs e)
        {
            cbxEstado.Checked = true;
            gbxDescripcion.Enabled = true;
            btnRegistrar.Enabled = true;
            btnCancelar.Visible = true;                                    
        }
               

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            gbxDescripcion.Enabled = false;
            btnRegistrar.Enabled = false;
            btnCancelar.Visible = false;
            Limpiar();
            errorProvider.SetError(txtIdCompra, ""); // Limpiar el mensaje de error si el campo no está vacío
        }
               

        private void btnSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            AbrirFormSecundario();
        }
        private void AbrirFormSecundario()
        {
            using (FormBuscarOrden formBuscar = new FormBuscarOrden())
            {
                if (formBuscar.ShowDialog() == DialogResult.OK)
                {
                    txtIdCompra.Text = formBuscar.idCompra;
                    txtCantidad.Text = formBuscar.cantidad;
                    txtDescripcion.Text = formBuscar.descripcion;
                }
            }
        }

        private void iconButton1_Click(object sender, EventArgs e)
        {
            try
            {
                // Intenta convertir el texto del TextBox a un entero (ID de materia prima)
                if (int.TryParse(txtIdM.Text, out int idMP))
                {
                    // Llama al método de la capa lógica para deshabilitar la materia prima
                    bool resultado = logMateriaP.Instancia.DeshabilitarMateria(idMP);

                    if (resultado)
                    {
                        MessageBox.Show("Materia Prima deshabilitada exitosamente.", "Exito", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    else
                    {
                        MessageBox.Show("La Materia Prima ya está deshabilitada.", "Información", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
                else
                {
                    MessageBox.Show("Por favor, ingrese un ID válido para la Materia Prima.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            catch (Exception ex)
            {
                // Muestra un mensaje de error específico en caso de que ocurra una excepción
                MessageBox.Show("Ocurrió un error al deshabilitar la materia prima: " + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            listarMateriaP();
            Limpiar();
        }

        private void dgvMateriaPrima_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                if (e.RowIndex >= 0)
                {
                    DataGridViewRow row = dgvMateriaPrima.Rows[e.RowIndex];

                    txtIdM.Text = row.Cells[0].Value?.ToString();                   
                }
            }
            catch { }
        }
    }
}
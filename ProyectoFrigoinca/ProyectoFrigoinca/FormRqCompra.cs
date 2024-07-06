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
    public partial class FormRqCompra : Form
    {
        public FormRqCompra()
        {
            InitializeComponent();
            listarRqCompra();
            cbxEstado.Checked = true;
            btnCancelar.Visible = false;
            dgvRqCompra.Enabled = false;
            gbxRqCompra.Enabled = false;
            btnRegistrar.Enabled = false;            
            btnCancelar.Visible = false;
            txtIdInv.Enabled = false;
            txtStock.Enabled = false;
            txtEspecie.Enabled = false;
            cbxEstado.Enabled = false;
        }

        public void listarRqCompra()
        {
            dgvRqCompra.DataSource = logRqCompra.Instancia.ListarRqCompra();
        }

        
        private void btnCancelar_Click(object sender, EventArgs e)
        {
            gbxRqCompra.Enabled = false;
            btnRegistrar.Enabled = false;            
            btnCancelar.Visible = false;
            Limpiar();
            errorProvider.SetError(txtStock, ""); // Limpiar el mensaje de error si el campo no está vacío
        }

        private void btnRegistrar_Click(object sender, EventArgs e)
        {
            try
            {
                // Obtener el valor del campo txtDescripcion
                string descripcion = txtDescripcion.Text;
                int cantidad;
                bool estadoCheckbox = cbxEstado.Checked;
                int idinv;

                
                if (string.IsNullOrEmpty(descripcion))
                {
                    MessageBox.Show("Ingrese una descripción.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                
                if (!int.TryParse(txtCantidad.Text, out cantidad))
                {
                    MessageBox.Show("Ingrese una cantidad válida.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }

                if (!int.TryParse(txtIdInv.Text, out idinv))
                {
                    MessageBox.Show("Ingrese un ID de inventario válido.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                                
                entRqCompra rqCompra = new entRqCompra
                {
                    DesReqComp = descripcion,
                    cantidad = cantidad,
                    estado = estadoCheckbox,
                    idInv = idinv
                };
                                
                bool insertado = logRqCompra.Instancia.InsertarRqCompra(rqCompra);
                if (insertado)
                {
                    MessageBox.Show("Insertado correctamente.");
                    Limpiar();
                    listarRqCompra();
                }
                else
                {
                    MessageBox.Show("Error al insertar.");
                }

                btnRegistrar.Enabled = false;
                btnCancelar.Visible = false;

            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
        }
        private void Limpiar()
        {
            txtDescripcion.Text = "";
            txtEspecie.Text = "";
            txtStock.Text = "";
            txtIdInv.Text = "";
            
        }

        private void btnModificar_Click(object sender, EventArgs e)
        {
           
        }

        private void btnNuevo_Click(object sender, EventArgs e)
        {
            gbxRqCompra.Enabled = true;
            btnRegistrar.Enabled = true;            
            btnCancelar.Visible = true;            
            dgvRqCompra.Enabled = true ;            
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            dgvRqCompra.Enabled = true;
            gbxRqCompra.Enabled = true;
            btnRegistrar.Enabled = false;           
            btnCancelar.Visible = true;            
        }

        private void dgvRqCompra_CellClick(object sender, DataGridViewCellEventArgs e)
        {
           
        }

        private void btnBuscarRq_Click(object sender, EventArgs e)
        {            
            using (FormInventarioRq formBuscarI = new FormInventarioRq())
            {
                if (formBuscarI.ShowDialog() == DialogResult.OK)
                {
                    txtIdInv.Text = formBuscarI.idInv;
                    txtStock.Text = formBuscarI.cantidad;
                    txtEspecie.Text = formBuscarI.especie;
                }
            }
        }

        private void gbxRqCompra_Enter(object sender, EventArgs e)
        {

        }

        private void txtIdInv_TextChanged(object sender, EventArgs e)
        {
            
        }
       

        private void txtEspecie_VisibleChanged(object sender, EventArgs e)
        {
            
        }
    }
}

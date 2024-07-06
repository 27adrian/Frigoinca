using CapaDatos;
using CapaEntidad;
using CapaLogica;
using Microsoft.ReportingServices.Diagnostics.Internal;
using System;
using System.Collections;
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
    public partial class FormInventario : Form
    {
        public FormInventario()
        {
            InitializeComponent();
            listarInventario();
            txtIdInv.Enabled = false;
            txtDescripcion.Enabled = false;
            txtPrecioActual.Enabled = false;
            gbxActualizar.Enabled = false;
            btnCancelar.Visible = false;
        }
                
        public void listarInventario()
        {
            dgvInventario.DataSource = logInventario.Instancia.ListarInventario();
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            string descripcion = txtBuscar.Text;
            var inventarios = logInventario.Instancia.BuscarInventarioPorDesc(descripcion);
            dgvInventario.DataSource = inventarios;
        }

        private void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtBuscar.Text = "";
            listarInventario();
        }
               

        private void btnRegistrar_Click_1(object sender, EventArgs e)
        {
            try
            {
                int idInv = int.Parse(txtIdInv.Text);
                decimal nuevoPrecio = decimal.Parse(txtPrecioActualizar.Text);

                logInventario.Instancia.ActualizarPrecioXUnidad(idInv, nuevoPrecio);
                MessageBox.Show("Precio actualizado correctamente.");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
            listarInventario();
            txtIdInv.Text = "";
            txtDescripcion.Text = "";
            txtPrecioActual.Text = "";
            txtPrecioActualizar.Text = "";
            gbxActualizar.Enabled = false;
        }

        private void btnActualizar_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Seleccione un producto de la tabla de Inventario.");
            limpiar();
            gbxActualizar.Enabled = true;
            btnCancelar.Visible = true;
        }

        public void limpiar()
        {
            txtIdInv.Text = "";
            txtDescripcion.Text = "";
            txtPrecioActual.Text = "";
            txtPrecioActualizar.Text = "";
            txtBuscar.Text = "";
        }

        private void dgvInventario_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                if (e.RowIndex >= 0)
                {
                    DataGridViewRow row = dgvInventario.Rows[e.RowIndex];

                    txtIdInv.Text = row.Cells[0].Value?.ToString();
                    txtPrecioActual.Text = row.Cells[3].Value?.ToString();
                    txtDescripcion.Text = row.Cells[4].Value?.ToString();

                }
            }
            catch { }
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            limpiar();
            gbxActualizar.Enabled = false;
            btnCancelar.Visible = false;
        }
    }
}

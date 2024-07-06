using CapaDatos;
using CapaEntidad;
using CapaLogica;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ProyectoFrigoinca
{
    public partial class FormBuscarOrden : Form
    {
        public string idCompra { get; private set; }
        public string cantidad { get; private set; }
        public string descripcion { get; private set; }

        public FormBuscarOrden()
        {
            InitializeComponent();

        }
        public List<entCompraActiva> listarOrdenesActivas()
        {
            List<entCompraActiva> listaOrdenes = logCompra.Instancia.ListarOrdenesCompraActivas();
            if (listaOrdenes != null && listaOrdenes.Count > 0)
            {
                dgvOrdenCompra.DataSource = listaOrdenes;
            }
            else
            {
                dgvOrdenCompra.DataSource = null;
            }
            return listaOrdenes;
        }
        private void btnAgregar_Click(object sender, EventArgs e)
        {
            List<entCompraActiva> ordenes = listarOrdenesActivas();
            if (ordenes != null && ordenes.Count > 0)
            {
                MessageBox.Show("Se encontraron resultados...");
            }
            else
            {
                MessageBox.Show("No se encontraron resultados.");
            }
        }

        private void dgvOrdenCompra_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            DataGridViewRow filaActual = dgvOrdenCompra.Rows[e.RowIndex];

            // Si el estado es true, asignar los valores
            idCompra = filaActual.Cells[0].Value.ToString();
            cantidad = filaActual.Cells[1].Value.ToString();
            descripcion = filaActual.Cells[3].Value.ToString();

            DialogResult = DialogResult.OK;  // Esto cierra el formulario y devuelve el resultado a FormPrincipal
            Close();
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}

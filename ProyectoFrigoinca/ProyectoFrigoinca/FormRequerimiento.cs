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
    public partial class FormRequerimiento : Form
    {
        public string idReq { get; private set; }
        public string descripcion { get; private set; }
        public string cantidad { get; private set; }
        public FormRequerimiento()
        {
            InitializeComponent();
        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            listarRqCompra();
        }

        public void listarRqCompra()
        {
            try
            {
                List<entRqCompra> lista = logRqCompra.Instancia.ListarRqCompraEstadoTrue();
                // Asignar la lista a un DataGridView, ListBox, etc.
                dgvRequerimiento.DataSource = lista;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
        }

        private void dgvRequerimiento_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            DataGridViewRow filaActual = dgvRequerimiento.Rows[e.RowIndex];

            idReq = filaActual.Cells[0].Value.ToString();
            descripcion = filaActual.Cells[1].Value.ToString();
            cantidad = filaActual.Cells[2].Value.ToString();

            DialogResult = DialogResult.OK;
            Close();
        }
    }
}

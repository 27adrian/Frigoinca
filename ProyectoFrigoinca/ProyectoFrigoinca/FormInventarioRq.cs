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
    public partial class FormInventarioRq : Form
    {
        public string idInv { get; private set; }
        public string cantidad { get; private set; }
        public string especie { get; private set; }

        public FormInventarioRq()
        {
            InitializeComponent();
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            try
            {
                List<entInventario3> lista = logInventario.Instancia.RequerimientosInventarioStock();
                dgvInventario.DataSource = lista;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
        }

        private void dgvInventario_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            DataGridViewRow filaActual = dgvInventario.Rows[e.RowIndex];

            idInv = filaActual.Cells[0].Value.ToString();
            especie = filaActual.Cells[1].Value.ToString();
            cantidad = filaActual.Cells[2].Value.ToString();

            DialogResult = DialogResult.OK;
            Close();
        }

        private void FormInventarioRq_Load(object sender, EventArgs e)
        {

        }
    }
}

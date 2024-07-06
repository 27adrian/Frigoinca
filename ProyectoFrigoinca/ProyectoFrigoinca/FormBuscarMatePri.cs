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
    public partial class FormBuscarMatePri : Form
    {

        public string idMateria { get; private set; }
        public string especie { get; private set; }
        public string cantidad { get; private set; }
        public FormBuscarMatePri(string descripcion)
        {
            InitializeComponent();
            listarMateriaActiva();
            txtBuscar.Text = descripcion;

            // Bloquear el cuadro de texto si la descripción no está vacía
            if (!string.IsNullOrEmpty(descripcion))
            {
                txtBuscar.Enabled = false;
            }
        }

        public void listarMateriaActiva()
        {
            dgvMateriaPrima.DataSource = logMateriaP.Instancia.ListarMatePrimaActiva();
        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            dgvMateriaPrima.Enabled = true;
            try
            {
                string descripcion = txtBuscar.Text;
                List<entMateriaP> lista = logMateriaP.Instancia.BuscarMateriaPPorDescripcion(descripcion);
                dgvMateriaPrima.DataSource = lista;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {

        }

        private void dgvMateriaPrima_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            DataGridViewRow filaActual = dgvMateriaPrima.Rows[e.RowIndex];

            idMateria = filaActual.Cells[0].Value.ToString();
            cantidad = filaActual.Cells[2].Value.ToString();
            especie = filaActual.Cells[4].Value.ToString();            
           
            DialogResult = DialogResult.OK;
            Close();
        }

        private void txtBuscar_TextChanged(object sender, EventArgs e)
        {
            
        }
    }
}

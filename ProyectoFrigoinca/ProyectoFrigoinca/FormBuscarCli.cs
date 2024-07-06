using CapaDatos;
using CapaEntidad;
using CapaLogica;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlTypes;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ProyectoFrigoinca
{
    public partial class FormBuscarCli : Form
    {
        public string idCli { get; set; }
        public string nombreCli { get; set; }
        public string doc {  get; set; }
        public string numDoc {  get; set; }

        public FormBuscarCli()
        {
            InitializeComponent();
            ListarCLientesResumen();

            cbmTipo.Items.Add("DNI");
            cbmTipo.Items.Add("RUC");

            cbmTipo.SelectedIndex = -1;
            txtBuscar.Text = "";
        }


        private void ListarCLientesResumen()
        {
            dgvCliente.DataSource = logCliente.Instancia.ListarCLientesResumen();
        }
        
        private void btnBuscar_Click(object sender, EventArgs e)
        {
            string tipoDoc = cbmTipo.SelectedItem.ToString();
            long? numeroDoc = string.IsNullOrEmpty(txtBuscar.Text) ? (long?)null : Convert.ToInt64(txtBuscar.Text);

            var clientes = logCliente.Instancia.BuscarClientePorDocumento(tipoDoc, numeroDoc);
            dgvCliente.DataSource = clientes;
        }
      

        private void dgvCliente_CellClick_1(object sender, DataGridViewCellEventArgs e)
        {
            DataGridViewRow filaActual = dgvCliente.Rows[e.RowIndex];

            idCli = filaActual.Cells[0].Value.ToString();
            nombreCli = filaActual.Cells[1].Value.ToString();
            doc = filaActual.Cells[2].Value.ToString();
            numDoc = filaActual.Cells[3].Value.ToString();
            DialogResult = DialogResult.OK;
            Close();
        }
              

        private void btnLimpiar_Click(object sender, EventArgs e)
        {
            cbmTipo.SelectedIndex = -1;
            txtBuscar.Text = "";
            ListarCLientesResumen();
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}

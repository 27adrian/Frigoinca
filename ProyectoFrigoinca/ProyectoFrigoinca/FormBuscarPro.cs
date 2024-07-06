using CapaDatos;
using CapaLogica;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Forms;

namespace ProyectoFrigoinca
{
    public partial class FormBuscarPro : Form
    {
        public string codigo {  get; set; }
        public string precioU {  get; set; }
        public string descripcion { get; set; }
        public int stockDisponible { get; set; } // Nueva propiedad
        public FormBuscarPro()
        {
            InitializeComponent();
            listarInventarioVenta();
        }

        private void listarInventarioVenta()
        {
            dgvProducto.DataSource = logInventario.Instancia.listarInventarioVenta();
        }


        private void TXT_Click(object sender, EventArgs e)
        {

        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            string descripcion = txtBuscar.Text;
            var inventarios = logInventario.Instancia.BuscarInventarioPorDesc(descripcion);
            dgvProducto.DataSource = inventarios;
        }
        private int FilaActualInventario = -1;
        private void dgvProducto_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0) // Asegurarse de que el índice de la fila es válido
            {
                DataGridViewRow filaActual = dgvProducto.Rows[e.RowIndex];

                codigo = filaActual.Cells[0].Value.ToString();
                descripcion = filaActual.Cells[1].Value.ToString();
                precioU = filaActual.Cells[2].Value.ToString();
                stockDisponible = Convert.ToInt32(filaActual.Cells[3].Value); // Obtener el stock disponible

                DialogResult = DialogResult.OK;
                Close();
            }
        }

        private void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtBuscar.Text = "";
            listarInventarioVenta();
        }
    }
}

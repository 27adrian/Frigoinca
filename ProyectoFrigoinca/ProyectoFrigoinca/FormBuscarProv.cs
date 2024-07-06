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
    public partial class FormBuscarProv : Form
    {
        public string IdProv { get; private set; }
        public string Animal { get; private set; }
        public string Nombre { get; private set; }

        public FormBuscarProv()
        {
            InitializeComponent();
            ListarProveedor();

            // Agregar opciones al comboBoxCriterio
            cbmCriterios.Items.Add("NombreProveedor");
            cbmCriterios.Items.Add("Ruc");
            cbmCriterios.Items.Add("Fecha");


            // Configurar el evento SelectedIndexChanged
            cbmCriterios.SelectedIndexChanged += cbmCriterios_SelectedIndexChanged;

            // Configurar los controles inicialmente
            txtBuscar2.Visible = false;
            txtBuscartex.Visible = false;
            dtpFecha.Visible = false;


        }

        private void ListarProveedor()
        {
            dgvProveedor.DataSource = logProveedor.Instancia.ListarProveedor();
        }
        

        private void btnSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            entProveedor proveedor = new entProveedor();

            if (cbmCriterios.SelectedItem.ToString() == "NombreProveedor")
            {
                proveedor.nombProv = txtBuscar2.Text;
            }
            else if (cbmCriterios.SelectedItem.ToString() == "Ruc")
            {
                if (long.TryParse(txtBuscartex.Text, out long ruc))
                {
                    proveedor.ruc = ruc;
                }
                else
                {
                    MessageBox.Show("Por favor, ingrese un RUC válido.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
            }
            else if (cbmCriterios.SelectedItem.ToString() == "Fecha")
            {
                // Validar la fecha antes de asignarla
                DateTime fechaSeleccionada = dtpFecha.Value;
                if (fechaSeleccionada < SqlDateTime.MinValue.Value || fechaSeleccionada > SqlDateTime.MaxValue.Value)
                {
                    MessageBox.Show("La fecha seleccionada está fuera del rango admitido.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                proveedor.fecha = fechaSeleccionada;
            }

            List<entProveedor> proveedores = logProveedor.Instancia.BuscarProveedores(proveedor);
            dgvProveedor.DataSource = proveedores;
        }


        private void cbmCriterios_SelectedIndexChanged(object sender, EventArgs e)
        {
            string criterio = cbmCriterios.SelectedItem.ToString();
            txtBuscar2.Visible = criterio == "NombreProveedor";
            txtBuscartex.Visible = criterio == "Ruc";
            dtpFecha.Visible = criterio == "Fecha";

        }

        
        
       

        private void btnLimpiar_Click(object sender, EventArgs e)
        {
            ListarProveedor();
        }

        private void dgvProveedor_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            DataGridViewRow filaActual = dgvProveedor.Rows[e.RowIndex];

            // Verificar si la columna "estado" está en false
            bool estado = Convert.ToBoolean(filaActual.Cells[4].Value);
            if (!estado)
            {
                MessageBox.Show("No se puede seleccionar este proveedor porque esta deshabilitado.");
                return;
            }

            // Si el estado es true, asignar los valores
            IdProv = filaActual.Cells[0].Value.ToString();
            Animal = filaActual.Cells[1].Value.ToString();
            Nombre = filaActual.Cells[3].Value.ToString();

            DialogResult = DialogResult.OK;  // Esto cierra el formulario y devuelve el resultado a FormPrincipal
            Close();
        }

        private void label5_Click(object sender, EventArgs e)
        {

        }
    }
}

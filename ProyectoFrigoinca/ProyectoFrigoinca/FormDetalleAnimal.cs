using CapaDatos;
using CapaEntidad;
using CapaLogica;
using System;
using System.Collections.Generic;
using System.Windows.Forms;

namespace ProyectoFrigoinca
{
    public partial class FormDetalleAnimal : Form
    {
        public FormDetalleAnimal()
        {
            InitializeComponent();
            LlenarAnimales();            
            cbxAnimal.SelectedValue = 1;
            LlenarCortes();            
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {

            this.Close();
        }

        private void btnRegistrar_Click(object sender, EventArgs e)
        {
            try
            {
                entDetalleAnimal da = new entDetalleAnimal();
                da.idAnimal = int.Parse(cbxAnimal.SelectedValue.ToString());
                da.idCorteAnim = int.Parse(cbxCorte.SelectedValue.ToString());
                logDetalleAnimal.Instancia.InsertarDetAnim(da);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error.." + ex);
            }
            ListarDatos(int.Parse(cbxAnimal.SelectedValue.ToString()));
        }
        private void LlenarAnimales()
        {
            List<entAnimal> listMedPago = logAnimal.Instancia.ListarAnimal();
            cbxAnimal.DataSource = listMedPago;
            cbxAnimal.DisplayMember = "especie"; // El nombre del animal para mostrar en el ComboBox
            cbxAnimal.ValueMember = "idAnimal"; // El valor real querepresenta al animal (su ID)
        } 
        private void LlenarCortes()
        {
            List<entCorte> listMedPago = logCorte.Instancia.ListarCorte();
            cbxCorte.DataSource = listMedPago;
            cbxCorte.DisplayMember = "descCorteAnim"; // El nombre del animal para mostrar en el ComboBox
            cbxCorte.ValueMember = "idCorteAnim"; // El valor real que representa al animal (su ID)
        }
        private void btnEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                if (dgvDetalleCortes.SelectedRows.Count > 0)
                {
                    int id = Convert.ToInt32(dgvDetalleCortes.SelectedRows[0].Cells[0].Value);
                    int animal = int.Parse(cbxCorte.SelectedValue.ToString());
                    Boolean resultado = logDetalleAnimal.Instancia.EliminarDetalleAnimal(id);
                    if (resultado)
                    {
                        MessageBox.Show("El detalle del animal fue eliminado.", "Éxito", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        ListarDatos(animal);
                    }
                    else
                    {
                        MessageBox.Show("No se pudo eliminar el detalle del animal.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Ocurrió un error: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void cbxAnimal_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cbxAnimal.SelectedValue != null && cbxAnimal.SelectedIndex >= 0) 
            {
                entAnimal animal = cbxAnimal.SelectedItem as entAnimal;
                ListarDatos(animal.idAnimal); 
            }
        }
        private void ListarDatos(int id)
        {
             dgvDetalleCortes.DataSource = logDetalleAnimal.Instancia.ListarDatos(id);
        }
    }
}

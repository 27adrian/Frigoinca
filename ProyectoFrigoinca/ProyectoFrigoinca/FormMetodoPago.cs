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
    public partial class FormMetodoPago : Form
    {
        public FormMetodoPago()
        {
            InitializeComponent();
            listarMedioPago();
            btnRegistrar.Enabled = false;
            btnModificar.Enabled = false;
            gbxDescripcion.Enabled = false;
            txtId.Enabled = false;
            btnCancelar.Visible = false;
        }
      

        public void listarMedioPago()
        {
            dgvMedPago.DataSource = logMedioPago.Instancia.ListarMedioPago();
        }
        private void btnRegistrar_Click(object sender, EventArgs e)
        {
            try
            {
                // Obtener el valor del campo txtMetodo
                string metodo = txtMetodo.Text;

                // Validar si el campo txtMetodo está vacío y mostrar un mensaje de error si es necesario
                if (string.IsNullOrEmpty(metodo))
                {
                    errorProvider.SetError(txtMetodo, "Por favor añada una descripción en el método.");
                }
                else
                {
                    errorProvider.SetError(txtMetodo, ""); // Limpiar el mensaje de error si el campo no está vacío

                    using (SqlConnection connection = Conexion.Instancia.Conectar())
                    {
                        connection.Open();

                        // Insertar el nuevo Método en la base de datos
                        string insertQuery = "INSERT INTO MEDIO_PAGO (descMedPag) VALUES (@descMedPag)";
                        using (SqlCommand command = new SqlCommand(insertQuery, connection))
                        {
                            command.Parameters.AddWithValue("@descMedPag", metodo);

                            int rowsAffected = command.ExecuteNonQuery();
                            if (rowsAffected > 0)
                            {
                                MessageBox.Show("Método insertado correctamente.");
                            }
                            else
                            {
                                MessageBox.Show("Error al insertar el Método.");
                            }
                        }
                    }

                    btnRegistrar.Enabled = false;
                    gbxDescripcion.Enabled = false;
                    btnCancelar.Visible = false;
                    Limpiar();
                    listarMedioPago();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
        }

        private void Limpiar()
        {
            txtId.Text = "";
            txtMetodo.Text = "";
        }

        private void btnModificar_Click(object sender, EventArgs e)
        {
            try
            {
                // Obtener el valor del campo txtMetodo
                string metodo = txtMetodo.Text.Trim();

                // Validar si el campo txtMetodo está vacío y mostrar un mensaje de error si es necesario
                if (string.IsNullOrEmpty(metodo))
                {
                    errorProvider.SetError(txtMetodo, "Por favor añada una descripción en el método.");
                }
                else
                {
                    errorProvider.SetError(txtMetodo, ""); // Limpiar el mensaje de error si el campo no está vacío

                    entMedioPago p = new entMedioPago();
                    p.idMedPago = int.Parse(txtId.Text.Trim());
                    p.descMedPag = metodo;
                    logMedioPago.Instancia.EditarMedioPag(p);
                    MessageBox.Show("Se modificó la tabla");

                    Limpiar();
                    gbxDescripcion.Enabled = false;
                    btnModificar.Enabled = false;
                    btnCancelar.Visible = false;
                    listarMedioPago();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
        }

        

        private void dgvMedPago_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                if (e.RowIndex >= 0)
                {
                    DataGridViewRow row = dgvMedPago.Rows[e.RowIndex];
                    txtId.Text = row.Cells[0].Value?.ToString();
                    txtMetodo.Text = row.Cells[1].Value?.ToString();                    
                }
            }
            catch { }
           
        }

        private void btnNuevo_Click(object sender, EventArgs e)
        {
            gbxDescripcion.Enabled= true;
            btnRegistrar.Enabled = true;
            btnModificar.Enabled = false;
            btnCancelar.Visible = true;
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            gbxDescripcion.Enabled = true;
            btnRegistrar.Enabled = false;
            btnModificar.Enabled = true;
            btnCancelar.Visible = true;
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            gbxDescripcion.Enabled = false;
            btnRegistrar.Enabled = false;
            btnModificar.Enabled = false;
            btnCancelar.Visible = false;
            Limpiar();
            errorProvider.SetError(txtMetodo, ""); // Limpiar el mensaje de error si el campo no está vacío
        }
    }
}

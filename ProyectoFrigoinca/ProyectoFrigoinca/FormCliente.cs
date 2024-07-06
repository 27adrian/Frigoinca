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
using System.Windows.Forms.VisualStyles;

namespace ProyectoFrigoinca
{    
    public partial class FormCliente : Form
    {
        ApisPeru AP = new ApisPeru();
        public FormCliente()
        {
            InitializeComponent();
            listarCliente();
            listarUbigeo();
            OcultarBotones();
            gbxInformacion.Enabled = false;
            gbxBusqueda.Enabled = true;
            cbxEstadoCli.Checked = true;

            cbmCriterios.Items.Add("Departamento");
            cbmCriterios.Items.Add("Provincia");
            cbmCriterios.Items.Add("Distrito");
            cbmCriterios.Text = "";

        }
        
        public void listarUbigeo()
        {
            dgvUbigeo.DataSource = logUbigeo.Instancia.ListarUbigeo();
        }

        public void listarCliente()
        {
            dgvCliente.DataSource = logCliente.Instancia.ListarCliente();
        }

        public void OcultarBotones()
        {
            btnAgregar.Enabled = false;
            btnModificar.Enabled = false;
            btnLimpiar.Enabled = false;
            btnCancelar.Enabled = false;
        }
        public void VerBotones()
        {
           // btnAgregar.Enabled = false;
            btnModificar.Enabled = true;
            btnLimpiar.Enabled = true;
            btnCancelar.Enabled = true;
        }
        
        private void btnNuevo_Click(object sender, EventArgs e)
        {
            btnAgregar.Enabled = true;
            txtCliente.Enabled = false;
            cbmDocumento.Enabled = false;
            VerBotones();
            gbxInformacion.Enabled = true;
      
        }
        
        private void btnAgregar_Click(object sender, EventArgs e)
        {
            try
            {
                // Obtener los valores de los campos del formulario
                string nombre = txtNombre.Text;
                string documento = txtNroDoc.Text;
                string apellido = txtApellido.Text;
                string contacto = txtContacto.Text;
                string tipoCli = cbmTipoCli.SelectedItem?.ToString();
                string tipoDoc = cbmDocumento.SelectedItem?.ToString();
                bool estadoCheckbox = cbxEstadoCli.Checked;
                string direccion = txtDireccion.Text;

                // Validar que se haya seleccionado un tipo de cliente
                if (tipoCli == null)
                {
                    MessageBox.Show("Seleccione un tipo para el cliente.");
                    return;
                }

                // Validar que se haya seleccionado un tipo de documento
                if (tipoDoc == null)
                {
                    MessageBox.Show("Seleccione un tipo para el documento.");
                    return;
                }

                // Validar que el idUbigeo sea un número válido
                if (!int.TryParse(txtUbigeo.Text, out int idUbigeo))
                {
                    MessageBox.Show("Ingrese un ID de Ubigeo válido.");
                    return;
                }

                // Crear una nueva instancia de entCliente
                entCliente nuevoCliente = new entCliente
                {
                    nombCli = nombre,
                    apellido = apellido,
                    tipoCliente = tipoCli,
                    tipoDoc = tipoDoc,
                    numeroDoc = long.TryParse(documento, out long numeroDoc) ? numeroDoc : 0,
                    idUbigeo = idUbigeo,
                    telefono = long.TryParse(contacto, out long telefono) ? telefono : 0,
                    estado = estadoCheckbox,
                    direccion = direccion,
                    fecha = DateTime.Now
                };

                // Llamar al método de la capa lógica para insertar el cliente
                bool insertado = logCliente.Instancia.InsertarCliente(nuevoCliente);

                if (insertado)
                {
                    MessageBox.Show("Cliente insertado correctamente.");
                }
                else
                {
                    MessageBox.Show("Error al insertar el Cliente.");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
            listarCliente();
            listarUbigeo();
            Limpiar();
            OcultarBotones();
            gbxInformacion.Enabled = false;
        }
       
        
        //Limpiar campos
        public void Limpiar() {
            txtCliente.Text = "";
            txtNombre.Text = "";
            txtApellido.Text = "";            
            cbmTipoCli.Text = "";
            cbmDocumento.Text = "";
            txtNroDoc.Text = "";
            txtNumDoc.Text = "";
            txtUbigeo.Text = "";
            txtContacto.Text = "";
            txtDireccion.Text = "";
            txtBuscar.Text = "";            
            cbmCriterios.Text = "";
            cbxEstadoCli.Checked = false;
        }

        private void dgvUbigeo_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            DataGridViewRow filaActual = dgvUbigeo.Rows[e.RowIndex];
            txtUbigeo.Text = filaActual.Cells[0].Value.ToString();
        }

        private void btnModificar_Click(object sender, EventArgs e)
        {
            try
            {

                entCliente c = new entCliente();
                c.idCli = int.Parse(txtCliente.Text.Trim());
                c.nombCli = txtNombre.Text.Trim();
                c.apellido = txtApellido.Text.Trim();
                c.tipoCliente = cbmTipoCli.Text.Trim();
                c.tipoDoc = cbmDocumento.Text.Trim();
                c.numeroDoc = int.Parse(txtNroDoc.Text.Trim());
                c.idUbigeo = int.Parse(txtUbigeo.Text.Trim());
                c.telefono = int.Parse(txtContacto.Text.Trim());
                c.estado = cbxEstadoCli.Checked;
                c.direccion = txtDireccion.Text.Trim();
                c.fecha = DateTime.Now;
                logCliente.Instancia.Editarcliente(c);
                MessageBox.Show("Cliente correctamente modificado");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error.." + ex);
            }
            listarCliente();
            Limpiar();
            OcultarBotones();
            gbxInformacion.Enabled = false;
        }

        private void dgvCliente_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                if (e.RowIndex >= 0)
                {
                    DataGridViewRow row = dgvCliente.Rows[e.RowIndex];

                    txtCliente.Text = row.Cells[0].Value?.ToString();
                    txtUbigeo.Text = row.Cells[1].Value?.ToString();
                    txtNombre.Text = row.Cells[2].Value?.ToString();
                    txtApellido.Text = row.Cells[3].Value?.ToString();
                    cbxEstadoCli.Checked = Convert.ToBoolean(row.Cells[4].Value);
                    txtNroDoc.Text = row.Cells[5].Value?.ToString();
                    txtContacto.Text = row.Cells[6].Value?.ToString();
                    cbmTipoCli.Text = row.Cells[7].Value?.ToString();
                    cbmDocumento.Text = row.Cells[8].Value?.ToString();
                    txtDireccion.Text = row.Cells[9].Value?.ToString();
                }
            }
            catch { 

            }

        }

        private void dgvUbigeo_CellEnter(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void dgvCliente_CellEnter(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void iconButton1_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            OcultarBotones();
            gbxInformacion.Enabled = false;
            Limpiar();
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            VerBotones();
            gbxInformacion.Enabled = true;
        }

        private void cbmTipoCli_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtNroDoc.Enabled = true;
            txtNroDoc.Clear();
            if (cbmTipoCli.SelectedItem.ToString() == "REGULAR") //si en el combobox elije regular
            {
                cbmDocumento.SelectedIndex = 0;
            }
            else {
                cbmDocumento.SelectedIndex = 1;
            }
        }

        private void cbmDocumento_SelectedIndexChanged(object sender, EventArgs e)
        {
            cbmDocumento.Enabled = false;
            if (cbmDocumento.SelectedItem.ToString() == "DNI") //si es DNI solo ingresara 8 digitos de lo contrario 11 por el RUC
            {
                txtNroDoc.MaxLength = 8;
            }
            else{
                txtNroDoc.MaxLength = 11;
            }
        }

        private void txtNroDoc_TextChanged(object sender, EventArgs e)
        {

        }

        //solo deja entrar numeros
        private void txtNroDoc_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        //solo deja entrar letras
        private void txtNombre_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsLetter(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        //solo deja entrar letras
        private void txtApellido_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsLetter(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        //solo deja entrar numeros
        private void txtContacto_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void txtContacto_TextChanged(object sender, EventArgs e)
        {
            txtContacto.MaxLength = 9;
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            try {
                entCliente c = new entCliente();
                c.numeroDoc = Convert.ToInt64(txtNumDoc.Text.Trim());

                List<entCliente> listaCliente = logCliente.Instancia.BuscarCliente(c);
                if (listaCliente.Count > 0)
                {
                    MostrarInformacionCliente(listaCliente[0]);
                    DataGridViewRow row = BuscarFilaPorNumeroDocumento(txtNumDoc.Text.Trim());
                    if (row != null)
                    {
                        dgvCliente.CurrentCell = row.Cells[0];
                        dgvCliente.Rows[row.Index].Selected = true;
                    }
                    MessageBox.Show("Cliente encontrado.");
                }
                else  {
                    MessageBox.Show("No se encontró ningún Cliente con el número de documento proporcionado.");
                }               
            }
            catch (Exception ex) {
                MessageBox.Show("Error... " + ex.Message);
            }
        }

        private void MostrarInformacionCliente(entCliente Cli)
        {              
            txtCliente.Text = Cli.idCli.ToString();                
            cbmTipoCli.Text = Cli.tipoCliente.ToString();               
            txtNombre.Text = Cli.nombCli.ToString();            
            txtApellido.Text = Cli.apellido.ToString();            
            cbmDocumento.Text = Cli.tipoDoc.ToString();            
            txtNroDoc.Text = Cli.numeroDoc.ToString();            
            txtContacto.Text = Cli.telefono.ToString();            
            cbxEstadoCli.Checked = Cli.estado;            
            txtUbigeo.Text = Cli.idUbigeo.ToString();
            txtDireccion.Text=Cli.direccion.ToString();
        }

        private DataGridViewRow BuscarFilaPorNumeroDocumento(string numeroDoc)
        {
            foreach (DataGridViewRow row in dgvCliente.Rows)
            {
                if (row.Cells["numeroDoc"].Value.ToString() == numeroDoc)
                {
                    return row;
                }
            }
            return null;
        }

        private void txtNumDoc_TextChanged(object sender, EventArgs e)
        {
            
        }

        private void txtNumDoc_KeyPress(object sender, KeyPressEventArgs e)
        {
            
        }

        private void btnAceptar_Click(object sender, EventArgs e)
        {
            consultarCliente();
        }

        private void consultarCliente()
        {
            try
            {
                //---------RUC-----------
                if (txtNroDoc.Text.Length == 11)
                {
                    dynamic respuesta = AP.Get("https://dniruc.apisperu.com/api/v1/ruc/" + txtNroDoc.Text + "?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJlbWFpbCI6Im11bm96cm9uY2FsZGF2aWRhZHJpYW5AZ21haWwuY29tIn0.1Ns7hkbfA5yAWkne3Af8oYqLr7JQXYwormyuoRo7obY");
                    txtNombre.Text = respuesta.razonSocial.ToString();
                    txtDireccion.Text = respuesta.direccion.ToString();
                    txtUbigeo.Text = respuesta.ubigeo.ToString();
                }
                //---------DNI-----------
                else if (txtNroDoc.Text.Length == 8)
                {                 
                    dynamic respuesta = AP.Get("https://dniruc.apisperu.com/api/v1/dni/" + txtNroDoc.Text + "?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJlbWFpbCI6Im11bm96cm9uY2FsZGF2aWRhZHJpYW5AZ21haWwuY29tIn0.1Ns7hkbfA5yAWkne3Af8oYqLr7JQXYwormyuoRo7obY");                   
                    txtNombre.Text = respuesta.nombres.ToString();                                    
                    txtApellido.Text = respuesta.apellidoPaterno.ToString() + " " + respuesta.apellidoMaterno.ToString();
                }
                else
                {
                    MessageBox.Show("No se encontraron datos para el número de documento proporcionado.");
                }

            }
            catch (Exception ex) {

                MessageBox.Show("Error... " + ex.Message);
            }
        }

        private void txtUbigeo_TextChanged(object sender, EventArgs e)
        {

        }

        private void dgvUbigeo_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void btnBuscUbigeo_Click(object sender, EventArgs e)
        {
            // Crear una instancia de la entidad entUbigeo
            entUbigeo ubigeo = new entUbigeo();

            // Obtener el criterio seleccionado en el ComboBox
            string criterioSeleccionado = cbmCriterios.SelectedItem.ToString();

            // Asignar los valores según el criterio seleccionado
            if (criterioSeleccionado == "Departamento")
            {
                ubigeo.departamento = txtBuscar.Text.Trim();
            }
            else if (criterioSeleccionado == "Provincia")
            {
                ubigeo.provincia = txtBuscar.Text.Trim();
            }
            else if (criterioSeleccionado == "Distrito")
            {
                ubigeo.distrito = txtBuscar.Text.Trim();
            }

            // Llamar al método de la capa lógica para buscar Ubigeo
            List<entUbigeo> listaUbigeo = logUbigeo.Instancia.BuscarUbigeo(ubigeo);

            // Asignar los datos obtenidos al DataGridView
            dgvUbigeo.DataSource = listaUbigeo;            
        }

        private void btnDesabilitar_Click(object sender, EventArgs e)
        {
            try
            {
                int clienteId = int.Parse(txtCliente.Text.Trim());

                // Llamar al servicio para deshabilitar el cliente
                bool deshabilitado = logCliente.Instancia.DeshabilitarCliente(clienteId);

                if (deshabilitado)
                {
                    MessageBox.Show("Cliente deshabilitado correctamente.");
                }
                else
                {
                    MessageBox.Show("Error al deshabilitar el cliente. Verifica los datos.");
                }
            }
            catch (FormatException)
            {
                MessageBox.Show("Por favor, ingresa un ID de cliente válido.");
            }
            catch (InvalidOperationException ex)
            {
                MessageBox.Show(ex.Message);
            }
            catch (SqlException ex)
            {
                MessageBox.Show("Error de SQL: " + ex.Message);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
            listarCliente(); // Llamar al método para listar los clientes
        }

        private void iconButton1_Click_1(object sender, EventArgs e)
        {
            
            Limpiar();
        }

        private void iconButton2_Click(object sender, EventArgs e)
        {
            txtBuscar.Text = "";
            txtUbigeo.Text = "";
            cbmCriterios.Text = "";
            listarUbigeo();
        }
    }
}
    


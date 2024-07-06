using CapaDatos;
using CapaEntidad;
using CapaLogica;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ProyectoFrigoinca
{
    public partial class FormTrabajador : Form
    {
        ApisPeru AP = new ApisPeru();
        public FormTrabajador()
        {
            InitializeComponent();
            listarTrabajador();
            listarRoles();
            Departamentos(); //muestra Depat
            Limpiar();
            txtIdTrabajador.Enabled = false;
            btnRegistrar.Enabled = false;
            btnModificar.Enabled = false;
            cbxEstado.Checked = true;            
            btnCancelar.Visible = false;
            gbxTrabajador.Enabled = false;
            gbxUbigeo.Enabled = false;
            txtIdRol.Visible = false;
            gbxDatosSistema.Enabled = false;
            btnEliminar.Enabled = false;
            
            CargarRoles();

            // Agregar opciones al comboBoxCriterio
            cbmCriterios.Items.Add("Rol");
            cbmCriterios.Items.Add("NombreTrab");
            cbmCriterios.Items.Add("FechaRegistro");
            cbmCriterios.Items.Add("numDoc");


            // Configurar el evento SelectedIndexChanged
            cbmCriterios.SelectedIndexChanged += cbmCriterios_SelectedIndexChanged;

            // Configurar los controles inicialmente
            txtBuscartex.Visible = false;
            cbmRolesB.Visible = false;
            dtpFecha.Visible = false;
            txtDocBusq.Visible = false;
        }



        private void label1_Click(object sender, EventArgs e)
        {

        }
        //Listar tabla
        public void listarTrabajador()
        {
            dgvTrabajador.DataSource = logTrabajador.Instancia.ListarTrabajador();
        }
        //Listar roles
        public void listarRoles()
        {
            cbmRol.DataSource = logRol.Instancia.ListarRol();
            cbmRol.DisplayMember = "descripcion";
            cbmRol.ValueMember = "idRol";
        }


        private void btnRegistrar_Click(object sender, EventArgs e)

        {
            try
            {
                // Obtener los valores de los campos del formulario
                string ubigeo = txtUbigeo.Text.ToString();
                int idRol = Convert.ToInt32(cbmRol.SelectedValue);
                string nombre = txtNombre.Text;
                bool estadoCheckbox = cbxEstado.Checked;
                string usuario = txtUsuario.Text;
                string contraseña = txtClave.Text;
                int numDoc = Convert.ToInt32(txtDocumento.Text);

                // Validar que se haya seleccionado una ubicación
                if (string.IsNullOrEmpty(ubigeo))
                {
                    MessageBox.Show("Seleccione una ubicación para el trabajador.");
                    return;
                }

                int idUbigeo;

                using (SqlConnection connection = Conexion.Instancia.Conectar())
                {
                    connection.Open();
                    // Obtener idUbigeo
                    string queryUbigeo = "SELECT idUbigeo FROM UBIGEO WHERE idUbigeo = @idUbigeo";
                    using (SqlCommand command = new SqlCommand(queryUbigeo, connection))
                    {
                        command.Parameters.AddWithValue("@idUbigeo", ubigeo);
                        object resultUbigeo = command.ExecuteScalar();
                        if (resultUbigeo != null)
                        {
                            idUbigeo = Convert.ToInt32(resultUbigeo);
                        }
                        else
                        {
                            MessageBox.Show("Error al obtener la ubigeo.");
                            return;
                        }
                    }
                }

                // Crear una instancia de entTrabajador y asignar los valores
                entTrabajador nuevoTrabajador = new entTrabajador
                {
                    idRol = idRol,
                    idUbigeo = idUbigeo,
                    nombTrab = nombre,
                    estado = estadoCheckbox,
                    usuario = usuario,
                    contraseña = contraseña,
                    fechaRegistro = DateTime.Now,
                    numDoc = numDoc
                };

                // Llamar al método de la capa lógica para insertar el trabajador
                bool trabajadorInsertado = logTrabajador.Instancia.InsertarTrabajador(nuevoTrabajador);

                if (trabajadorInsertado)
                {
                    MessageBox.Show("Trabajador insertado correctamente.");
                }
                else
                {
                    MessageBox.Show("Error al insertar el trabajador.");
                }

                // Limpiar los controles después de la inserción
                cbmProvincia.Items.Clear();
                cbmDistrito.Items.Clear();
                cbmDepartamento.Items.Clear();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
            btnModificar.Enabled = true;
            btnRegistrar.Enabled = false;
            gbxTrabajador.Enabled = false;
            gbxUbigeo.Enabled = false;
            btnCancelar.Visible = false;
            gbxDatosSistema.Enabled = false;            
            listarTrabajador();
            Limpiar();
            Departamentos();
        }

        public void Limpiar()
        {            
            cbmRol.SelectedIndex = -1;
            txtUsuario.Text = "";
            txtClave.Text = "";
            txtIdTrabajador.Text = "";
            txtNombre.Text = "";
            txtUbigeo.Text = "";
            cbxEstado.Checked = false;
        }

        private void iconPictureBox2_Click(object sender, EventArgs e)
        {
            this.Close();
        }



        private void dgvTrabajador_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                if (e.RowIndex >= 0)
                {
                    DataGridViewRow row = dgvTrabajador.Rows[e.RowIndex];

                    txtIdTrabajador.Text = row.Cells[0].Value?.ToString();
                    txtIdRol.Text = row.Cells[1].Value?.ToString();
                    txtUbigeo.Text = row.Cells[2].Value?.ToString();
                    txtNombre.Text = row.Cells[3].Value?.ToString();
                    cbxEstado.Checked = Convert.ToBoolean(row.Cells[4].Value);
                    txtUsuario.Text = row.Cells[5].Value?.ToString();
                    txtClave.Text = row.Cells[6].Value?.ToString();
                    txtDocumento.Text = row.Cells[8].Value?.ToString();
                    if (!string.IsNullOrEmpty(txtIdRol.Text))
                    {
                        int id = Convert.ToInt32(txtIdRol.Text);
                        ObtenerRolporId(id);
                    }
                }
            }
            catch { }            
            // Habilitar el botón de eliminar si el botón de editar no está seleccionado
            bool isEditarSelected = btnEditar.Tag != null && (bool)btnEditar.Tag;
            btnEliminar.Enabled = !isEditarSelected;
            txtClave.PasswordChar = '*';
            btnNuevo.Enabled = false;
            btnEliminar.Enabled = true;
            btnCancelar.Visible = true;
        }

        private void cbmUbigeo_SelectedIndexChanged(object sender, EventArgs e)
        {

        }



        private void cbxEstado_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void cmbDepartamento_SelectedIndexChanged(object sender, EventArgs e)
        {

            string DepartamentoCbm = cbmDepartamento.SelectedItem.ToString();//muestra los depat
            Provincias(DepartamentoCbm); //provincia del departamento seleccionado
        }

        private void Departamentos() //llamar a los Depat desde la bd
        {

            try
            {
                using (SqlConnection connection = Conexion.Instancia.Conectar())
                {
                    connection.Open();
                    string query = "SELECT DISTINCT DEPARTAMENTO FROM UBIGEO ORDER BY DEPARTAMENTO ASC";
                    SqlCommand command = new SqlCommand(query, connection);
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        cbmDepartamento.Items.Add(reader["DEPARTAMENTO"].ToString());
                    }
                    reader.Close();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al cargar los departamentos: " + ex.Message);
            }
        }

        private void Provincias(string DEPARTAMENTO) //llamar a las prov, de los depat respectivos
        {

            cbmProvincia.Items.Clear();
            try
            {
                using (SqlConnection connection = Conexion.Instancia.Conectar())
                {
                    connection.Open();
                    string query = "SELECT DISTINCT PROVINCIA FROM UBIGEO WHERE DEPARTAMENTO = @DEPARTAMENTO ORDER BY PROVINCIA ASC";
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@DEPARTAMENTO", DEPARTAMENTO);
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        cbmProvincia.Items.Add(reader["PROVINCIA"].ToString());
                    }
                    reader.Close();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al cargar las provincias: " + ex.Message);
            }
        }

        private void cbmProvincia_SelectedIndexChanged(object sender, EventArgs e)
        {
            string DepartamentoCbm = cbmDepartamento.SelectedItem.ToString();//muestra los depat
            string ProvCbm = cbmProvincia.SelectedItem.ToString();//muestra los prov cargado de los depat
            Distritos(DepartamentoCbm, ProvCbm);
        }

        private void Distritos(string DEPARTAMENTO, string PROVINCIA) //llama a los distritos, con su respectiva prov y depat
        {
            cbmDistrito.Items.Clear();
            try
            {
                using (SqlConnection connection = Conexion.Instancia.Conectar())
                {
                    connection.Open();
                    string query = "SELECT DISTRITO FROM UBIGEO WHERE DEPARTAMENTO = @DEPARTAMENTO AND PROVINCIA = @PROVINCIA ORDER BY DISTRITO ASC";
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@DEPARTAMENTO", DEPARTAMENTO);
                    command.Parameters.AddWithValue("@PROVINCIA", PROVINCIA);
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        cbmDistrito.Items.Add(reader["DISTRITO"].ToString());
                    }
                    reader.Close();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al cargar los distritos: " + ex.Message);
            }
        }

        private void cbmDistrito_SelectedIndexChanged(object sender, EventArgs e)
        {

            // Aquí puedes obtener el idUbigeo 
            string DepartamentoCbm = cbmDepartamento.SelectedItem.ToString();
            string ProvCbm = cbmProvincia.SelectedItem.ToString();
            string distritoCbm = cbmDistrito.SelectedItem.ToString();

            try
            {
                using (SqlConnection connection = Conexion.Instancia.Conectar())
                {
                    connection.Open();
                    string query = "SELECT idUbigeo FROM UBIGEO WHERE DEPARTAMENTO = @DEPARTAMENTO AND PROVINCIA = @PROVINCIA AND DISTRITO = @DISTRITO";
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@DEPARTAMENTO", DepartamentoCbm);
                    command.Parameters.AddWithValue("@PROVINCIA", ProvCbm);
                    command.Parameters.AddWithValue("@DISTRITO", distritoCbm);
                    object result = command.ExecuteScalar();
                    if (result != null)
                    {
                        txtUbigeo.Text = result.ToString();
                    }

                }
            }

            catch (Exception ex)
            {
                MessageBox.Show("Error al obtener el idUbigeo: " + ex.Message);
            }

        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            btnEliminar.Enabled = false;
            btnNuevo.Enabled = false;
            btnModificar.Enabled = true;
            btnCancelar.Visible = true;
            btnRegistrar.Enabled = false;
            gbxTrabajador.Enabled = true;
            gbxUbigeo.Enabled = true;
            gbxDatosSistema.Enabled = true;
            txtClave.PasswordChar = '\0';


        }

        private void btnModificar_Click(object sender, EventArgs e)
        {
            try
            {
                entTrabajador t = new entTrabajador();
                t.idTrab = int.Parse(txtIdTrabajador.Text.Trim());
                t.idRol = Convert.ToInt32(cbmRol.SelectedValue);
                t.idUbigeo = int.Parse(txtUbigeo.Text.Trim());
                t.nombTrab = txtNombre.Text.Trim();
                t.estado = cbxEstado.Checked;
                t.usuario = txtUsuario.Text.Trim();
                t.contraseña = txtClave.Text.Trim();
                t.fechaRegistro = DateTime.Now;
                t.numDoc = Convert.ToInt32(txtDocumento.Text);
                logTrabajador.Instancia.EditarTrabajador(t);                
                MessageBox.Show("Se actualizo la tabla");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error.." + ex);                
            }
            btnNuevo.Enabled = true;
            btnModificar.Enabled = false;
            gbxTrabajador.Enabled = false;
            gbxUbigeo.Enabled = false;
            btnCancelar.Visible = false;
            gbxDatosSistema.Enabled = false;
            listarTrabajador();
            cbmProvincia.Items.Clear();
            cbmDistrito.Items.Clear();
            cbmDepartamento.Items.Clear();
            Limpiar();
        }


        private void btnNuevo_Click(object sender, EventArgs e)
        {
            dgvTrabajador.Enabled = false;
            btnEditar.Enabled = false;
            btnCancelar.Visible = true;
            btnRegistrar.Enabled = true;
            gbxTrabajador.Enabled = true;
            gbxDatosSistema.Enabled = true;
            gbxUbigeo.Enabled = true;
            btnModificar.Enabled = false;
            txtClave.PasswordChar = '\0';
            cbxEstado.Checked = true;
        }

        private void btnCancelar_Click_1(object sender, EventArgs e)
        {
            Limpiar();
            txtBuscartex.Visible = false;
            cbmRolesB.Visible = false;
            dtpFecha.Visible = false;
            listarTrabajador();
            cbmCriterios.Text = "";

            cbmProvincia.Items.Clear();
            cbmDistrito.Items.Clear();
            cbmDepartamento.Items.Clear();
            gbxTrabajador.Enabled = false;
            gbxUbigeo.Enabled = false;
            btnRegistrar.Enabled = false;
            btnModificar.Enabled = false;
            btnCancelar.Visible = false;
            btnEliminar.Enabled = false;
            gbxDatosSistema.Enabled = false;
            btnEditar.Enabled = true;
            btnNuevo.Enabled = true;
            dgvTrabajador.Enabled = true;
            Departamentos();            
        }
        private void cbmUsuario_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void txtIdRol_TextChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtIdRol.Text))
            {
                int id = Convert.ToInt32(txtIdRol.Text);
                ObtenerRolporId(id);
            }
        }
        private void ObtenerRolporId(int id)
        {
            // Buscar el índice del nombre correspondiente al id en el ComboBox
            int index = cbmRol.FindStringExact(ObtenerRolId(id));

            // Seleccionar el nombre correspondiente en el ComboBox
            if (index != -1)
            {
                cbmRol.SelectedIndex = index;
            }
        }
        private string ObtenerRolId(int id)
        {

            foreach (var rol in logRol.Instancia.ListarRol())
            {
                if (rol.idRol == id)
                {
                    return rol.descripcion;
                }
            }

            return "";
        }

        private void txtUbigeo_TextChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtUbigeo.Text))
            {
                int id = Convert.ToInt32(txtUbigeo.Text);
                ObtenerUbigeoporId(id);
            }
        }
        private void ObtenerUbigeoporId(int id)
        {
            // Obtener los nombres correspondientes al id
            string departamento = ObtenerUbigeoDepartamento(id);
            string provincia = ObtenerUbigeoProvincia(id);
            string distrito = ObtenerUbigeoDistrito(id);

            // Buscar el índice del nombre correspondiente al id en los ComboBox y seleccionar
            int indexDepartamento = cbmDepartamento.FindStringExact(departamento);
            if (indexDepartamento != -1)
            {
                cbmDepartamento.SelectedIndex = indexDepartamento;
            }

            int indexProvincia = cbmProvincia.FindStringExact(provincia);
            if (indexProvincia != -1)
            {
                cbmProvincia.SelectedIndex = indexProvincia;
            }

            int indexDistrito = cbmDistrito.FindStringExact(distrito);
            if (indexDistrito != -1)
            {
                cbmDistrito.SelectedIndex = indexDistrito;
            }
        }

        private string ObtenerUbigeoDepartamento(int id)
        {
            foreach (var ubicacion in logUbigeo.Instancia.ListarUbigeo())
            {
                if (ubicacion.idUbigeo == id)
                {
                    return ubicacion.departamento;
                }
            }
            return "";
        }

        private string ObtenerUbigeoProvincia(int id)
        {
            foreach (var ubicacion in logUbigeo.Instancia.ListarUbigeo())
            {
                if (ubicacion.idUbigeo == id)
                {
                    return ubicacion.provincia;
                }
            }
            return "";
        }

        private string ObtenerUbigeoDistrito(int id)
        {
            foreach (var ubicacion in logUbigeo.Instancia.ListarUbigeo())
            {
                if (ubicacion.idUbigeo == id)
                {
                    return ubicacion.distrito;
                }
            }
            return "";
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            try
            {                
                int idTrabajadorAEliminar = int.Parse(txtIdTrabajador.Text);                               
                Boolean resultado = logTrabajador.Instancia.EliminarTrabajador(idTrabajadorAEliminar);

                if (resultado)
                {
                    MessageBox.Show("El trabajador fue eliminado exitosamente.", "Éxito", MessageBoxButtons.OK, MessageBoxIcon.Information);                    
                    listarTrabajador(); 
                }
                else
                {
                    MessageBox.Show("No se pudo eliminar el trabajador.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Ocurrió un error: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            Limpiar();
            cbmProvincia.Items.Clear();
            cbmDistrito.Items.Clear();
            cbmDepartamento.Items.Clear();
            btnEliminar.Enabled = false;
            btnCancelar.Enabled = false;
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            entTrabajador trabajador = new entTrabajador();

            if (cbmCriterios.SelectedItem.ToString() == "Rol")
            {
                if (cbmRolesB.SelectedValue != null)
                {
                    trabajador.idRol = Convert.ToInt32(cbmRolesB.SelectedValue);
                }
                else
                {
                    MessageBox.Show("Seleccione un rol válido.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
            }
            else if (cbmCriterios.SelectedItem.ToString() == "NombreTrab")
            {
                if (!string.IsNullOrEmpty(txtBuscartex.Text))
                {
                    trabajador.nombTrab = txtBuscartex.Text;
                }
                else
                {
                    MessageBox.Show("Ingrese un nombre para buscar.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
            }
            else if (cbmCriterios.SelectedItem.ToString() == "FechaRegistro")
            {
                // Validar la fecha antes de asignarla
                DateTime fechaSeleccionada = dtpFecha.Value;
                if (fechaSeleccionada < SqlDateTime.MinValue.Value || fechaSeleccionada > SqlDateTime.MaxValue.Value)
                {
                    MessageBox.Show("La fecha seleccionada está fuera del rango admitido.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                trabajador.fechaRegistro = fechaSeleccionada;
            }
            else if (cbmCriterios.SelectedItem.ToString() == "numDoc")
            {
                if (!string.IsNullOrEmpty(txtDocBusq.Text))
                {
                    trabajador.numDoc = Convert.ToInt32(txtDocBusq.Text);
                }
                else
                {
                    MessageBox.Show("Ingrese un numero de Documento para buscar.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
            }
            List<entTrabajador> trabajadores = logTrabajador.Instancia.BuscarTrabajadores(trabajador);
            dgvTrabajador.DataSource = trabajadores;
        }
        private void CargarRoles()
        {
            cbmRolesB.DataSource = logRol.Instancia.ListarRol();
            cbmRolesB.DisplayMember = "descripcion";
            cbmRolesB.ValueMember = "idRol";
        }
        private void cbmCriterios_SelectedIndexChanged(object sender, EventArgs e)
        {
            string criterio = cbmCriterios.SelectedItem.ToString();
            txtBuscartex.Visible = criterio == "NombreTrab";
            cbmRolesB.Visible = criterio == "Rol";
            dtpFecha.Visible = criterio == "FechaRegistro";
            txtDocBusq.Visible = criterio == "numDoc";
        }

        private void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtBuscartex.Visible = false;
            cbmRolesB.Visible = false;
            dtpFecha.Visible = false;   
            listarTrabajador();
            cbmCriterios.Text = "";
        }

        private void btnBuscarDoc_Click(object sender, EventArgs e)
        {
            consultar();
        }
        private void consultar()
        {
            try
            {
                //---------DNI-----------
                if (txtDocumento.Text.Length == 8)
                {
                    dynamic respuesta = AP.Get("https://dniruc.apisperu.com/api/v1/dni/" + txtDocumento.Text + "?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJlbWFpbCI6Im11bm96cm9uY2FsZGF2aWRhZHJpYW5AZ21haWwuY29tIn0.1Ns7hkbfA5yAWkne3Af8oYqLr7JQXYwormyuoRo7obY");
                    txtNombre.Text = respuesta.nombres.ToString() + " " + respuesta.apellidoPaterno.ToString();
                }
                else
                {
                    MessageBox.Show("No se encontraron datos para el número de documento proporcionado.");
                }

            }
            catch (Exception ex)
            {

                MessageBox.Show("Error... " + ex.Message);
            }
        }

        private void txtDocumento_TextChanged(object sender, EventArgs e)
        {
            txtDocumento.MaxLength = 8;
        }

        private void txtDocumento_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void txtDocBusq_TextChanged(object sender, EventArgs e)
        {
            txtDocumento.MaxLength = 8;

        }

        private void txtDocBusq_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar))
            {
                e.Handled = true;
            }
        }
    }
}

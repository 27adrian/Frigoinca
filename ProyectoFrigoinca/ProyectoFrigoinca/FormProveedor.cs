using CapaDatos;
using CapaEntidad;
using CapaLogica;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Diagnostics.Contracts;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml.Linq;



namespace ProyectoFrigoinca
{
    public partial class FormProveedor : Form
    {
        ApisPeru AP = new ApisPeru();
        public FormProveedor()
        {
            InitializeComponent();
            LlenarDepartamentos();
            LlenarDatosCmboxAnimal();
            ListarProveedor();

            gbxBuscar.Enabled = false;
            gbxAnimal.Enabled = false;
            gbxProveedor.Enabled = false;
            gbxUbigeo.Enabled = false;

            cbxProvincia.Enabled = false;
            cbxDistrito.Enabled = false;

            btnRegistrar.Enabled = false;
            btnModificar.Enabled = false;
            btnDeshabilitar.Enabled = false;
            btnCancelar.Enabled = false;

            txtIdPro.Enabled = false;
            cbxEstado.Checked = true;

            dgvProveedor.Enabled = false;

            cbmEspecie.SelectedIndex = -1;

            //// Agregar opciones al comboBoxCriterio
            cbmCriterios.Items.Add("NombreProveedor");
            cbmCriterios.Items.Add("Ruc");
            cbmCriterios.Items.Add("Fecha");

            //// Configurar los controles inicialmente
            cbmCriterios.SelectedItem = "NombreProveedor";
        }
        private void ListarProveedor()
        {
            dgvProveedor.DataSource = logProveedor.Instancia.ListarProveedor();
        }
        private void LlenarDatosCmboxAnimal()
        {
            cbmEspecie.DataSource = logAnimal.Instancia.ListarAnimal();
            cbmEspecie.DisplayMember = "especie";
            cbmEspecie.ValueMember = "idAnimal";
        }
        private void cbmCriterios_SelectedIndexChanged(object sender, EventArgs e)
        {
            string criterio = cbmCriterios.SelectedItem.ToString();
            if (cbmCriterios.SelectedItem.ToString() == "NombreProveedor")
            {
                txtBuscar2.Visible = true;
                txtBuscartex.Visible = false;
                dtpFecha.Visible = false;
            }
            if (cbmCriterios.SelectedItem.ToString() == "Ruc")
            {
                txtBuscar2.Visible = false;
                txtBuscartex.Visible = true;
                dtpFecha.Visible = false;
            }
            if (cbmCriterios.SelectedItem.ToString() == "Fecha")
            {
                txtBuscar2.Visible = false;
                txtBuscartex.Visible = false;
                dtpFecha.Visible = true;
            }

        }
        private void btnNuevo_Click(object sender, EventArgs e)
        {
            LlenarDepartamentos();
            gbxAnimal.Enabled = true;
            gbxProveedor.Enabled = true;
            gbxBuscar.Enabled = false;
            gbxUbigeo.Enabled = false;

            cbxEstado.Checked = true;

            btnCancelar.Enabled = true;
            btnRegistrar.Enabled = true;
            btnModificar.Enabled = false;
            btnDeshabilitar.Enabled = false;

            btnEditar.Enabled = false;
            btnBusqueda.Enabled = false;

            dgvProveedor.Enabled = false;
        }
        private void btnCancelar_Click_1(object sender, EventArgs e)
        {
            gbxProveedor.Enabled = false;
            gbxAnimal.Enabled = false;
            gbxUbigeo.Enabled = false;
            gbxBuscar.Enabled = false;

            cbxProvincia.Items.Clear();
            cbxDistrito.Items.Clear();
            cbxDepartamento.Items.Clear();
            btnRegistrar.Enabled = false;
            btnModificar.Enabled = false;
            btnDeshabilitar.Enabled = false;
            btnCancelar.Enabled = false;

            btnEditar.Enabled = true;
            btnBusqueda.Enabled = true;
            btnNuevo.Enabled = true;

            dgvProveedor.Enabled = false;
            LlenarDepartamentos();
            Limpiar();
        }
        private void Limpiar()
        {
            txtIdPro.Text = "";
            txtNombre.Text = "";
            txtRuc.Text = "";
            txtUbigeo.Text = "";
            cbxEstado.Checked = true; // Deselecciona el CheckBox cbxEstado
            txtTelefono.Text = "";
            txtDireccion.Text = "";

            txtBuscartex.Text = "";
            txtBuscar2.Text = "";

            cbmEspecie.SelectedIndex = -1; // Limpiar la selección en el ComboBox

            txtUbiId.Text = "";
        }
        private void btnRegistrar_Click(object sender, EventArgs e)
        {

            try
            {
                entProveedor prov = new entProveedor();
                // Obtener los valores de los campos del formulario
                prov.nombProv = txtNombre.Text;
                prov.ruc = Convert.ToInt64(txtRuc.Text);
                prov.idUbigeo = Convert.ToInt32(txtUbigeo.Text);
                prov.estado = cbxEstado.Checked;
                prov.telefono = Convert.ToInt64(txtTelefono.Text);
                prov.fecha = DateTime.Now;
                prov.direccion = txtDireccion.Text;
                prov.especie = cbmEspecie.SelectedValue.ToString();
                if (logProveedor.Instancia.Insertarproveedor(prov))
                {
                    MessageBox.Show("Ingreso correcto de datos.", "CONFIRMACION INGRESO", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                cbxProvincia.Items.Clear();
                cbxDistrito.Items.Clear();
                cbxDepartamento.Items.Clear();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
            Limpiar();
            ListarProveedor();
            btnEditar.Enabled = true;
            btnBusqueda.Enabled = true;

            btnModificar.Enabled = false;
            btnRegistrar.Enabled = false;
            btnCancelar.Enabled = false;
            btnDeshabilitar.Enabled = false;

            gbxAnimal.Enabled = false;
            gbxProveedor.Enabled = false;
            gbxBuscar.Enabled = false;
            gbxUbigeo.Enabled = false;
            LlenarDepartamentos();
        }
        private void btnEditar_Click(object sender, EventArgs e)
        {
            LlenarDepartamentos();
            gbxProveedor.Enabled = true;
            gbxAnimal.Enabled = true;
            gbxBuscar.Enabled = false;
            gbxUbigeo.Enabled = false;

            cbxEstado.Checked = true;

            btnRegistrar.Enabled = false;
            btnModificar.Enabled = true;
            btnDeshabilitar.Enabled = true;
            btnCancelar.Enabled = true;

            btnNuevo.Enabled = false;
            btnBusqueda.Enabled = true;

            dgvProveedor.Enabled = true;
        }
        private void dgvProveedor_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                if (e.RowIndex >= 0)
                {
                    DataGridViewRow row = dgvProveedor.Rows[e.RowIndex];

                    txtIdPro.Text = row.Cells[0].Value?.ToString();
                    txtNombre.Text = row.Cells[3].Value?.ToString();
                    txtRuc.Text = row.Cells[8].Value?.ToString();
                    txtUbigeo.Text = row.Cells[2].Value?.ToString();
                    txtTelefono.Text = row.Cells[7].Value?.ToString();
                    txtDireccion.Text = row.Cells[6].Value?.ToString();
                    cbmEspecie.Text = row.Cells[1].Value?.ToString();
                    cbxEstado.Checked = Convert.ToBoolean(row.Cells[4].Value);
                }
            }
            catch { }
        }
        private void btnDeshabilitar_Click(object sender, EventArgs e)
        {
            try
            {
                int idProv = Convert.ToInt32(txtIdPro.Text);

                // Llama al método de la capa lógica para deshabilitar el proveedor
                bool resultado = logProveedor.Instancia.DeshabilitarProveedor(idProv);
                if (resultado)
                {
                    MessageBox.Show("Proveedor deshabilitado exitosamente.", "Exito", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                        MessageBox.Show("El proveedor ya está deshabilitado.", "Información", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            catch (Exception ex)
            {
                // Muestra un mensaje de error específico en caso de que ocurra una excepción
                MessageBox.Show("Ocurrió un error al deshabilitar el proveedor: " + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            ListarProveedor();
            Limpiar();

            gbxProveedor.Enabled = false;
            gbxAnimal.Enabled = false;
            gbxUbigeo.Enabled = false;
            gbxBuscar.Enabled = false;

            btnRegistrar.Enabled = false;
            btnModificar.Enabled = false;
            btnDeshabilitar.Enabled = false;
            btnCancelar.Enabled = false;

            btnEditar.Enabled = true;
            btnBusqueda.Enabled = true;
            btnNuevo.Enabled = true;

            dgvProveedor.Enabled = false;
        }
        private void btnModificar_Click(object sender, EventArgs e)
        {
            try
            {
                entProveedor p = new entProveedor();
                p.idProv = int.Parse(txtIdPro.Text.Trim());
                p.nombProv = txtNombre.Text.Trim();
                p.ruc = Int64.Parse(txtRuc.Text.Trim());
                p.idUbigeo = int.Parse(txtUbigeo.Text.Trim());
                p.estado = cbxEstado.Checked;
                p.telefono = Int64.Parse(txtTelefono.Text.Trim());
                p.direccion = txtDireccion.Text.Trim();
                p.especie = cbmEspecie.SelectedValue?.ToString()?.Trim();
                DateTime d = DateTime.Now;
                p.fecha = d.Date;
                logProveedor.Instancia.EditarProveedor(p);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error.." + ex);
            }
            Limpiar();
            ListarProveedor();

            btnNuevo.Enabled = true;
            btnBusqueda.Enabled = true;

            btnModificar.Enabled = false;
            btnRegistrar.Enabled = false;
            btnCancelar.Enabled = false;
            btnDeshabilitar.Enabled = false;

            gbxAnimal.Enabled = false;
            gbxProveedor.Enabled = false;
            gbxBuscar.Enabled = false;
            gbxUbigeo.Enabled = false;
            cbxProvincia.Items.Clear();
            cbxDistrito.Items.Clear();
            cbxDepartamento.Items.Clear();

            dgvProveedor.Enabled = false;
        }
        private void btnBusqueda_Click(object sender, EventArgs e)
        {
            if(btnNuevo.Enabled == false) gbxBuscar.Enabled = true;
            else
            {
                gbxProveedor.Enabled = false;
                gbxBuscar.Enabled = true;
                gbxAnimal.Enabled = false;
                gbxUbigeo.Enabled = false;

                btnNuevo.Enabled = false;
                btnModificar.Enabled = false;
                btnDeshabilitar.Enabled = false;
                btnCancelar.Enabled = true;
            }
        }
        private void btnUbigeo_Click(object sender, EventArgs e)
        {
            gbxUbigeo.Enabled = true;
        }
        private void cbmAnimal_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        private void btnBuscar_Click(object sender, EventArgs e)
        {
            entProveedor proveedor = new entProveedor();
            dgvProveedor.Enabled = true;
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
        private void btnLimpiar_Click(object sender, EventArgs e)
        {
            ListarProveedor();
            txtBuscartex.Text = "";
            txtBuscar2.Text = "";            
            cbmCriterios.Text = "";
        }
        //////////////
        ///FABRIZIO///
        //////////////
        private void iconButton1_Click(object sender, EventArgs e)
        {
            try
            {
                //    cbxDistrito.Enabled = true;
                //    cbxProvincia.Enabled = true;
                entUbigeo ubi = new entUbigeo();
                ubi.idUbigeo = int.Parse(txtUbiId.Text.Trim());
                List<entUbigeo> ListaUbigeo = logUbigeo.Instancia.BuscarIdUbigeo(ubi);

                if (ListaUbigeo.Count > 0)
                {
                    cbxDistrito.Enabled = true;
                    cbxProvincia.Enabled = true;
                    cbxDepartamento.Text = ListaUbigeo[0].departamento;
                    cbxProvincia.Text = ListaUbigeo[0].provincia;
                    cbxDistrito.Text = ListaUbigeo[0].distrito;
                    cbxDistrito.Enabled = false;
                    cbxProvincia.Enabled = false;
                    txtUbigeo.Text = txtUbigeo.Text;
                }
                else
                {
                    MessageBox.Show("No se encontró ningún ubigeo con el id proporcionado.");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error.. " + ex.Message);
            }
        }
        private void LlenarDepartamentos()
        {
            List<string> departamentos = logUbigeo.Instancia.LlenarDepartamentos();
            cbxDepartamento.Items.Clear(); // Limpiar el ComboBox antes de llenarlo

            foreach (string departamento in departamentos)
            {
                cbxDepartamento.Items.Add(departamento);
            }
        }
        private void cbxDepartamento_SelectedIndexChanged(object sender, EventArgs e)
        {
            cbxProvincia.Enabled = true;
            txtUbiId.Text = "";
            List<string> provincias = logUbigeo.Instancia.LlenarProvincia(cbxDepartamento.Text.Trim());
            cbxProvincia.Items.Clear(); // Limpiar el ComboBox antes de llenarlo

            foreach (string provincia in provincias)
            {
                cbxProvincia.Items.Add(provincia);
            }
        }
        private void cbxProvincia_SelectedIndexChanged(object sender, EventArgs e)
        {
            cbxDistrito.Enabled = true;
            txtUbiId.Text = "";
            List<string> distritos = logUbigeo.Instancia.LlenarDistrito(cbxProvincia.Text.Trim());
            cbxDistrito.Items.Clear(); // Limpiar el ComboBox antes de llenarlo

            foreach (string distrito in distritos)
            {
                cbxDistrito.Items.Add(distrito);
            }
        }
        private void cbxDistrito_SelectedIndexChanged(object sender, EventArgs e)
        {
            entUbigeo ubi = new entUbigeo();
            ubi.departamento = cbxDepartamento.Text.Trim();
            ubi.provincia = cbxProvincia.Text.Trim();
            ubi.distrito = cbxDistrito.Text.Trim();

            int id = logUbigeo.Instancia.ObtenerUbigeo(ubi);
            txtUbiId.Text = id.ToString();
            txtUbigeo.Text = txtUbiId.Text;
        }

        private void iconButton2_Click(object sender, EventArgs e)
        {
            consultarProveedor();
        }
        private void consultarProveedor()
        {
            //ruc del proveedor
            try
            {
                if (txtRuc.Text.Length == 11)
                {
                    dynamic respuesta = AP.Get("https://dniruc.apisperu.com/api/v1/ruc/" + txtRuc.Text + "?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJlbWFpbCI6Im11bm96cm9uY2FsZGF2aWRhZHJpYW5AZ21haWwuY29tIn0.1Ns7hkbfA5yAWkne3Af8oYqLr7JQXYwormyuoRo7obY");
                    txtNombre.Text = respuesta.razonSocial.ToString();
                    txtDireccion.Text = respuesta.direccion.ToString();
                    txtUbigeo.Text = respuesta.ubigeo.ToString();
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show("Error... " + ex.Message);
            }
        }

        private void txtTelefono_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void txtTelefono_TextChanged(object sender, EventArgs e)
        {
            txtTelefono.MaxLength = 9;
        }
    }
}
    


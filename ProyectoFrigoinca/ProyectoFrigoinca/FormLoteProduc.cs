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
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace ProyectoFrigoinca
{
    public partial class FormLoteProduc : Form
    {
        public FormLoteProduc()
        {
            InitializeComponent();
            ListarLoteProducto();
            Ocultar();
                        
            txtTipoAnimal.TextChanged += new EventHandler(OnInputChanged);
            cbmCorte.SelectedIndexChanged += new EventHandler(OnInputChanged);
            Limpiar();
        }


        private void Ocultar()
        {
            txtIdMP.Enabled = false;
            dgvLoteProducto.Enabled = false;
            btnCancelar.Visible = false;           
            gbxDescripcion.Enabled = false;
            gbxCorte.Enabled = false;
            txtIdCorte.Visible = false;
            txtTipoAnimal.Enabled = false;
            gbxMateria.Enabled = false;

            txtCantidad.Enabled = false;
            txtDescripcionMP.Enabled = false;
        }

        public void ListarLoteProducto()
        {
            dgvLoteProducto.DataSource = logLoteProducto.Instancia.ListarLoteProducto();
        }
                       
        public void Limpiar()
        {
            txtTipoAnimal.Text = "";
            txtIdMP.Text = "";
            txtDescripcionMP.Text = "";
            txtDescripcion.Text = "";
            txtIdCorte.Text = "";
            txtPrecioXU.Text = "";
            txtStockLot.Text = "";
            txtCantidad.Text = "";
        }
        private void btnRegistrar_Click(object sender, EventArgs e)
        {
           
            int idDetAnim = Convert.ToInt32(txtIdCorte.Text);
            long idIngresoMP = Convert.ToInt64(txtIdMP.Text);
            string descripcion = txtDescripcion.Text;
            int Stock = Convert.ToInt32(txtStockLot.Text);
            decimal precioXunidad = Convert.ToDecimal(txtPrecioXU.Text);

            // Crear instancia de Inventario a partir de los campos del formulario
            entDetalleInv inventario = new entDetalleInv
            {
                Stock = Stock,
                FechaRegistro = DateTime.Now,
                PrecioXunidad = precioXunidad,
                Descripcion = descripcion,
            };
            // Crear instancia de LoteProducto
            entDetalleLote loteProducto = new entDetalleLote
            {
                IdDetAnim = idDetAnim, // Asignar los valores correspondientes
                IdIngresoMP = idIngresoMP,
                Descripcion = descripcion,
                stock = Stock,
                fechaRegistro = DateTime.Now,
            };

            // Registrar inventario y lote
            try
            {

                logDetalleInv.Instancia.RegisterInventarioYLot(inventario, loteProducto);
                MessageBox.Show("Inventario y lote registrados con éxito.");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al registrar el inventario y lote: " + ex.Message);
            }
            btnNuevo.Enabled = true;            
            btnRegistrar.Enabled = false;
            gbxDescripcion.Enabled = false;
            dgvLoteProducto.Enabled = true;
            gbxCorte.Enabled = false;
            btnCancelar.Visible = false;

            Limpiar();
            ListarLoteProducto();
        }


        private void AbrirForm()
        {
        }


        private void btnNuevo_Click_1(object sender, EventArgs e)
        {
            dgvLoteProducto.Enabled = false;
           
            gbxDescripcion.Enabled = true;            
            btnRegistrar.Enabled = true;
           
            btnCancelar.Visible = true;
            gbxMateria.Enabled = true;

        }

        private void btnBuscar_Click_1(object sender, EventArgs e)
        {
            AbrirForm();
        }

       

        private void btnCancelar_Click_1(object sender, EventArgs e)
        {

            gbxMateria.Enabled = false;
            btnNuevo.Enabled = true;
           
            gbxDescripcion.Enabled = false;
            gbxCorte.Enabled = false;
            btnRegistrar.Enabled = false;
            
            btnCancelar.Visible = false;
            dgvLoteProducto.Enabled = true;
            gbxMateria.Enabled = false;
            Limpiar();
        }

        private void txtTipoCorte_TextChanged(object sender, EventArgs e)
        {

        }

        private void BuscarCorteAnimalPorTipo(string tipoCorte)
        {

        }



        private void dgvLoteProducto_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }

        private void btnMateriaPrima_Click(object sender, EventArgs e)
        {
            string descripcion = txtTipoAnimal.Text;
            using (FormBuscarMatePri formBuscarM = new FormBuscarMatePri(descripcion))
            {
                if (formBuscarM.ShowDialog() == DialogResult.OK)
                {
                    txtIdMP.Text = formBuscarM.idMateria;
                    txtTipoAnimal.Text = formBuscarM.especie;
                    txtDescripcionMP.Text = formBuscarM.especie;
                    txtCantidad.Text = formBuscarM.cantidad;
                }
            }
        }

        private void txtTipoAnimal_TextChanged(object sender, EventArgs e)
        {

            string especie = txtTipoAnimal.Text;
            if (!string.IsNullOrEmpty(especie))
            {
                LlenarComboBoxCortes(especie);
            }
            else
            {
                cbmCorte.Items.Clear();
                txtDescripcion.Clear();
            }

            gbxMateria.Enabled = true;
        }

        private void LlenarComboBoxCortes(string especie)
        {
            try
            {
                List<enDetalleAnimalInfo> cortes = logDetalleAnimal.Instancia.ObtenerCortesPorEspecie(especie);
                cbmCorte.Items.Clear();
                foreach (var corte in cortes)
                {
                    cbmCorte.Items.Add(new { Id = corte.idDetAmim, Descripcion = corte.descCorteAnim });
                }

                cbmCorte.DisplayMember = "Descripcion";
                cbmCorte.ValueMember = "Id";
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
        }

        private void ActualizarDescripcion()
        {
            string especie = txtTipoAnimal.Text;
            if (cbmCorte.SelectedItem != null)
            {
                var corte = (dynamic)cbmCorte.SelectedItem; // Usamos dynamic para acceder a las propiedades Id y Descripcion
                string descripcionCorte = corte.Descripcion;
                txtDescripcion.Text = descripcionCorte + " de " + especie;
            }
        }

        private void cbmCorte_SelectedIndexChanged(object sender, EventArgs e)
        {
            ActualizarDescripcion();
        }

        private void OnInputChanged(object sender, EventArgs e)
        {
            string tipoAnimal = txtTipoAnimal.Text;
            var selectedItem = cbmCorte.SelectedItem;
            string tipoCorte = selectedItem != null ? ((dynamic)selectedItem).Descripcion : null;

            Console.WriteLine($"Animal: {tipoAnimal}, Corte: {tipoCorte}");

            if (string.IsNullOrWhiteSpace(tipoAnimal) || string.IsNullOrWhiteSpace(tipoCorte))
            {
                // Si algún campo está vacío, limpiamos el contenido del txtIdCorte
                txtIdCorte.Text = string.Empty;
                return;
            }

            try
            {
                int? idDetAnim = logDetalleAnimal.Instancia.BuscarIdDetalleAnimal(tipoAnimal, tipoCorte);
                if (idDetAnim.HasValue)
                {
                    txtIdCorte.Text = idDetAnim.Value.ToString();
                }
                else
                {
                    txtIdCorte.Text = string.Empty;
                }
            }
            catch (Exception ex)
            {
                // Manejo de excepciones
                MessageBox.Show("Error al buscar en la base de datos: " + ex.Message);
            }
        }

        private void txtDescripcionMP_TextChanged(object sender, EventArgs e)
        {
            gbxCorte.Enabled = true;
        }

        private void txtDescripcion_TextChanged(object sender, EventArgs e)
        {
            string descripcion = txtDescripcion.Text;

            if (!string.IsNullOrWhiteSpace(descripcion))
            {
                // Llamar al método para verificar la descripción en la base de datos
                Tuple<bool, decimal?> resultado = logInventario.Instancia.VerificarDescripcion(descripcion);

                bool exists = resultado.Item1;
                decimal? precioPorUnidad = resultado.Item2;

                if (exists)
                {
                    // Si la descripción existe, deshabilitar el campo de precio y mostrar el precio si está disponible
                    lbPrecio.Enabled = false;
                    txtPrecioXU.Enabled = false;

                    if (precioPorUnidad.HasValue)
                    {
                        txtPrecioXU.Text = precioPorUnidad.Value.ToString(); // Mostrar el precio por unidad
                    }
                    else
                    {
                        txtPrecioXU.Text = string.Empty; // Limpiar el campo si el precio no está disponible
                    }
                }
                else
                {
                    // Si no existe la descripción, habilitar el campo de precio
                    txtPrecioXU.Enabled = true;
                    lbPrecio.Enabled = true;
                    txtPrecioXU.Text = string.Empty; // Limpiar el campo de precio
                }
            }
            else
            {
                // Si el texto está vacío, habilitar el campo de precio
                txtPrecioXU.Enabled = true;
                lbPrecio.Enabled = true;
                txtPrecioXU.Text = string.Empty; // Limpiar el campo de precio
            }
        }
    }
}

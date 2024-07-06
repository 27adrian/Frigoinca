using FontAwesome.Sharp;
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
    public partial class FormInicio : Form
    {
        private string rolUsuario;
        public FormInicio(string rol)
        {
            InitializeComponent();

            rolUsuario = rol;
            ConfigurarMenus();

            lblUsuario.Text = (string)this.Tag;
            Timer timer = new Timer();
            timer.Interval = 1000;
            timer.Tick += Timer_Tick;
            timer.Start();
        }

        private void ConfigurarMenus()
        {
            // Ocultar todos los menús por defecto
            menuEncargado.Visible = false;
            menuCliente.Visible = false;
            menuProveedor.Visible = false;
            menuCompra.Visible = false;
            requerimientoToolStripMenuItem.Visible = false;
            ordenCompraToolStripMenuItem.Visible = false;
            materiaPrimaToolStripMenuItem.Visible = false;
            menuVenta.Visible = false;
            menuInventario.Visible = false;
            inventarioToolStripMenuItem.Visible = false;
            loteProductoToolStripMenuItem.Visible = false;
            corteToolStripMenuItem1.Visible = false;
            animalToolStripMenuItem.Visible = false;
            detalleDeCortesToolStripMenuItem.Visible = false;
            menuMetodoPago.Visible = false;
            menuReportes.Visible = false;
            ventasToolStripMenuItem.Visible = false;
            comprasToolStripMenuItem.Visible = false;
            menuContacto.Visible = false;
            // etc.

            // Mostrar menús basados en el rol
            switch (rolUsuario)
            {
                case "Administrador":
                    menuEncargado.Visible = true;
                    menuCliente.Visible = true;
                    menuProveedor.Visible = true;
                    menuCompra.Visible = true;
                    requerimientoToolStripMenuItem.Visible = true;
                    ordenCompraToolStripMenuItem.Visible = true;
                    materiaPrimaToolStripMenuItem.Visible = true;
                    menuVenta.Visible = true;
                    menuInventario.Visible = true;
                    inventarioToolStripMenuItem.Visible = true;
                    loteProductoToolStripMenuItem.Visible = true;
                    corteToolStripMenuItem1.Visible = true;
                    animalToolStripMenuItem.Visible = true;
                    detalleDeCortesToolStripMenuItem.Visible = true;
                    menuMetodoPago.Visible = true;
                    menuReportes.Visible = true;
                    ventasToolStripMenuItem.Visible = true;
                    comprasToolStripMenuItem.Visible = true;
                    menuContacto.Visible = true;
                    // etc.
                    break;
                case "Jefe de almacen":
                    menuCompra.Visible = true;
                    requerimientoToolStripMenuItem.Visible = true;
                    menuInventario.Visible = true;
                    inventarioToolStripMenuItem.Visible = true;
                    loteProductoToolStripMenuItem.Visible = true;
                    corteToolStripMenuItem1.Visible = true;
                    animalToolStripMenuItem.Visible = true;
                    detalleDeCortesToolStripMenuItem.Visible = true;
                    menuContacto.Visible = true;
                    // etc.
                    break;
                
                case "Jefe de compras":
                    menuProveedor.Visible = true;
                    menuCompra.Visible = true;
                    ordenCompraToolStripMenuItem.Visible = true;
                    materiaPrimaToolStripMenuItem.Visible = true;
                    menuReportes.Visible = true;
                    comprasToolStripMenuItem.Visible = true;
                    menuContacto.Visible = true;
                    break;
                case "Jefe de ventas":
                    menuCliente.Visible = true;
                    menuMetodoPago.Visible = true;
                    menuReportes.Visible = true;
                    ventasToolStripMenuItem.Visible = true;
                    menuContacto.Visible = true;
                    break;
                case "Vendedor":
                    menuCliente.Visible = true;
                    menuVenta.Visible = true;
                    menuContacto.Visible = true;
                    break;
            }
        }

        public void MostrarUsuarioLogeado(string usuario)
        {
            lblUsuario.Text = usuario;
        }
        public static IconMenuItem MenuActivo = null;
        public static Form FormularioActivo = null;

        private void Timer_Tick(object sender, EventArgs e)
        {
            // Actualiza la etiqueta con la fecha y hora actuales
            lbfecha.Text = DateTime.Now.ToString();
        }
        // Este método se utiliza para abrir un formulario dentro de un contenedor específico
        private void AbrirFormulario(IconMenuItem menu, Form formulario)
        {
            // Si hay un menú activo, cambiar su color de fondo a blanco
            if (MenuActivo != null)
            {
                MenuActivo.BackColor = Color.White;
            }
            // Cambiar el color de fondo del menú actual al color seleccionado (gris)
            menu.BackColor = Color.Silver;
            MenuActivo = menu;
            // Si hay un formulario activo, cerrarlo
            if (FormularioActivo != null)
            {
                FormularioActivo.Close();
            }
            // Asignar el formulario actual y ajustar su configuración
            FormularioActivo = formulario;
            formulario.TopLevel = false;
            formulario.FormBorderStyle = FormBorderStyle.None;
            formulario.Dock = DockStyle.Fill;
            formulario.BackColor = Color.Tan;

            // Agregar el formulario al contenedor
            contenedor.Controls.Add(formulario);
            formulario.Show();
        }

        private void iconMenuItem4_Click(object sender, EventArgs e)
        {
            // Si hay un formulario activo, cerrarlo
            if (FormularioActivo != null)
            {
                FormularioActivo.Close();
            }
            FormMetodoPago Pago = new FormMetodoPago();
            Pago.Show();
        }

        private void menuAfiliados_Click(object sender, EventArgs e)
        {
            AbrirFormulario(menuCliente, new FormCliente());
        }

        
        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void iconPictureBox1_Click(object sender, EventArgs e)
        {
            // Mostrar un cuadro de diálogo de confirmación
            DialogResult dialogResult = MessageBox.Show("¿Estás seguro de que quieres salir?", "Confirmacion", MessageBoxButtons.YesNo);
            // Verificar la respuesta del usuario
            if (dialogResult == DialogResult.Yes)
            {
                MessageBox.Show("Gracias por su visita");                

                Application.Exit();
            }
        }

        private void lbfecha_Click(object sender, EventArgs e)
        {

        }

       

        private void menuEncargado_Click(object sender, EventArgs e)
        {
            AbrirFormulario(menuEncargado, new FormTrabajador());
            
        }

        private void iconPictureBox3_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void submenu3Registrar_Click(object sender, EventArgs e)
        {
            
        }

        private void menuProveedor_Click(object sender, EventArgs e)
        {
            AbrirFormulario(menuProveedor, new FormProveedor());
        }

        private void materiaPrimaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            // Si hay un formulario activo, cerrarlo
            if (FormularioActivo != null)
            {
                FormularioActivo.Close();
            }
            FormMateriaPri compra = new FormMateriaPri();
            compra.Show();
        }

        private void productoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
        }

        private void menuVenta_Click(object sender, EventArgs e)
        {
            AbrirFormulario(menuVenta, new txtCli());
        }

        private void menuCompra_Click(object sender, EventArgs e)
        {

        }

        private void corteToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
        }

        private void iconMenuItem1_Click(object sender, EventArgs e)
        {

        }

        private void corteToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            // Si hay un formulario activo, cerrarlo
            if (FormularioActivo != null)
            {
                FormularioActivo.Close();
            }
            FormCorte Corte = new FormCorte();
            Corte.Show();
        }

        private void productoToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            
        }

        private void loteProductoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            AbrirFormulario(menuInventario, new FormLoteProduc());
        }

        private void ordenCompraToolStripMenuItem_Click(object sender, EventArgs e)
        {
            AbrirFormulario(menuCompra, new FormCompra());
        }

        private void inventarioToolStripMenuItem_Click(object sender, EventArgs e)
        {
            AbrirFormulario(menuInventario, new FormInventario());            
        }

        private void requerimientoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            // Si hay un formulario activo, cerrarlo
            if (FormularioActivo != null)
            {
                FormularioActivo.Close();
            }
            FormRqCompra RqCompra = new FormRqCompra();
            RqCompra.Show();
        }

        

        private void ventasToolStripMenuItem_Click_1(object sender, EventArgs e)
        {
            AbrirFormulario(menuInventario, new FormReporteVentas());
            
        }

        private void comprasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            AbrirFormulario(menuCompra, new FormReporteCompra());
            
        }

        private void menuReportes_Click(object sender, EventArgs e)
        {

        }

        private void animalToolStripMenuItem_Click(object sender, EventArgs e)
        {
            // Si hay un formulario activo, cerrarlo
            if (FormularioActivo != null)
            {
                FormularioActivo.Close();
            }
            FormAnimal Animal = new FormAnimal();
            Animal.Show();
        }

        private void detalleDeCortesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            // Si hay un formulario activo, cerrarlo
            if (FormularioActivo != null)
            {
                FormularioActivo.Close();
            }
            FormDetalleAnimal detalle = new FormDetalleAnimal();
            detalle.Show();
        }

        private void menuContacto_Click(object sender, EventArgs e)
        {
            // Si hay un formulario activo, cerrarlo
            if (FormularioActivo != null)
            {
                FormularioActivo.Close();
            }
            FormContacto detalle = new FormContacto();
            detalle.Show();
        }
    }
}


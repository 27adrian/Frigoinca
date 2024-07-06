using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CapaLogica;

namespace ProyectoFrigoinca
{
    public partial class Login : Form
    {
        public string nombreUsuario;
        public Login()
        {
            InitializeComponent();
            txtContraseña.PasswordChar = '*';
            lbfecha.Text = DateTime.Now.ToString("dd/MM/yyyy");
            iconPictureBox2.Visible = true;
            iconPictureBox3.Visible = false;
        }
     

       

        private void iconButton1_Click(object sender, EventArgs e)
        {
            string nombreUsuario = txtUsuario.Text;
            string contraseña = txtContraseña.Text;

            // Obtener el rol del usuario utilizando el método ObtenerRol
            string rolUsuario = logTrabajador.Instancia.ObtenerRol(nombreUsuario, contraseña);

            if (rolUsuario != null)
            {
                // Verificar si el usuario está habilitado
                bool usuarioHabilitado = logTrabajador.Instancia.UsuarioEstaHabilitado(nombreUsuario);

                if (usuarioHabilitado)
                {
                    MessageBox.Show("Inicio de sesión exitoso");
                    FormInicio frm = new FormInicio(rolUsuario); // Pasar el rol del usuario al formulario de inicio

                    frm.MostrarUsuarioLogeado(nombreUsuario);

                    this.Hide();
                    frm.Show();
                }
                else
                {
                    MessageBox.Show("El usuario está deshabilitado. No puede iniciar sesión.", "Usuario Deshabilitado", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
            else
            {
                MessageBox.Show("Credenciales incorrectas");
            }


        }

        private void frm_closing(object sender, FormClosingEventArgs e)
        {
            txtUsuario.Text = "";//Limpiar campo del text
        }

        private void btnSalir_Click(object sender, EventArgs e)
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


        private void txtContraseña_KeyPress_1(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (char)Keys.Enter)
            {
                // Llamar al método o realizar la acción deseada al presionar Enter
                btnAcceder.PerformClick();
                // Evitar que se procese la tecla Enter más de una vez
                e.Handled = true;
            }
        }

        private void iconPictureBox2_Click(object sender, EventArgs e)
        {
            txtContraseña.PasswordChar = '\0';
            iconPictureBox2.Visible = false;
            iconPictureBox3.Visible = true;
        }

        private void iconPictureBox3_Click(object sender, EventArgs e)
        {
            txtContraseña.PasswordChar = '*';
            iconPictureBox3.Visible = false;
            iconPictureBox2.Visible = true;
        }

        private void txtContraseña_TextChanged(object sender, EventArgs e)
        {

        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }
    }
    
}

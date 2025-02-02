﻿using CapaEntidad;
using CapaLogica;
using System;
using System.Windows.Forms;

namespace ProyectoFrigoinca
{
    public partial class FormAnimal : Form
    {
        public FormAnimal()
        {
            InitializeComponent();
            ListarAnimal();
            DesactivarBtn();
        }
        public void DesactivarBtn()
        {
            txtId.Enabled = false;
            btnCancelar.Visible = false;
            btnRegistrar.Enabled = false;
            btnModificar.Enabled = false;
            btnEliminar.Enabled = false;
            txtDescripcion.Enabled = false;
            btnEditar.Enabled = true;
            btnNuevo.Enabled = true;
        }
        public void ListarAnimal()
        {
            // Configurar la propiedad DataSource
            dgvCortes.DataSource = logAnimal.Instancia.ListarAnimal();
        }
        private void btnRegistrar_Click(object sender, EventArgs e)
        {
            try
            {
                entAnimal c = new entAnimal();
                c.especie = txtDescripcion.Text.Trim();

                logAnimal.Instancia.InsertarCorte(c);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error.." + ex);
            }
            ListarAnimal();
            DesactivarBtn();
            txtDescripcion.Text = "";
            dgvCortes.Enabled = true;
        }
        private void btnNuevo_Click(object sender, EventArgs e)
        {
            btnRegistrar.Enabled = true;
            btnCancelar.Visible = true;
            btnEditar.Enabled = false;
            txtDescripcion.Enabled = true;
            txtDescripcion.Focus();
            txtDescripcion.Text = "";
            dgvCortes.Enabled = false;
            txtId.Text = "";
        }
        private void btnEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                int idCorteEliminar = int.Parse(txtId.Text);
                Boolean resultado = logAnimal.Instancia.EliminarCorte(idCorteEliminar);

                if (resultado)
                {
                    MessageBox.Show("El Corte fue eliminado exitosamente.", "Éxito", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    ListarAnimal();
                }
                else
                {
                    MessageBox.Show("No se pudo eliminar el Corte.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Ocurrió un error: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            DesactivarBtn();
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            Close();
        }
        private void btnCancelar_Click(object sender, EventArgs e)
        {
            DesactivarBtn();
            dgvCortes.Enabled = true;
            txtDescripcion.Text = "";
            txtId.Text = "";
        }

        private void btnModificar_Click(object sender, EventArgs e)
        {
            try
            {
                entAnimal c = new entAnimal();
                c.idAnimal = int.Parse(txtId.Text);
                c.especie = txtDescripcion.Text; // No es necesario .ToString() ya que es un string

                logAnimal.Instancia.EditarCorte(c);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error.." + ex);
            }
            ListarAnimal();
            DesactivarBtn();
        }
        private void btnEditar_Click(object sender, EventArgs e)
        {
            btnCancelar.Visible = true;
            btnModificar.Enabled = true;
            btnEliminar.Enabled = true;
            txtDescripcion.Enabled = true;
            btnNuevo.Enabled = false;
        }
        
        private void dgvCortes_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                if (e.RowIndex >= 0)
                {
                    DataGridViewRow row = dgvCortes.Rows[e.RowIndex];
                    txtId.Text = row.Cells[0].Value?.ToString();
                    txtDescripcion.Text = row.Cells[1].Value?.ToString();
                    btnCancelar.Visible = true;
                }
            }
            catch { }
        }
    }
}

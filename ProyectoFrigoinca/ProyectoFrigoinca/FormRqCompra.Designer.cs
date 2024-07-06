namespace ProyectoFrigoinca
{
    partial class FormRqCompra
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            this.label4 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.btnRegistrar = new FontAwesome.Sharp.IconButton();
            this.dgvRqCompra = new System.Windows.Forms.DataGridView();
            this.gbxRqCompra = new System.Windows.Forms.GroupBox();
            this.txtStock = new System.Windows.Forms.TextBox();
            this.txtCantidad = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.txtEspecie = new System.Windows.Forms.TextBox();
            this.btnBuscarRq = new FontAwesome.Sharp.IconButton();
            this.label6 = new System.Windows.Forms.Label();
            this.txtIdInv = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.txtDescripcion = new System.Windows.Forms.TextBox();
            this.cbxEstado = new System.Windows.Forms.CheckBox();
            this.label5 = new System.Windows.Forms.Label();
            this.btnNuevo = new FontAwesome.Sharp.IconButton();
            this.btnCancelar = new FontAwesome.Sharp.IconButton();
            this.errorProvider = new System.Windows.Forms.ErrorProvider(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.dgvRqCompra)).BeginInit();
            this.gbxRqCompra.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.errorProvider)).BeginInit();
            this.SuspendLayout();
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.BackColor = System.Drawing.Color.AntiqueWhite;
            this.label4.Font = new System.Drawing.Font("Palatino Linotype", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.label4.Location = new System.Drawing.Point(23, 21);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(432, 37);
            this.label4.TabIndex = 54;
            this.label4.Text = "REQUERIMIENTO DE COMPRA";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(365, 21);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(83, 18);
            this.label2.TabIndex = 1;
            this.label2.Text = "StockActual:";
            // 
            // btnRegistrar
            // 
            this.btnRegistrar.BackColor = System.Drawing.Color.MediumAquamarine;
            this.btnRegistrar.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnRegistrar.Font = new System.Drawing.Font("Palatino Linotype", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnRegistrar.IconChar = FontAwesome.Sharp.IconChar.Upload;
            this.btnRegistrar.IconColor = System.Drawing.Color.Black;
            this.btnRegistrar.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnRegistrar.IconSize = 30;
            this.btnRegistrar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnRegistrar.Location = new System.Drawing.Point(139, 371);
            this.btnRegistrar.Name = "btnRegistrar";
            this.btnRegistrar.Size = new System.Drawing.Size(124, 37);
            this.btnRegistrar.TabIndex = 57;
            this.btnRegistrar.Text = "Registrar";
            this.btnRegistrar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnRegistrar.UseVisualStyleBackColor = false;
            this.btnRegistrar.Click += new System.EventHandler(this.btnRegistrar_Click);
            // 
            // dgvRqCompra
            // 
            this.dgvRqCompra.AllowUserToAddRows = false;
            this.dgvRqCompra.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Mongolian Baiti", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle3.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle3.Padding = new System.Windows.Forms.Padding(2);
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvRqCompra.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle3;
            this.dgvRqCompra.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvRqCompra.Location = new System.Drawing.Point(30, 242);
            this.dgvRqCompra.MultiSelect = false;
            this.dgvRqCompra.Name = "dgvRqCompra";
            this.dgvRqCompra.ReadOnly = true;
            dataGridViewCellStyle4.SelectionBackColor = System.Drawing.Color.White;
            dataGridViewCellStyle4.SelectionForeColor = System.Drawing.Color.Black;
            this.dgvRqCompra.RowsDefaultCellStyle = dataGridViewCellStyle4;
            this.dgvRqCompra.Size = new System.Drawing.Size(539, 117);
            this.dgvRqCompra.TabIndex = 53;
            this.dgvRqCompra.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvRqCompra_CellClick);
            // 
            // gbxRqCompra
            // 
            this.gbxRqCompra.BackColor = System.Drawing.Color.AntiqueWhite;
            this.gbxRqCompra.Controls.Add(this.txtStock);
            this.gbxRqCompra.Controls.Add(this.txtCantidad);
            this.gbxRqCompra.Controls.Add(this.label8);
            this.gbxRqCompra.Controls.Add(this.label7);
            this.gbxRqCompra.Controls.Add(this.txtEspecie);
            this.gbxRqCompra.Controls.Add(this.cbxEstado);
            this.gbxRqCompra.Controls.Add(this.btnBuscarRq);
            this.gbxRqCompra.Controls.Add(this.label6);
            this.gbxRqCompra.Controls.Add(this.txtIdInv);
            this.gbxRqCompra.Controls.Add(this.label1);
            this.gbxRqCompra.Controls.Add(this.txtDescripcion);
            this.gbxRqCompra.Controls.Add(this.label2);
            this.gbxRqCompra.Font = new System.Drawing.Font("Palatino Linotype", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gbxRqCompra.Location = new System.Drawing.Point(30, 81);
            this.gbxRqCompra.Name = "gbxRqCompra";
            this.gbxRqCompra.Size = new System.Drawing.Size(539, 155);
            this.gbxRqCompra.TabIndex = 52;
            this.gbxRqCompra.TabStop = false;
            this.gbxRqCompra.Text = "Requerimientos";
            this.gbxRqCompra.Enter += new System.EventHandler(this.gbxRqCompra_Enter);
            // 
            // txtStock
            // 
            this.txtStock.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtStock.Location = new System.Drawing.Point(368, 42);
            this.txtStock.Name = "txtStock";
            this.txtStock.Size = new System.Drawing.Size(128, 25);
            this.txtStock.TabIndex = 56;
            // 
            // txtCantidad
            // 
            this.txtCantidad.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtCantidad.Location = new System.Drawing.Point(368, 103);
            this.txtCantidad.Name = "txtCantidad";
            this.txtCantidad.Size = new System.Drawing.Size(128, 25);
            this.txtCantidad.TabIndex = 55;
            // 
            // label8
            // 
            this.label8.AccessibleDescription = "cformRequeri";
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(365, 82);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(67, 18);
            this.label8.TabIndex = 54;
            this.label8.Text = "Cantidad:";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(210, 25);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(41, 18);
            this.label7.TabIndex = 53;
            this.label7.Text = "Falta:";
            // 
            // txtEspecie
            // 
            this.txtEspecie.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtEspecie.Location = new System.Drawing.Point(213, 47);
            this.txtEspecie.Name = "txtEspecie";
            this.txtEspecie.Size = new System.Drawing.Size(124, 25);
            this.txtEspecie.TabIndex = 52;
            this.txtEspecie.VisibleChanged += new System.EventHandler(this.txtEspecie_VisibleChanged);
            // 
            // btnBuscarRq
            // 
            this.btnBuscarRq.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnBuscarRq.IconChar = FontAwesome.Sharp.IconChar.MagnifyingGlass;
            this.btnBuscarRq.IconColor = System.Drawing.Color.Black;
            this.btnBuscarRq.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnBuscarRq.IconSize = 20;
            this.btnBuscarRq.Location = new System.Drawing.Point(142, 46);
            this.btnBuscarRq.Name = "btnBuscarRq";
            this.btnBuscarRq.Size = new System.Drawing.Size(38, 26);
            this.btnBuscarRq.TabIndex = 51;
            this.btnBuscarRq.UseVisualStyleBackColor = true;
            this.btnBuscarRq.Click += new System.EventHandler(this.btnBuscarRq_Click);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(28, 25);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(89, 18);
            this.label6.TabIndex = 8;
            this.label6.Text = "Id Inventario:";
            // 
            // txtIdInv
            // 
            this.txtIdInv.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtIdInv.Location = new System.Drawing.Point(31, 46);
            this.txtIdInv.Name = "txtIdInv";
            this.txtIdInv.Size = new System.Drawing.Size(95, 25);
            this.txtIdInv.TabIndex = 7;
            this.txtIdInv.TextChanged += new System.EventHandler(this.txtIdInv_TextChanged);
            // 
            // label1
            // 
            this.label1.AccessibleDescription = "cformRequeri";
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(83, 82);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(81, 18);
            this.label1.TabIndex = 6;
            this.label1.Text = "Descripcion:";
            // 
            // txtDescripcion
            // 
            this.txtDescripcion.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtDescripcion.Location = new System.Drawing.Point(86, 103);
            this.txtDescripcion.Name = "txtDescripcion";
            this.txtDescripcion.Size = new System.Drawing.Size(251, 25);
            this.txtDescripcion.TabIndex = 5;
            // 
            // cbxEstado
            // 
            this.cbxEstado.AutoSize = true;
            this.cbxEstado.Location = new System.Drawing.Point(13, 104);
            this.cbxEstado.Name = "cbxEstado";
            this.cbxEstado.Size = new System.Drawing.Size(67, 22);
            this.cbxEstado.TabIndex = 4;
            this.cbxEstado.Text = "Estado";
            this.cbxEstado.UseVisualStyleBackColor = true;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Palatino Linotype", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(394, 299);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(0, 21);
            this.label5.TabIndex = 71;
            // 
            // btnNuevo
            // 
            this.btnNuevo.BackColor = System.Drawing.Color.LemonChiffon;
            this.btnNuevo.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnNuevo.Font = new System.Drawing.Font("Palatino Linotype", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnNuevo.IconChar = FontAwesome.Sharp.IconChar.VoteYea;
            this.btnNuevo.IconColor = System.Drawing.Color.Black;
            this.btnNuevo.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnNuevo.IconSize = 30;
            this.btnNuevo.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnNuevo.Location = new System.Drawing.Point(461, 21);
            this.btnNuevo.Name = "btnNuevo";
            this.btnNuevo.Size = new System.Drawing.Size(108, 37);
            this.btnNuevo.TabIndex = 75;
            this.btnNuevo.Text = "Nuevo";
            this.btnNuevo.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnNuevo.UseVisualStyleBackColor = false;
            this.btnNuevo.Click += new System.EventHandler(this.btnNuevo_Click);
            // 
            // btnCancelar
            // 
            this.btnCancelar.BackColor = System.Drawing.Color.Maroon;
            this.btnCancelar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnCancelar.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnCancelar.Font = new System.Drawing.Font("Mongolian Baiti", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCancelar.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.btnCancelar.IconChar = FontAwesome.Sharp.IconChar.FileExcel;
            this.btnCancelar.IconColor = System.Drawing.Color.White;
            this.btnCancelar.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnCancelar.IconSize = 20;
            this.btnCancelar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCancelar.Location = new System.Drawing.Point(324, 372);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(123, 37);
            this.btnCancelar.TabIndex = 74;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnCancelar.UseVisualStyleBackColor = false;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // errorProvider
            // 
            this.errorProvider.ContainerControl = this;
            // 
            // FormRqCompra
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.AntiqueWhite;
            this.ClientSize = new System.Drawing.Size(606, 421);
            this.Controls.Add(this.btnNuevo);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.btnRegistrar);
            this.Controls.Add(this.dgvRqCompra);
            this.Controls.Add(this.gbxRqCompra);
            this.Name = "FormRqCompra";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FormRqCompra";
            ((System.ComponentModel.ISupportInitialize)(this.dgvRqCompra)).EndInit();
            this.gbxRqCompra.ResumeLayout(false);
            this.gbxRqCompra.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.errorProvider)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label2;
        private FontAwesome.Sharp.IconButton btnRegistrar;
        private System.Windows.Forms.DataGridView dgvRqCompra;
        private System.Windows.Forms.GroupBox gbxRqCompra;
        private System.Windows.Forms.Label label5;
        private FontAwesome.Sharp.IconButton btnNuevo;
        private FontAwesome.Sharp.IconButton btnCancelar;
        private System.Windows.Forms.ErrorProvider errorProvider;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtDescripcion;
        private System.Windows.Forms.CheckBox cbxEstado;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtIdInv;
        private FontAwesome.Sharp.IconButton btnBuscarRq;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txtEspecie;
        private System.Windows.Forms.TextBox txtCantidad;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox txtStock;
    }
}
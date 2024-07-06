namespace ProyectoFrigoinca
{
    partial class FormLoteProduc
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
            this.label1 = new System.Windows.Forms.Label();
            this.dgvLoteProducto = new System.Windows.Forms.DataGridView();
            this.btnRegistrar = new FontAwesome.Sharp.IconButton();
            this.btnCancelar = new FontAwesome.Sharp.IconButton();
            this.btnNuevo = new FontAwesome.Sharp.IconButton();
            this.errorProvider = new System.Windows.Forms.ErrorProvider(this.components);
            this.label8 = new System.Windows.Forms.Label();
            this.gbxMateria = new System.Windows.Forms.GroupBox();
            this.label7 = new System.Windows.Forms.Label();
            this.txtCantidad = new System.Windows.Forms.TextBox();
            this.btnMateriaPrima = new FontAwesome.Sharp.IconButton();
            this.txtIdMP = new System.Windows.Forms.TextBox();
            this.txtDescripcionMP = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.gbxDescripcion = new System.Windows.Forms.GroupBox();
            this.txtDescripcion = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.gbxCorte = new System.Windows.Forms.GroupBox();
            this.lbPrecio = new System.Windows.Forms.Label();
            this.txtPrecioXU = new System.Windows.Forms.TextBox();
            this.txtStockLot = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.cbmCorte = new System.Windows.Forms.ComboBox();
            this.label9 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.txtTipoAnimal = new System.Windows.Forms.TextBox();
            this.txtIdCorte = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.dgvLoteProducto)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.errorProvider)).BeginInit();
            this.gbxMateria.SuspendLayout();
            this.gbxDescripcion.SuspendLayout();
            this.gbxCorte.SuspendLayout();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.AntiqueWhite;
            this.label1.Font = new System.Drawing.Font("Palatino Linotype", 36F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(274, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(457, 65);
            this.label1.TabIndex = 1;
            this.label1.Text = "LOTE PRODUCTO";
            // 
            // dgvLoteProducto
            // 
            this.dgvLoteProducto.AllowUserToAddRows = false;
            this.dgvLoteProducto.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvLoteProducto.BorderStyle = System.Windows.Forms.BorderStyle.None;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Mongolian Baiti", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle3.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle3.Padding = new System.Windows.Forms.Padding(2);
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvLoteProducto.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle3;
            this.dgvLoteProducto.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvLoteProducto.Location = new System.Drawing.Point(429, 207);
            this.dgvLoteProducto.MultiSelect = false;
            this.dgvLoteProducto.Name = "dgvLoteProducto";
            this.dgvLoteProducto.ReadOnly = true;
            dataGridViewCellStyle4.SelectionBackColor = System.Drawing.Color.White;
            dataGridViewCellStyle4.SelectionForeColor = System.Drawing.Color.Black;
            this.dgvLoteProducto.RowsDefaultCellStyle = dataGridViewCellStyle4;
            this.dgvLoteProducto.Size = new System.Drawing.Size(505, 294);
            this.dgvLoteProducto.TabIndex = 53;
            this.dgvLoteProducto.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvLoteProducto_CellClick);
            // 
            // btnRegistrar
            // 
            this.btnRegistrar.BackColor = System.Drawing.Color.MediumAquamarine;
            this.btnRegistrar.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnRegistrar.Font = new System.Drawing.Font("Palatino Linotype", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnRegistrar.IconChar = FontAwesome.Sharp.IconChar.Tags;
            this.btnRegistrar.IconColor = System.Drawing.Color.Black;
            this.btnRegistrar.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnRegistrar.IconSize = 30;
            this.btnRegistrar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnRegistrar.Location = new System.Drawing.Point(183, 507);
            this.btnRegistrar.Name = "btnRegistrar";
            this.btnRegistrar.Size = new System.Drawing.Size(118, 37);
            this.btnRegistrar.TabIndex = 54;
            this.btnRegistrar.Text = "Registrar";
            this.btnRegistrar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnRegistrar.UseVisualStyleBackColor = false;
            this.btnRegistrar.Click += new System.EventHandler(this.btnRegistrar_Click);
            // 
            // btnCancelar
            // 
            this.btnCancelar.BackColor = System.Drawing.Color.Maroon;
            this.btnCancelar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnCancelar.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnCancelar.Font = new System.Drawing.Font("Mongolian Baiti", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCancelar.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.btnCancelar.IconChar = FontAwesome.Sharp.IconChar.FilePrescription;
            this.btnCancelar.IconColor = System.Drawing.Color.White;
            this.btnCancelar.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnCancelar.IconSize = 25;
            this.btnCancelar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCancelar.Location = new System.Drawing.Point(702, 514);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(118, 25);
            this.btnCancelar.TabIndex = 65;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnCancelar.UseVisualStyleBackColor = false;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click_1);
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
            this.btnNuevo.Location = new System.Drawing.Point(802, 121);
            this.btnNuevo.Name = "btnNuevo";
            this.btnNuevo.Size = new System.Drawing.Size(118, 37);
            this.btnNuevo.TabIndex = 72;
            this.btnNuevo.Text = "Nuevo";
            this.btnNuevo.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnNuevo.UseVisualStyleBackColor = false;
            this.btnNuevo.Click += new System.EventHandler(this.btnNuevo_Click_1);
            // 
            // errorProvider
            // 
            this.errorProvider.ContainerControl = this;
            // 
            // label8
            // 
            this.label8.BackColor = System.Drawing.Color.AntiqueWhite;
            this.label8.Location = new System.Drawing.Point(57, -8);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(908, 585);
            this.label8.TabIndex = 74;
            // 
            // gbxMateria
            // 
            this.gbxMateria.BackColor = System.Drawing.Color.AntiqueWhite;
            this.gbxMateria.Controls.Add(this.label7);
            this.gbxMateria.Controls.Add(this.txtCantidad);
            this.gbxMateria.Controls.Add(this.btnMateriaPrima);
            this.gbxMateria.Controls.Add(this.txtIdMP);
            this.gbxMateria.Controls.Add(this.txtDescripcionMP);
            this.gbxMateria.Controls.Add(this.label2);
            this.gbxMateria.Controls.Add(this.label3);
            this.gbxMateria.Font = new System.Drawing.Font("Palatino Linotype", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gbxMateria.Location = new System.Drawing.Point(86, 93);
            this.gbxMateria.Name = "gbxMateria";
            this.gbxMateria.Size = new System.Drawing.Size(287, 143);
            this.gbxMateria.TabIndex = 78;
            this.gbxMateria.TabStop = false;
            this.gbxMateria.Text = "Ingreso Materia Prima:";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(64, 78);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(109, 18);
            this.label7.TabIndex = 80;
            this.label7.Text = "Cantidad Entera:";
            // 
            // txtCantidad
            // 
            this.txtCantidad.Location = new System.Drawing.Point(67, 99);
            this.txtCantidad.Name = "txtCantidad";
            this.txtCantidad.Size = new System.Drawing.Size(155, 25);
            this.txtCantidad.TabIndex = 79;
            // 
            // btnMateriaPrima
            // 
            this.btnMateriaPrima.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnMateriaPrima.IconChar = FontAwesome.Sharp.IconChar.MagnifyingGlass;
            this.btnMateriaPrima.IconColor = System.Drawing.Color.Black;
            this.btnMateriaPrima.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnMateriaPrima.IconSize = 15;
            this.btnMateriaPrima.Location = new System.Drawing.Point(228, 40);
            this.btnMateriaPrima.Name = "btnMateriaPrima";
            this.btnMateriaPrima.Size = new System.Drawing.Size(38, 25);
            this.btnMateriaPrima.TabIndex = 53;
            this.btnMateriaPrima.UseVisualStyleBackColor = true;
            this.btnMateriaPrima.Click += new System.EventHandler(this.btnMateriaPrima_Click);
            // 
            // txtIdMP
            // 
            this.txtIdMP.Location = new System.Drawing.Point(9, 40);
            this.txtIdMP.Name = "txtIdMP";
            this.txtIdMP.Size = new System.Drawing.Size(39, 25);
            this.txtIdMP.TabIndex = 5;
            // 
            // txtDescripcionMP
            // 
            this.txtDescripcionMP.Location = new System.Drawing.Point(67, 40);
            this.txtDescripcionMP.Name = "txtDescripcionMP";
            this.txtDescripcionMP.Size = new System.Drawing.Size(155, 25);
            this.txtDescripcionMP.TabIndex = 4;
            this.txtDescripcionMP.TextChanged += new System.EventHandler(this.txtDescripcionMP_TextChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(16, 21);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(23, 18);
            this.label2.TabIndex = 3;
            this.label2.Text = "Id:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(75, 19);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(81, 18);
            this.label3.TabIndex = 0;
            this.label3.Text = "Descripcion:";
            // 
            // gbxDescripcion
            // 
            this.gbxDescripcion.BackColor = System.Drawing.Color.AntiqueWhite;
            this.gbxDescripcion.Controls.Add(this.txtDescripcion);
            this.gbxDescripcion.Controls.Add(this.label6);
            this.gbxDescripcion.Font = new System.Drawing.Font("Palatino Linotype", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gbxDescripcion.Location = new System.Drawing.Point(429, 93);
            this.gbxDescripcion.Name = "gbxDescripcion";
            this.gbxDescripcion.Size = new System.Drawing.Size(345, 81);
            this.gbxDescripcion.TabIndex = 77;
            this.gbxDescripcion.TabStop = false;
            this.gbxDescripcion.Text = "Descripcion de ingreso:";
            // 
            // txtDescripcion
            // 
            this.txtDescripcion.Location = new System.Drawing.Point(40, 40);
            this.txtDescripcion.Name = "txtDescripcion";
            this.txtDescripcion.ReadOnly = true;
            this.txtDescripcion.Size = new System.Drawing.Size(275, 25);
            this.txtDescripcion.TabIndex = 4;
            this.txtDescripcion.TextChanged += new System.EventHandler(this.txtDescripcion_TextChanged);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(37, 21);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(81, 18);
            this.label6.TabIndex = 0;
            this.label6.Text = "Descripcion:";
            // 
            // gbxCorte
            // 
            this.gbxCorte.BackColor = System.Drawing.Color.AntiqueWhite;
            this.gbxCorte.Controls.Add(this.lbPrecio);
            this.gbxCorte.Controls.Add(this.txtPrecioXU);
            this.gbxCorte.Controls.Add(this.txtStockLot);
            this.gbxCorte.Controls.Add(this.label10);
            this.gbxCorte.Controls.Add(this.cbmCorte);
            this.gbxCorte.Controls.Add(this.label9);
            this.gbxCorte.Controls.Add(this.label4);
            this.gbxCorte.Controls.Add(this.txtTipoAnimal);
            this.gbxCorte.Controls.Add(this.txtIdCorte);
            this.gbxCorte.Font = new System.Drawing.Font("Palatino Linotype", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gbxCorte.Location = new System.Drawing.Point(86, 242);
            this.gbxCorte.Name = "gbxCorte";
            this.gbxCorte.Size = new System.Drawing.Size(287, 259);
            this.gbxCorte.TabIndex = 76;
            this.gbxCorte.TabStop = false;
            this.gbxCorte.Text = "Descripcion de Animal";
            // 
            // lbPrecio
            // 
            this.lbPrecio.AutoSize = true;
            this.lbPrecio.Location = new System.Drawing.Point(85, 201);
            this.lbPrecio.Name = "lbPrecio";
            this.lbPrecio.Size = new System.Drawing.Size(120, 18);
            this.lbPrecio.TabIndex = 84;
            this.lbPrecio.Text = "Precio por Unidad:";
            // 
            // txtPrecioXU
            // 
            this.txtPrecioXU.Location = new System.Drawing.Point(38, 222);
            this.txtPrecioXU.Name = "txtPrecioXU";
            this.txtPrecioXU.Size = new System.Drawing.Size(209, 25);
            this.txtPrecioXU.TabIndex = 83;
            // 
            // txtStockLot
            // 
            this.txtStockLot.Location = new System.Drawing.Point(38, 167);
            this.txtStockLot.Name = "txtStockLot";
            this.txtStockLot.Size = new System.Drawing.Size(209, 25);
            this.txtStockLot.TabIndex = 82;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(94, 140);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(93, 18);
            this.label10.TabIndex = 81;
            this.label10.Text = "Presas (Stock):";
            // 
            // cbmCorte
            // 
            this.cbmCorte.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbmCorte.FormattingEnabled = true;
            this.cbmCorte.Location = new System.Drawing.Point(38, 102);
            this.cbmCorte.Name = "cbmCorte";
            this.cbmCorte.Size = new System.Drawing.Size(209, 26);
            this.cbmCorte.TabIndex = 76;
            this.cbmCorte.SelectedIndexChanged += new System.EventHandler(this.cbmCorte_SelectedIndexChanged);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(99, 81);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(88, 18);
            this.label9.TabIndex = 52;
            this.label9.Text = "Tipo de corte:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(101, 21);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(86, 18);
            this.label4.TabIndex = 8;
            this.label4.Text = "Tipo Animal:";
            // 
            // txtTipoAnimal
            // 
            this.txtTipoAnimal.Location = new System.Drawing.Point(38, 41);
            this.txtTipoAnimal.Name = "txtTipoAnimal";
            this.txtTipoAnimal.Size = new System.Drawing.Size(211, 25);
            this.txtTipoAnimal.TabIndex = 8;
            this.txtTipoAnimal.TextChanged += new System.EventHandler(this.txtTipoAnimal_TextChanged);
            // 
            // txtIdCorte
            // 
            this.txtIdCorte.Location = new System.Drawing.Point(38, 41);
            this.txtIdCorte.Name = "txtIdCorte";
            this.txtIdCorte.Size = new System.Drawing.Size(10, 25);
            this.txtIdCorte.TabIndex = 6;
            // 
            // FormLoteProduc
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Tan;
            this.ClientSize = new System.Drawing.Size(989, 551);
            this.Controls.Add(this.gbxMateria);
            this.Controls.Add(this.gbxDescripcion);
            this.Controls.Add(this.gbxCorte);
            this.Controls.Add(this.btnNuevo);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.btnRegistrar);
            this.Controls.Add(this.dgvLoteProducto);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.label8);
            this.Name = "FormLoteProduc";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FormLoteProduc";
            ((System.ComponentModel.ISupportInitialize)(this.dgvLoteProducto)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.errorProvider)).EndInit();
            this.gbxMateria.ResumeLayout(false);
            this.gbxMateria.PerformLayout();
            this.gbxDescripcion.ResumeLayout(false);
            this.gbxDescripcion.PerformLayout();
            this.gbxCorte.ResumeLayout(false);
            this.gbxCorte.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dgvLoteProducto;
        private FontAwesome.Sharp.IconButton btnRegistrar;
        private FontAwesome.Sharp.IconButton btnCancelar;
        private FontAwesome.Sharp.IconButton btnNuevo;
        private System.Windows.Forms.ErrorProvider errorProvider;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.GroupBox gbxMateria;
        private FontAwesome.Sharp.IconButton btnMateriaPrima;
        private System.Windows.Forms.TextBox txtIdMP;
        private System.Windows.Forms.TextBox txtDescripcionMP;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.GroupBox gbxDescripcion;
        private System.Windows.Forms.TextBox txtDescripcion;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.GroupBox gbxCorte;
        private System.Windows.Forms.ComboBox cbmCorte;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtTipoAnimal;
        private System.Windows.Forms.TextBox txtIdCorte;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txtCantidad;
        private System.Windows.Forms.TextBox txtStockLot;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label lbPrecio;
        private System.Windows.Forms.TextBox txtPrecioXU;
    }
}
namespace ProyectoFrigoinca
{
    partial class FormBuscarProv
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
            this.gbxBuscar = new System.Windows.Forms.GroupBox();
            this.txtBuscar2 = new System.Windows.Forms.TextBox();
            this.btnLimpiar = new FontAwesome.Sharp.IconButton();
            this.iconPictureBox2 = new FontAwesome.Sharp.IconPictureBox();
            this.label15 = new System.Windows.Forms.Label();
            this.dtpFecha = new System.Windows.Forms.DateTimePicker();
            this.btnBuscar = new FontAwesome.Sharp.IconButton();
            this.label14 = new System.Windows.Forms.Label();
            this.txtBuscartex = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.cbmCriterios = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.btnSalir = new FontAwesome.Sharp.IconPictureBox();
            this.dgvProveedor = new System.Windows.Forms.DataGridView();
            this.gbxBuscar.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.iconPictureBox2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.btnSalir)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvProveedor)).BeginInit();
            this.SuspendLayout();
            // 
            // gbxBuscar
            // 
            this.gbxBuscar.BackColor = System.Drawing.Color.AntiqueWhite;
            this.gbxBuscar.Controls.Add(this.txtBuscar2);
            this.gbxBuscar.Controls.Add(this.btnLimpiar);
            this.gbxBuscar.Controls.Add(this.iconPictureBox2);
            this.gbxBuscar.Controls.Add(this.label15);
            this.gbxBuscar.Controls.Add(this.dtpFecha);
            this.gbxBuscar.Controls.Add(this.btnBuscar);
            this.gbxBuscar.Controls.Add(this.label14);
            this.gbxBuscar.Controls.Add(this.txtBuscartex);
            this.gbxBuscar.Controls.Add(this.label10);
            this.gbxBuscar.Controls.Add(this.cbmCriterios);
            this.gbxBuscar.Font = new System.Drawing.Font("Mongolian Baiti", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gbxBuscar.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.gbxBuscar.Location = new System.Drawing.Point(21, 67);
            this.gbxBuscar.Name = "gbxBuscar";
            this.gbxBuscar.Size = new System.Drawing.Size(582, 71);
            this.gbxBuscar.TabIndex = 67;
            this.gbxBuscar.TabStop = false;
            this.gbxBuscar.Text = "Buscar Proveedor";
            // 
            // txtBuscar2
            // 
            this.txtBuscar2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtBuscar2.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtBuscar2.Location = new System.Drawing.Point(342, 34);
            this.txtBuscar2.Name = "txtBuscar2";
            this.txtBuscar2.Size = new System.Drawing.Size(228, 25);
            this.txtBuscar2.TabIndex = 68;
            // 
            // btnLimpiar
            // 
            this.btnLimpiar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnLimpiar.IconChar = FontAwesome.Sharp.IconChar.Broom;
            this.btnLimpiar.IconColor = System.Drawing.Color.Black;
            this.btnLimpiar.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnLimpiar.IconSize = 15;
            this.btnLimpiar.Location = new System.Drawing.Point(284, 33);
            this.btnLimpiar.Name = "btnLimpiar";
            this.btnLimpiar.Size = new System.Drawing.Size(38, 25);
            this.btnLimpiar.TabIndex = 67;
            this.btnLimpiar.UseVisualStyleBackColor = true;
            this.btnLimpiar.Click += new System.EventHandler(this.btnLimpiar_Click);
            // 
            // iconPictureBox2
            // 
            this.iconPictureBox2.BackColor = System.Drawing.Color.AntiqueWhite;
            this.iconPictureBox2.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.iconPictureBox2.IconChar = FontAwesome.Sharp.IconChar.AddressCard;
            this.iconPictureBox2.IconColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.iconPictureBox2.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.iconPictureBox2.IconSize = 45;
            this.iconPictureBox2.Location = new System.Drawing.Point(18, 18);
            this.iconPictureBox2.Name = "iconPictureBox2";
            this.iconPictureBox2.Size = new System.Drawing.Size(54, 45);
            this.iconPictureBox2.TabIndex = 66;
            this.iconPictureBox2.TabStop = false;
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label15.Location = new System.Drawing.Point(78, 14);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(79, 16);
            this.label15.TabIndex = 13;
            this.label15.Text = "Buscar por:";
            // 
            // dtpFecha
            // 
            this.dtpFecha.Location = new System.Drawing.Point(342, 36);
            this.dtpFecha.Name = "dtpFecha";
            this.dtpFecha.Size = new System.Drawing.Size(228, 22);
            this.dtpFecha.TabIndex = 52;
            // 
            // btnBuscar
            // 
            this.btnBuscar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnBuscar.IconChar = FontAwesome.Sharp.IconChar.MagnifyingGlass;
            this.btnBuscar.IconColor = System.Drawing.Color.Black;
            this.btnBuscar.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnBuscar.IconSize = 15;
            this.btnBuscar.Location = new System.Drawing.Point(240, 33);
            this.btnBuscar.Name = "btnBuscar";
            this.btnBuscar.Size = new System.Drawing.Size(38, 25);
            this.btnBuscar.TabIndex = 51;
            this.btnBuscar.UseVisualStyleBackColor = true;
            this.btnBuscar.Click += new System.EventHandler(this.btnBuscar_Click);
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label14.Location = new System.Drawing.Point(221, 23);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(0, 16);
            this.label14.TabIndex = 12;
            // 
            // txtBuscartex
            // 
            this.txtBuscartex.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtBuscartex.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtBuscartex.Location = new System.Drawing.Point(340, 34);
            this.txtBuscartex.Name = "txtBuscartex";
            this.txtBuscartex.Size = new System.Drawing.Size(228, 25);
            this.txtBuscartex.TabIndex = 12;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.Location = new System.Drawing.Point(22, 13);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(0, 16);
            this.label10.TabIndex = 11;
            // 
            // cbmCriterios
            // 
            this.cbmCriterios.FormattingEnabled = true;
            this.cbmCriterios.Location = new System.Drawing.Point(78, 33);
            this.cbmCriterios.Name = "cbmCriterios";
            this.cbmCriterios.Size = new System.Drawing.Size(156, 22);
            this.cbmCriterios.TabIndex = 10;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.AntiqueWhite;
            this.label2.Font = new System.Drawing.Font("Palatino Linotype", 24F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.SystemColors.MenuText;
            this.label2.Location = new System.Drawing.Point(91, 20);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(434, 44);
            this.label2.TabIndex = 68;
            this.label2.Text = "BUSCAR UN PROVEEDOR";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Palatino Linotype", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(568, 26);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(44, 21);
            this.label5.TabIndex = 71;
            this.label5.Text = "Salir";
            this.label5.Click += new System.EventHandler(this.label5_Click);
            // 
            // btnSalir
            // 
            this.btnSalir.BackColor = System.Drawing.Color.AntiqueWhite;
            this.btnSalir.ForeColor = System.Drawing.SystemColors.ControlText;
            this.btnSalir.IconChar = FontAwesome.Sharp.IconChar.PersonWalkingArrowLoopLeft;
            this.btnSalir.IconColor = System.Drawing.SystemColors.ControlText;
            this.btnSalir.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnSalir.Location = new System.Drawing.Point(572, 2);
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.Size = new System.Drawing.Size(32, 32);
            this.btnSalir.TabIndex = 70;
            this.btnSalir.TabStop = false;
            this.btnSalir.Click += new System.EventHandler(this.btnSalir_Click);
            // 
            // dgvProveedor
            // 
            this.dgvProveedor.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvProveedor.Location = new System.Drawing.Point(21, 153);
            this.dgvProveedor.Name = "dgvProveedor";
            this.dgvProveedor.Size = new System.Drawing.Size(582, 187);
            this.dgvProveedor.TabIndex = 73;
            this.dgvProveedor.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvProveedor_CellClick);
            // 
            // FormBuscarProv
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.AntiqueWhite;
            this.ClientSize = new System.Drawing.Size(620, 352);
            this.Controls.Add(this.dgvProveedor);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.btnSalir);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.gbxBuscar);
            this.Name = "FormBuscarProv";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FormBuscarProv";
            this.gbxBuscar.ResumeLayout(false);
            this.gbxBuscar.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.iconPictureBox2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.btnSalir)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvProveedor)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox gbxBuscar;
        private System.Windows.Forms.TextBox txtBuscar2;
        private FontAwesome.Sharp.IconButton btnLimpiar;
        private FontAwesome.Sharp.IconPictureBox iconPictureBox2;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.DateTimePicker dtpFecha;
        private FontAwesome.Sharp.IconButton btnBuscar;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.TextBox txtBuscartex;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.ComboBox cbmCriterios;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label5;
        private FontAwesome.Sharp.IconPictureBox btnSalir;
        private System.Windows.Forms.DataGridView dgvProveedor;
    }
}
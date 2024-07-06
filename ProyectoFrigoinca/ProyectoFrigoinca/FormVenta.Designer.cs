using System;

namespace ProyectoFrigoinca
{
    partial class txtCli
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
            this.errorProvider = new System.Windows.Forms.ErrorProvider(this.components);
            this.btnBorrarO = new System.Windows.Forms.Button();
            this.btnVenta = new System.Windows.Forms.Button();
            this.cbmPago = new System.Windows.Forms.ComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnBuscarCli = new FontAwesome.Sharp.IconButton();
            this.label3 = new System.Windows.Forms.Label();
            this.txtNombre = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtNumeroDoc = new System.Windows.Forms.TextBox();
            this.txtDoc = new System.Windows.Forms.TextBox();
            this.txtIdCli = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.dgvSeleccion = new System.Windows.Forms.DataGridView();
            this.ID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.idInv = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.descripcion = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.precioXunidad = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.stock = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.btnAggProd = new System.Windows.Forms.Button();
            this.gbxProducto = new System.Windows.Forms.GroupBox();
            this.btnBuscarP = new FontAwesome.Sharp.IconButton();
            this.label7 = new System.Windows.Forms.Label();
            this.txtCantidad = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txtDescripcion = new System.Windows.Forms.TextBox();
            this.txtCodigoPro = new System.Windows.Forms.TextBox();
            this.label15 = new System.Windows.Forms.Label();
            this.label16 = new System.Windows.Forms.Label();
            this.txtPrecioU = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.gbxPago = new System.Windows.Forms.GroupBox();
            this.cbmDocumento = new System.Windows.Forms.ComboBox();
            this.label9 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.errorProvider)).BeginInit();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvSeleccion)).BeginInit();
            this.gbxProducto.SuspendLayout();
            this.gbxPago.SuspendLayout();
            this.SuspendLayout();
            // 
            // errorProvider
            // 
            this.errorProvider.ContainerControl = this;
            // 
            // btnBorrarO
            // 
            this.btnBorrarO.BackColor = System.Drawing.Color.Crimson;
            this.btnBorrarO.Location = new System.Drawing.Point(830, 178);
            this.btnBorrarO.Name = "btnBorrarO";
            this.btnBorrarO.Size = new System.Drawing.Size(137, 47);
            this.btnBorrarO.TabIndex = 21;
            this.btnBorrarO.Text = "Borrar Objeto Enlistado";
            this.btnBorrarO.UseVisualStyleBackColor = false;
            this.btnBorrarO.Click += new System.EventHandler(this.btn1_Click);
            // 
            // btnVenta
            // 
            this.btnVenta.BackColor = System.Drawing.Color.Orange;
            this.btnVenta.Location = new System.Drawing.Point(845, 458);
            this.btnVenta.Name = "btnVenta";
            this.btnVenta.Size = new System.Drawing.Size(94, 57);
            this.btnVenta.TabIndex = 20;
            this.btnVenta.Text = "Vender";
            this.btnVenta.UseVisualStyleBackColor = false;
            this.btnVenta.Click += new System.EventHandler(this.btnVenta_Click);
            // 
            // cbmPago
            // 
            this.cbmPago.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbmPago.FormattingEnabled = true;
            this.cbmPago.Location = new System.Drawing.Point(26, 94);
            this.cbmPago.Name = "cbmPago";
            this.cbmPago.Size = new System.Drawing.Size(141, 25);
            this.cbmPago.TabIndex = 19;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(32, 74);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(105, 17);
            this.label6.TabIndex = 18;
            this.label6.Text = "Metodo de Pago: ";
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.Color.AntiqueWhite;
            this.groupBox1.Controls.Add(this.btnBuscarCli);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.txtNombre);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.txtNumeroDoc);
            this.groupBox1.Controls.Add(this.txtDoc);
            this.groupBox1.Controls.Add(this.txtIdCli);
            this.groupBox1.Controls.Add(this.label8);
            this.groupBox1.Controls.Add(this.label10);
            this.groupBox1.Font = new System.Drawing.Font("Palatino Linotype", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(52, 100);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(719, 76);
            this.groupBox1.TabIndex = 15;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Informacion del Cliente";
            // 
            // btnBuscarCli
            // 
            this.btnBuscarCli.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnBuscarCli.IconChar = FontAwesome.Sharp.IconChar.MagnifyingGlass;
            this.btnBuscarCli.IconColor = System.Drawing.Color.Black;
            this.btnBuscarCli.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnBuscarCli.IconSize = 15;
            this.btnBuscarCli.Location = new System.Drawing.Point(310, 39);
            this.btnBuscarCli.Name = "btnBuscarCli";
            this.btnBuscarCli.Size = new System.Drawing.Size(38, 22);
            this.btnBuscarCli.TabIndex = 50;
            this.btnBuscarCli.UseVisualStyleBackColor = true;
            this.btnBuscarCli.Click += new System.EventHandler(this.btnBuscarCli_Click_1);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Palatino Linotype", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(58, 19);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(57, 17);
            this.label3.TabIndex = 1;
            this.label3.Text = "Nombre:";
            // 
            // txtNombre
            // 
            this.txtNombre.Location = new System.Drawing.Point(61, 39);
            this.txtNombre.Name = "txtNombre";
            this.txtNombre.ReadOnly = true;
            this.txtNombre.Size = new System.Drawing.Size(243, 22);
            this.txtNombre.TabIndex = 3;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Palatino Linotype", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(486, 19);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(99, 17);
            this.label4.TabIndex = 5;
            this.label4.Text = "Numero de Doc:";
            // 
            // txtNumeroDoc
            // 
            this.txtNumeroDoc.Location = new System.Drawing.Point(489, 39);
            this.txtNumeroDoc.Name = "txtNumeroDoc";
            this.txtNumeroDoc.ReadOnly = true;
            this.txtNumeroDoc.Size = new System.Drawing.Size(206, 22);
            this.txtNumeroDoc.TabIndex = 7;
            // 
            // txtDoc
            // 
            this.txtDoc.Location = new System.Drawing.Point(375, 39);
            this.txtDoc.Name = "txtDoc";
            this.txtDoc.ReadOnly = true;
            this.txtDoc.Size = new System.Drawing.Size(105, 22);
            this.txtDoc.TabIndex = 6;
            // 
            // txtIdCli
            // 
            this.txtIdCli.Location = new System.Drawing.Point(13, 39);
            this.txtIdCli.Name = "txtIdCli";
            this.txtIdCli.ReadOnly = true;
            this.txtIdCli.Size = new System.Drawing.Size(39, 22);
            this.txtIdCli.TabIndex = 2;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Palatino Linotype", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(15, 20);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(25, 17);
            this.label8.TabIndex = 0;
            this.label8.Text = "ID:";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Palatino Linotype", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.Location = new System.Drawing.Point(375, 19);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(77, 17);
            this.label10.TabIndex = 4;
            this.label10.Text = "Tipo de Doc:";
            // 
            // dgvSeleccion
            // 
            this.dgvSeleccion.AllowUserToAddRows = false;
            this.dgvSeleccion.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvSeleccion.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvSeleccion.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.ID,
            this.idInv,
            this.descripcion,
            this.precioXunidad,
            this.stock});
            this.dgvSeleccion.Location = new System.Drawing.Point(52, 290);
            this.dgvSeleccion.MultiSelect = false;
            this.dgvSeleccion.Name = "dgvSeleccion";
            this.dgvSeleccion.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvSeleccion.Size = new System.Drawing.Size(719, 225);
            this.dgvSeleccion.TabIndex = 11;
            // 
            // ID
            // 
            this.ID.HeaderText = "Id";
            this.ID.Name = "ID";
            // 
            // idInv
            // 
            this.idInv.HeaderText = "idInv";
            this.idInv.Name = "idInv";
            this.idInv.ReadOnly = true;
            // 
            // descripcion
            // 
            this.descripcion.HeaderText = "NombreProducto";
            this.descripcion.Name = "descripcion";
            this.descripcion.ReadOnly = true;
            // 
            // precioXunidad
            // 
            this.precioXunidad.HeaderText = "Precio Unitario";
            this.precioXunidad.Name = "precioXunidad";
            this.precioXunidad.ReadOnly = true;
            // 
            // stock
            // 
            this.stock.HeaderText = "Cantidad";
            this.stock.Name = "stock";
            // 
            // btnAggProd
            // 
            this.btnAggProd.BackColor = System.Drawing.Color.GreenYellow;
            this.btnAggProd.Location = new System.Drawing.Point(830, 100);
            this.btnAggProd.Name = "btnAggProd";
            this.btnAggProd.Size = new System.Drawing.Size(137, 47);
            this.btnAggProd.TabIndex = 14;
            this.btnAggProd.Text = "Agregar Producto";
            this.btnAggProd.UseVisualStyleBackColor = false;
            this.btnAggProd.Click += new System.EventHandler(this.btnAggProd_Click);
            // 
            // gbxProducto
            // 
            this.gbxProducto.BackColor = System.Drawing.Color.AntiqueWhite;
            this.gbxProducto.Controls.Add(this.btnBuscarP);
            this.gbxProducto.Controls.Add(this.label7);
            this.gbxProducto.Controls.Add(this.txtCantidad);
            this.gbxProducto.Controls.Add(this.label5);
            this.gbxProducto.Controls.Add(this.txtDescripcion);
            this.gbxProducto.Controls.Add(this.txtCodigoPro);
            this.gbxProducto.Controls.Add(this.label15);
            this.gbxProducto.Controls.Add(this.label16);
            this.gbxProducto.Controls.Add(this.txtPrecioU);
            this.gbxProducto.Font = new System.Drawing.Font("Palatino Linotype", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gbxProducto.Location = new System.Drawing.Point(52, 182);
            this.gbxProducto.Name = "gbxProducto";
            this.gbxProducto.Size = new System.Drawing.Size(719, 80);
            this.gbxProducto.TabIndex = 13;
            this.gbxProducto.TabStop = false;
            this.gbxProducto.Text = "Detalle de Producto:";
            // 
            // btnBuscarP
            // 
            this.btnBuscarP.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnBuscarP.IconChar = FontAwesome.Sharp.IconChar.MagnifyingGlass;
            this.btnBuscarP.IconColor = System.Drawing.Color.Black;
            this.btnBuscarP.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnBuscarP.IconSize = 15;
            this.btnBuscarP.Location = new System.Drawing.Point(375, 43);
            this.btnBuscarP.Name = "btnBuscarP";
            this.btnBuscarP.Size = new System.Drawing.Size(41, 23);
            this.btnBuscarP.TabIndex = 51;
            this.btnBuscarP.UseVisualStyleBackColor = true;
            this.btnBuscarP.Click += new System.EventHandler(this.btnBuscarP_Click);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Palatino Linotype", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(567, 23);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(59, 17);
            this.label7.TabIndex = 8;
            this.label7.Text = "Cantidad";
            // 
            // txtCantidad
            // 
            this.txtCantidad.Location = new System.Drawing.Point(570, 43);
            this.txtCantidad.Name = "txtCantidad";
            this.txtCantidad.Size = new System.Drawing.Size(118, 22);
            this.txtCantidad.TabIndex = 11;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Palatino Linotype", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(98, 25);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(74, 17);
            this.label5.TabIndex = 2;
            this.label5.Text = "Descripcion";
            // 
            // txtDescripcion
            // 
            this.txtDescripcion.Location = new System.Drawing.Point(101, 43);
            this.txtDescripcion.Name = "txtDescripcion";
            this.txtDescripcion.ReadOnly = true;
            this.txtDescripcion.Size = new System.Drawing.Size(271, 22);
            this.txtDescripcion.TabIndex = 5;
            // 
            // txtCodigoPro
            // 
            this.txtCodigoPro.Location = new System.Drawing.Point(18, 44);
            this.txtCodigoPro.Name = "txtCodigoPro";
            this.txtCodigoPro.ReadOnly = true;
            this.txtCodigoPro.Size = new System.Drawing.Size(53, 22);
            this.txtCodigoPro.TabIndex = 3;
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Font = new System.Drawing.Font("Palatino Linotype", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label15.Location = new System.Drawing.Point(15, 25);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(51, 17);
            this.label15.TabIndex = 0;
            this.label15.Text = "Codigo:";
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.Font = new System.Drawing.Font("Palatino Linotype", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label16.Location = new System.Drawing.Point(430, 25);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(106, 17);
            this.label16.TabIndex = 7;
            this.label16.Text = "Precio por unidad";
            // 
            // txtPrecioU
            // 
            this.txtPrecioU.Location = new System.Drawing.Point(433, 45);
            this.txtPrecioU.Name = "txtPrecioU";
            this.txtPrecioU.ReadOnly = true;
            this.txtPrecioU.Size = new System.Drawing.Size(113, 22);
            this.txtPrecioU.TabIndex = 10;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.AntiqueWhite;
            this.label2.Font = new System.Drawing.Font("Palatino Linotype", 36F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.SystemColors.MenuText;
            this.label2.Location = new System.Drawing.Point(249, 6);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(550, 65);
            this.label2.TabIndex = 12;
            this.label2.Text = "REGISTRO DE VENTA";
            // 
            // label1
            // 
            this.label1.BackColor = System.Drawing.Color.AntiqueWhite;
            this.label1.Location = new System.Drawing.Point(12, -30);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(993, 610);
            this.label1.TabIndex = 22;
            // 
            // gbxPago
            // 
            this.gbxPago.BackColor = System.Drawing.Color.AntiqueWhite;
            this.gbxPago.Controls.Add(this.label6);
            this.gbxPago.Controls.Add(this.cbmPago);
            this.gbxPago.Controls.Add(this.cbmDocumento);
            this.gbxPago.Controls.Add(this.label9);
            this.gbxPago.Font = new System.Drawing.Font("Palatino Linotype", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gbxPago.Location = new System.Drawing.Point(802, 290);
            this.gbxPago.Name = "gbxPago";
            this.gbxPago.Size = new System.Drawing.Size(180, 135);
            this.gbxPago.TabIndex = 23;
            this.gbxPago.TabStop = false;
            this.gbxPago.Text = "Pago:";
            // 
            // cbmDocumento
            // 
            this.cbmDocumento.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbmDocumento.FormattingEnabled = true;
            this.cbmDocumento.Location = new System.Drawing.Point(25, 40);
            this.cbmDocumento.Name = "cbmDocumento";
            this.cbmDocumento.Size = new System.Drawing.Size(141, 25);
            this.cbmDocumento.TabIndex = 20;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Palatino Linotype", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(32, 20);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(118, 17);
            this.label9.TabIndex = 8;
            this.label9.Text = "Tipo de documento:";
            // 
            // txtCli
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Tan;
            this.ClientSize = new System.Drawing.Size(1017, 551);
            this.Controls.Add(this.gbxPago);
            this.Controls.Add(this.btnBorrarO);
            this.Controls.Add(this.btnVenta);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.dgvSeleccion);
            this.Controls.Add(this.btnAggProd);
            this.Controls.Add(this.gbxProducto);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.ForeColor = System.Drawing.SystemColors.MenuText;
            this.Name = "txtCli";
            this.Text = "FormVenta";
            ((System.ComponentModel.ISupportInitialize)(this.errorProvider)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvSeleccion)).EndInit();
            this.gbxProducto.ResumeLayout(false);
            this.gbxProducto.PerformLayout();
            this.gbxPago.ResumeLayout(false);
            this.gbxPago.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }
        /*
        private void FormVenta_Load(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }
        */
        #endregion
        private System.Windows.Forms.ErrorProvider errorProvider;
        private System.Windows.Forms.Button btnBorrarO;
        private System.Windows.Forms.Button btnVenta;
        private System.Windows.Forms.ComboBox cbmPago;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtNombre;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtNumeroDoc;
        private System.Windows.Forms.TextBox txtDoc;
        private System.Windows.Forms.TextBox txtIdCli;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.DataGridView dgvSeleccion;
        private System.Windows.Forms.Button btnAggProd;
        private System.Windows.Forms.GroupBox gbxProducto;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtDescripcion;
        private System.Windows.Forms.TextBox txtCantidad;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txtCodigoPro;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.TextBox txtPrecioU;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox gbxPago;
        private FontAwesome.Sharp.IconButton btnBuscarCli;
        private FontAwesome.Sharp.IconButton btnBuscarP;
        private System.Windows.Forms.DataGridViewTextBoxColumn ID;
        private System.Windows.Forms.DataGridViewTextBoxColumn idInv;
        private System.Windows.Forms.DataGridViewTextBoxColumn descripcion;
        private System.Windows.Forms.DataGridViewTextBoxColumn precioXunidad;
        private System.Windows.Forms.DataGridViewTextBoxColumn stock;
        private System.Windows.Forms.ComboBox cbmDocumento;
        private System.Windows.Forms.Label label9;
    }
}
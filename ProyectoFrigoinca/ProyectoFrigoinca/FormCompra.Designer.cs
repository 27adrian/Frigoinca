namespace ProyectoFrigoinca
{
    partial class FormCompra
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.gbxCliente = new System.Windows.Forms.GroupBox();
            this.btnBuscarProv = new FontAwesome.Sharp.IconButton();
            this.txtRazonSocial = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.txtIdProv = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.gbxProducto = new System.Windows.Forms.GroupBox();
            this.txtCantidad = new System.Windows.Forms.TextBox();
            this.txtNomProducto = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.txtPrecioUnidad = new System.Windows.Forms.TextBox();
            this.txtCodigoPro = new System.Windows.Forms.TextBox();
            this.label16 = new System.Windows.Forms.Label();
            this.label15 = new System.Windows.Forms.Label();
            this.label17 = new System.Windows.Forms.Label();
            this.dgvCompra = new System.Windows.Forms.DataGridView();
            this.btnRealizar = new FontAwesome.Sharp.IconButton();
            this.btnAñadir = new FontAwesome.Sharp.IconButton();
            this.errorProvider = new System.Windows.Forms.ErrorProvider(this.components);
            this.btnCancelar = new FontAwesome.Sharp.IconButton();
            this.gbxPago = new System.Windows.Forms.GroupBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txtPrecioTotal = new System.Windows.Forms.TextBox();
            this.cbmMetodoPago = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.txtFecha = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txtRequerimiento = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.txtIdReqCompra = new System.Windows.Forms.TextBox();
            this.cbxEstado = new System.Windows.Forms.CheckBox();
            this.btnBuscar = new FontAwesome.Sharp.IconButton();
            this.gbxCliente.SuspendLayout();
            this.gbxProducto.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvCompra)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.errorProvider)).BeginInit();
            this.gbxPago.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.BackColor = System.Drawing.Color.AntiqueWhite;
            this.label1.Location = new System.Drawing.Point(12, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(965, 610);
            this.label1.TabIndex = 0;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.AntiqueWhite;
            this.label2.Font = new System.Drawing.Font("Palatino Linotype", 27.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.SystemColors.MenuText;
            this.label2.Location = new System.Drawing.Point(225, 9);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(464, 50);
            this.label2.TabIndex = 2;
            this.label2.Text = "REGISTRO DE COMPRA";
            // 
            // gbxCliente
            // 
            this.gbxCliente.BackColor = System.Drawing.Color.AntiqueWhite;
            this.gbxCliente.Controls.Add(this.btnBuscarProv);
            this.gbxCliente.Controls.Add(this.txtRazonSocial);
            this.gbxCliente.Controls.Add(this.label10);
            this.gbxCliente.Controls.Add(this.txtIdProv);
            this.gbxCliente.Controls.Add(this.label3);
            this.gbxCliente.Font = new System.Drawing.Font("Palatino Linotype", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gbxCliente.Location = new System.Drawing.Point(250, 79);
            this.gbxCliente.Name = "gbxCliente";
            this.gbxCliente.Size = new System.Drawing.Size(417, 75);
            this.gbxCliente.TabIndex = 30;
            this.gbxCliente.TabStop = false;
            this.gbxCliente.Text = "Informacion del Proveedor";
            // 
            // btnBuscarProv
            // 
            this.btnBuscarProv.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnBuscarProv.IconChar = FontAwesome.Sharp.IconChar.MagnifyingGlass;
            this.btnBuscarProv.IconColor = System.Drawing.Color.Black;
            this.btnBuscarProv.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnBuscarProv.IconSize = 15;
            this.btnBuscarProv.Location = new System.Drawing.Point(182, 35);
            this.btnBuscarProv.Name = "btnBuscarProv";
            this.btnBuscarProv.Size = new System.Drawing.Size(38, 22);
            this.btnBuscarProv.TabIndex = 49;
            this.btnBuscarProv.UseVisualStyleBackColor = true;
            this.btnBuscarProv.Click += new System.EventHandler(this.btnBuscar_Click);
            // 
            // txtRazonSocial
            // 
            this.txtRazonSocial.Location = new System.Drawing.Point(252, 35);
            this.txtRazonSocial.Name = "txtRazonSocial";
            this.txtRazonSocial.ReadOnly = true;
            this.txtRazonSocial.Size = new System.Drawing.Size(148, 22);
            this.txtRazonSocial.TabIndex = 4;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Palatino Linotype", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.Location = new System.Drawing.Point(249, 16);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(82, 17);
            this.label10.TabIndex = 3;
            this.label10.Text = "Razon Social:";
            // 
            // txtIdProv
            // 
            this.txtIdProv.Location = new System.Drawing.Point(15, 35);
            this.txtIdProv.Name = "txtIdProv";
            this.txtIdProv.Size = new System.Drawing.Size(161, 22);
            this.txtIdProv.TabIndex = 1;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Palatino Linotype", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(14, 16);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(85, 17);
            this.label3.TabIndex = 0;
            this.label3.Text = "Id Proveedor:";
            // 
            // gbxProducto
            // 
            this.gbxProducto.BackColor = System.Drawing.Color.AntiqueWhite;
            this.gbxProducto.Controls.Add(this.txtCantidad);
            this.gbxProducto.Controls.Add(this.txtNomProducto);
            this.gbxProducto.Controls.Add(this.label7);
            this.gbxProducto.Controls.Add(this.txtPrecioUnidad);
            this.gbxProducto.Controls.Add(this.txtCodigoPro);
            this.gbxProducto.Controls.Add(this.label16);
            this.gbxProducto.Controls.Add(this.label15);
            this.gbxProducto.Controls.Add(this.label17);
            this.gbxProducto.Font = new System.Drawing.Font("Palatino Linotype", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gbxProducto.Location = new System.Drawing.Point(47, 160);
            this.gbxProducto.Name = "gbxProducto";
            this.gbxProducto.Size = new System.Drawing.Size(620, 84);
            this.gbxProducto.TabIndex = 31;
            this.gbxProducto.TabStop = false;
            this.gbxProducto.Text = "Detalle de Producto:";
            // 
            // txtCantidad
            // 
            this.txtCantidad.Location = new System.Drawing.Point(323, 42);
            this.txtCantidad.Name = "txtCantidad";
            this.txtCantidad.Size = new System.Drawing.Size(104, 22);
            this.txtCantidad.TabIndex = 59;
            this.txtCantidad.TextChanged += new System.EventHandler(this.txtCantidad_TextChanged);
            // 
            // txtNomProducto
            // 
            this.txtNomProducto.Font = new System.Drawing.Font("Palatino Linotype", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtNomProducto.Location = new System.Drawing.Point(143, 38);
            this.txtNomProducto.Name = "txtNomProducto";
            this.txtNomProducto.ReadOnly = true;
            this.txtNomProducto.Size = new System.Drawing.Size(148, 25);
            this.txtNomProducto.TabIndex = 58;
            this.txtNomProducto.TextChanged += new System.EventHandler(this.txtNomProducto_TextChanged);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Palatino Linotype", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(320, 22);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(59, 17);
            this.label7.TabIndex = 52;
            this.label7.Text = "Cantidad";
            // 
            // txtPrecioUnidad
            // 
            this.txtPrecioUnidad.Location = new System.Drawing.Point(455, 44);
            this.txtPrecioUnidad.Name = "txtPrecioUnidad";
            this.txtPrecioUnidad.Size = new System.Drawing.Size(104, 22);
            this.txtPrecioUnidad.TabIndex = 54;
            this.txtPrecioUnidad.TextChanged += new System.EventHandler(this.txtPrecioUnidad_TextChanged);
            // 
            // txtCodigoPro
            // 
            this.txtCodigoPro.Location = new System.Drawing.Point(17, 40);
            this.txtCodigoPro.Name = "txtCodigoPro";
            this.txtCodigoPro.Size = new System.Drawing.Size(100, 22);
            this.txtCodigoPro.TabIndex = 10;
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.Font = new System.Drawing.Font("Palatino Linotype", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label16.Location = new System.Drawing.Point(452, 21);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(91, 17);
            this.label16.TabIndex = 7;
            this.label16.Text = "Precio Unitario";
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Font = new System.Drawing.Font("Palatino Linotype", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label15.Location = new System.Drawing.Point(14, 21);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(51, 17);
            this.label15.TabIndex = 9;
            this.label15.Text = "Codigo:";
            // 
            // label17
            // 
            this.label17.AutoSize = true;
            this.label17.Font = new System.Drawing.Font("Palatino Linotype", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label17.Location = new System.Drawing.Point(140, 21);
            this.label17.Name = "label17";
            this.label17.Size = new System.Drawing.Size(124, 17);
            this.label17.TabIndex = 6;
            this.label17.Text = "Nombre de producto";
            // 
            // dgvCompra
            // 
            this.dgvCompra.AllowUserToAddRows = false;
            this.dgvCompra.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Mongolian Baiti", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle1.Padding = new System.Windows.Forms.Padding(2);
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvCompra.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.dgvCompra.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvCompra.Location = new System.Drawing.Point(47, 253);
            this.dgvCompra.MultiSelect = false;
            this.dgvCompra.Name = "dgvCompra";
            this.dgvCompra.ReadOnly = true;
            this.dgvCompra.RowHeadersVisible = false;
            this.dgvCompra.RowHeadersWidth = 51;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.Color.White;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.Color.Black;
            this.dgvCompra.RowsDefaultCellStyle = dataGridViewCellStyle2;
            this.dgvCompra.ScrollBars = System.Windows.Forms.ScrollBars.Horizontal;
            this.dgvCompra.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvCompra.Size = new System.Drawing.Size(620, 258);
            this.dgvCompra.TabIndex = 46;
            // 
            // btnRealizar
            // 
            this.btnRealizar.BackColor = System.Drawing.Color.DarkSeaGreen;
            this.btnRealizar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnRealizar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnRealizar.Font = new System.Drawing.Font("Palatino Linotype", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnRealizar.ForeColor = System.Drawing.Color.MintCream;
            this.btnRealizar.IconChar = FontAwesome.Sharp.IconChar.NotesMedical;
            this.btnRealizar.IconColor = System.Drawing.Color.MintCream;
            this.btnRealizar.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnRealizar.IconSize = 45;
            this.btnRealizar.ImageAlign = System.Drawing.ContentAlignment.TopCenter;
            this.btnRealizar.Location = new System.Drawing.Point(765, 380);
            this.btnRealizar.Name = "btnRealizar";
            this.btnRealizar.Size = new System.Drawing.Size(114, 75);
            this.btnRealizar.TabIndex = 58;
            this.btnRealizar.Text = "COMPRAR";
            this.btnRealizar.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.btnRealizar.UseVisualStyleBackColor = false;
            this.btnRealizar.Click += new System.EventHandler(this.btnAgregar_Click);
            // 
            // btnAñadir
            // 
            this.btnAñadir.BackColor = System.Drawing.Color.SkyBlue;
            this.btnAñadir.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnAñadir.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnAñadir.Font = new System.Drawing.Font("Palatino Linotype", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnAñadir.ForeColor = System.Drawing.Color.Snow;
            this.btnAñadir.IconChar = FontAwesome.Sharp.IconChar.FileCirclePlus;
            this.btnAñadir.IconColor = System.Drawing.Color.Snow;
            this.btnAñadir.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnAñadir.IconSize = 30;
            this.btnAñadir.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnAñadir.Location = new System.Drawing.Point(739, 56);
            this.btnAñadir.Name = "btnAñadir";
            this.btnAñadir.Size = new System.Drawing.Size(167, 42);
            this.btnAñadir.TabIndex = 63;
            this.btnAñadir.Text = "NuevaCompra";
            this.btnAñadir.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnAñadir.UseVisualStyleBackColor = false;
            this.btnAñadir.Click += new System.EventHandler(this.btnVerificar_Click);
            // 
            // errorProvider
            // 
            this.errorProvider.ContainerControl = this;
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
            this.btnCancelar.Location = new System.Drawing.Point(765, 475);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(114, 36);
            this.btnCancelar.TabIndex = 65;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnCancelar.UseVisualStyleBackColor = false;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // gbxPago
            // 
            this.gbxPago.BackColor = System.Drawing.Color.AntiqueWhite;
            this.gbxPago.Controls.Add(this.label5);
            this.gbxPago.Controls.Add(this.txtPrecioTotal);
            this.gbxPago.Controls.Add(this.cbmMetodoPago);
            this.gbxPago.Controls.Add(this.label4);
            this.gbxPago.Font = new System.Drawing.Font("Palatino Linotype", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gbxPago.Location = new System.Drawing.Point(690, 253);
            this.gbxPago.Name = "gbxPago";
            this.gbxPago.Size = new System.Drawing.Size(261, 110);
            this.gbxPago.TabIndex = 50;
            this.gbxPago.TabStop = false;
            this.gbxPago.Text = "Ingresar pago:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.BackColor = System.Drawing.Color.AntiqueWhite;
            this.label5.Font = new System.Drawing.Font("Palatino Linotype", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(32, 53);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(102, 17);
            this.label5.TabIndex = 68;
            this.label5.Text = "Metodo de pago:";
            // 
            // txtPrecioTotal
            // 
            this.txtPrecioTotal.Font = new System.Drawing.Font("Palatino Linotype", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtPrecioTotal.Location = new System.Drawing.Point(107, 24);
            this.txtPrecioTotal.Name = "txtPrecioTotal";
            this.txtPrecioTotal.ReadOnly = true;
            this.txtPrecioTotal.Size = new System.Drawing.Size(135, 25);
            this.txtPrecioTotal.TabIndex = 60;
            // 
            // cbmMetodoPago
            // 
            this.cbmMetodoPago.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbmMetodoPago.FormattingEnabled = true;
            this.cbmMetodoPago.Location = new System.Drawing.Point(35, 73);
            this.cbmMetodoPago.Name = "cbmMetodoPago";
            this.cbmMetodoPago.Size = new System.Drawing.Size(207, 24);
            this.cbmMetodoPago.TabIndex = 67;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.BackColor = System.Drawing.Color.AntiqueWhite;
            this.label4.Font = new System.Drawing.Font("Palatino Linotype", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(32, 28);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(77, 17);
            this.label4.TabIndex = 60;
            this.label4.Text = "Precio Total:";
            // 
            // groupBox2
            // 
            this.groupBox2.BackColor = System.Drawing.Color.AntiqueWhite;
            this.groupBox2.Controls.Add(this.txtFecha);
            this.groupBox2.Controls.Add(this.label8);
            this.groupBox2.Font = new System.Drawing.Font("Palatino Linotype", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox2.Location = new System.Drawing.Point(47, 79);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(197, 75);
            this.groupBox2.TabIndex = 50;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Informacion de compra";
            // 
            // txtFecha
            // 
            this.txtFecha.Font = new System.Drawing.Font("Palatino Linotype", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtFecha.Location = new System.Drawing.Point(17, 32);
            this.txtFecha.Name = "txtFecha";
            this.txtFecha.ReadOnly = true;
            this.txtFecha.Size = new System.Drawing.Size(174, 25);
            this.txtFecha.TabIndex = 60;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Palatino Linotype", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(14, 16);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(45, 17);
            this.label8.TabIndex = 0;
            this.label8.Text = "Fecha:";
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.Color.AntiqueWhite;
            this.groupBox1.Controls.Add(this.txtRequerimiento);
            this.groupBox1.Controls.Add(this.label9);
            this.groupBox1.Font = new System.Drawing.Font("Palatino Linotype", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(690, 124);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(261, 60);
            this.groupBox1.TabIndex = 69;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Requerimiento:";
            // 
            // txtRequerimiento
            // 
            this.txtRequerimiento.Font = new System.Drawing.Font("Palatino Linotype", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtRequerimiento.Location = new System.Drawing.Point(103, 15);
            this.txtRequerimiento.Name = "txtRequerimiento";
            this.txtRequerimiento.ReadOnly = true;
            this.txtRequerimiento.Size = new System.Drawing.Size(135, 25);
            this.txtRequerimiento.TabIndex = 60;
            this.txtRequerimiento.TextChanged += new System.EventHandler(this.txtRequerimiento_TextChanged);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.BackColor = System.Drawing.Color.AntiqueWhite;
            this.label9.Font = new System.Drawing.Font("Palatino Linotype", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(20, 23);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(77, 17);
            this.label9.TabIndex = 60;
            this.label9.Text = "Descripcion:";
            // 
            // txtIdReqCompra
            // 
            this.txtIdReqCompra.Font = new System.Drawing.Font("Palatino Linotype", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtIdReqCompra.Location = new System.Drawing.Point(932, 9);
            this.txtIdReqCompra.Name = "txtIdReqCompra";
            this.txtIdReqCompra.ReadOnly = true;
            this.txtIdReqCompra.Size = new System.Drawing.Size(30, 25);
            this.txtIdReqCompra.TabIndex = 70;
            // 
            // cbxEstado
            // 
            this.cbxEstado.AutoSize = true;
            this.cbxEstado.Location = new System.Drawing.Point(54, 56);
            this.cbxEstado.Name = "cbxEstado";
            this.cbxEstado.Size = new System.Drawing.Size(58, 17);
            this.cbxEstado.TabIndex = 71;
            this.cbxEstado.Text = "estado";
            this.cbxEstado.UseVisualStyleBackColor = true;
            // 
            // btnBuscar
            // 
            this.btnBuscar.BackColor = System.Drawing.Color.Sienna;
            this.btnBuscar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnBuscar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnBuscar.Font = new System.Drawing.Font("Palatino Linotype", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnBuscar.ForeColor = System.Drawing.Color.Snow;
            this.btnBuscar.IconChar = FontAwesome.Sharp.IconChar.FileContract;
            this.btnBuscar.IconColor = System.Drawing.Color.Snow;
            this.btnBuscar.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnBuscar.IconSize = 30;
            this.btnBuscar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnBuscar.Location = new System.Drawing.Point(765, 190);
            this.btnBuscar.Name = "btnBuscar";
            this.btnBuscar.Size = new System.Drawing.Size(96, 42);
            this.btnBuscar.TabIndex = 72;
            this.btnBuscar.Text = "Buscar";
            this.btnBuscar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnBuscar.UseVisualStyleBackColor = false;
            this.btnBuscar.Click += new System.EventHandler(this.btnBuscar_Click_1);
            // 
            // FormCompra
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Tan;
            this.ClientSize = new System.Drawing.Size(989, 521);
            this.Controls.Add(this.btnBuscar);
            this.Controls.Add(this.cbxEstado);
            this.Controls.Add(this.txtIdReqCompra);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.gbxPago);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.btnAñadir);
            this.Controls.Add(this.btnRealizar);
            this.Controls.Add(this.dgvCompra);
            this.Controls.Add(this.gbxProducto);
            this.Controls.Add(this.gbxCliente);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "FormCompra";
            this.Text = "FormCompra";
            this.gbxCliente.ResumeLayout(false);
            this.gbxCliente.PerformLayout();
            this.gbxProducto.ResumeLayout(false);
            this.gbxProducto.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvCompra)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.errorProvider)).EndInit();
            this.gbxPago.ResumeLayout(false);
            this.gbxPago.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.GroupBox gbxCliente;
        private FontAwesome.Sharp.IconButton btnBuscarProv;
        private System.Windows.Forms.TextBox txtRazonSocial;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox txtIdProv;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.GroupBox gbxProducto;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txtCodigoPro;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.Label label17;
        private System.Windows.Forms.TextBox txtPrecioUnidad;
        private System.Windows.Forms.DataGridView dgvCompra;
        private FontAwesome.Sharp.IconButton btnRealizar;
        private System.Windows.Forms.TextBox txtNomProducto;
        private FontAwesome.Sharp.IconButton btnAñadir;
        private System.Windows.Forms.TextBox txtCantidad;
        private System.Windows.Forms.ErrorProvider errorProvider;
        private FontAwesome.Sharp.IconButton btnCancelar;
        private System.Windows.Forms.GroupBox gbxPago;
        private System.Windows.Forms.ComboBox cbmMetodoPago;
        private System.Windows.Forms.TextBox txtPrecioTotal;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.TextBox txtFecha;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox txtRequerimiento;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox txtIdReqCompra;
        private System.Windows.Forms.CheckBox cbxEstado;
        private FontAwesome.Sharp.IconButton btnBuscar;
    }
}
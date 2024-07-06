namespace ProyectoFrigoinca
{
    partial class FormProveedor
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
            this.gbxProveedor = new System.Windows.Forms.GroupBox();
            this.iconButton2 = new FontAwesome.Sharp.IconButton();
            this.btnUbigeo = new FontAwesome.Sharp.IconButton();
            this.label9 = new System.Windows.Forms.Label();
            this.txtRuc = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.txtTelefono = new System.Windows.Forms.TextBox();
            this.txtDireccion = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txtIdPro = new System.Windows.Forms.TextBox();
            this.txtUbigeo = new System.Windows.Forms.TextBox();
            this.txtNombre = new System.Windows.Forms.TextBox();
            this.cbxEstado = new System.Windows.Forms.CheckBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.gbxAnimal = new System.Windows.Forms.GroupBox();
            this.cbmEspecie = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.dgvProveedor = new System.Windows.Forms.DataGridView();
            this.label3 = new System.Windows.Forms.Label();
            this.btnRegistrar = new FontAwesome.Sharp.IconButton();
            this.btnModificar = new FontAwesome.Sharp.IconButton();
            this.btnEditar = new FontAwesome.Sharp.IconButton();
            this.btnNuevo = new FontAwesome.Sharp.IconButton();
            this.btnDeshabilitar = new FontAwesome.Sharp.IconButton();
            this.btnCancelar = new FontAwesome.Sharp.IconButton();
            this.cbmCriterios = new System.Windows.Forms.ComboBox();
            this.label10 = new System.Windows.Forms.Label();
            this.txtBuscartex = new System.Windows.Forms.TextBox();
            this.label14 = new System.Windows.Forms.Label();
            this.btnBuscar = new FontAwesome.Sharp.IconButton();
            this.dtpFecha = new System.Windows.Forms.DateTimePicker();
            this.label15 = new System.Windows.Forms.Label();
            this.btnLimpiar = new FontAwesome.Sharp.IconButton();
            this.gbxBuscar = new System.Windows.Forms.GroupBox();
            this.iconPictureBox2 = new FontAwesome.Sharp.IconPictureBox();
            this.label16 = new System.Windows.Forms.Label();
            this.txtBuscar2 = new System.Windows.Forms.TextBox();
            this.btnBusqueda = new FontAwesome.Sharp.IconButton();
            this.gbxUbigeo = new System.Windows.Forms.GroupBox();
            this.iconButton1 = new FontAwesome.Sharp.IconButton();
            this.label13 = new System.Windows.Forms.Label();
            this.cbxDistrito = new System.Windows.Forms.ComboBox();
            this.label12 = new System.Windows.Forms.Label();
            this.cbxProvincia = new System.Windows.Forms.ComboBox();
            this.label11 = new System.Windows.Forms.Label();
            this.cbxDepartamento = new System.Windows.Forms.ComboBox();
            this.txtUbiId = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label17 = new System.Windows.Forms.Label();
            this.gbxProveedor.SuspendLayout();
            this.gbxAnimal.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvProveedor)).BeginInit();
            this.gbxBuscar.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.iconPictureBox2)).BeginInit();
            this.gbxUbigeo.SuspendLayout();
            this.SuspendLayout();
            // 
            // gbxProveedor
            // 
            this.gbxProveedor.BackColor = System.Drawing.Color.AntiqueWhite;
            this.gbxProveedor.Controls.Add(this.iconButton2);
            this.gbxProveedor.Controls.Add(this.btnUbigeo);
            this.gbxProveedor.Controls.Add(this.label9);
            this.gbxProveedor.Controls.Add(this.txtRuc);
            this.gbxProveedor.Controls.Add(this.label8);
            this.gbxProveedor.Controls.Add(this.label7);
            this.gbxProveedor.Controls.Add(this.txtTelefono);
            this.gbxProveedor.Controls.Add(this.txtDireccion);
            this.gbxProveedor.Controls.Add(this.label5);
            this.gbxProveedor.Controls.Add(this.txtIdPro);
            this.gbxProveedor.Controls.Add(this.txtUbigeo);
            this.gbxProveedor.Controls.Add(this.txtNombre);
            this.gbxProveedor.Controls.Add(this.cbxEstado);
            this.gbxProveedor.Controls.Add(this.label4);
            this.gbxProveedor.Controls.Add(this.label6);
            this.gbxProveedor.Font = new System.Drawing.Font("Palatino Linotype", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gbxProveedor.Location = new System.Drawing.Point(32, 82);
            this.gbxProveedor.Name = "gbxProveedor";
            this.gbxProveedor.Size = new System.Drawing.Size(776, 137);
            this.gbxProveedor.TabIndex = 4;
            this.gbxProveedor.TabStop = false;
            this.gbxProveedor.Text = "Datos de Proveedor";
            // 
            // iconButton2
            // 
            this.iconButton2.Cursor = System.Windows.Forms.Cursors.Hand;
            this.iconButton2.IconChar = FontAwesome.Sharp.IconChar.MagnifyingGlass;
            this.iconButton2.IconColor = System.Drawing.Color.Black;
            this.iconButton2.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.iconButton2.IconSize = 15;
            this.iconButton2.Location = new System.Drawing.Point(245, 41);
            this.iconButton2.Name = "iconButton2";
            this.iconButton2.Size = new System.Drawing.Size(32, 25);
            this.iconButton2.TabIndex = 53;
            this.iconButton2.UseVisualStyleBackColor = true;
            this.iconButton2.Click += new System.EventHandler(this.iconButton2_Click);
            // 
            // btnUbigeo
            // 
            this.btnUbigeo.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnUbigeo.IconChar = FontAwesome.Sharp.IconChar.MagnifyingGlass;
            this.btnUbigeo.IconColor = System.Drawing.Color.Black;
            this.btnUbigeo.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnUbigeo.IconSize = 15;
            this.btnUbigeo.Location = new System.Drawing.Point(497, 94);
            this.btnUbigeo.Name = "btnUbigeo";
            this.btnUbigeo.Size = new System.Drawing.Size(34, 24);
            this.btnUbigeo.TabIndex = 52;
            this.btnUbigeo.UseVisualStyleBackColor = true;
            this.btnUbigeo.Click += new System.EventHandler(this.btnUbigeo_Click);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(76, 20);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(34, 18);
            this.label9.TabIndex = 13;
            this.label9.Text = "Ruc:";
            // 
            // txtRuc
            // 
            this.txtRuc.Font = new System.Drawing.Font("Palatino Linotype", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtRuc.Location = new System.Drawing.Point(79, 41);
            this.txtRuc.Name = "txtRuc";
            this.txtRuc.Size = new System.Drawing.Size(153, 25);
            this.txtRuc.TabIndex = 12;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(633, 20);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(60, 18);
            this.label8.TabIndex = 11;
            this.label8.Text = "Telefono:";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(22, 73);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(67, 18);
            this.label7.TabIndex = 10;
            this.label7.Text = "Direccion:";
            // 
            // txtTelefono
            // 
            this.txtTelefono.Font = new System.Drawing.Font("Palatino Linotype", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtTelefono.Location = new System.Drawing.Point(636, 41);
            this.txtTelefono.Name = "txtTelefono";
            this.txtTelefono.Size = new System.Drawing.Size(129, 25);
            this.txtTelefono.TabIndex = 9;
            this.txtTelefono.TextChanged += new System.EventHandler(this.txtTelefono_TextChanged);
            this.txtTelefono.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtTelefono_KeyPress);
            // 
            // txtDireccion
            // 
            this.txtDireccion.Font = new System.Drawing.Font("Palatino Linotype", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtDireccion.Location = new System.Drawing.Point(25, 94);
            this.txtDireccion.Name = "txtDireccion";
            this.txtDireccion.ReadOnly = true;
            this.txtDireccion.Size = new System.Drawing.Size(310, 25);
            this.txtDireccion.TabIndex = 8;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(20, 20);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(20, 18);
            this.label5.TabIndex = 7;
            this.label5.Text = "Id";
            // 
            // txtIdPro
            // 
            this.txtIdPro.Font = new System.Drawing.Font("Palatino Linotype", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtIdPro.Location = new System.Drawing.Point(23, 41);
            this.txtIdPro.Name = "txtIdPro";
            this.txtIdPro.Size = new System.Drawing.Size(38, 25);
            this.txtIdPro.TabIndex = 6;
            // 
            // txtUbigeo
            // 
            this.txtUbigeo.Font = new System.Drawing.Font("Palatino Linotype", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtUbigeo.Location = new System.Drawing.Point(390, 94);
            this.txtUbigeo.Name = "txtUbigeo";
            this.txtUbigeo.Size = new System.Drawing.Size(88, 25);
            this.txtUbigeo.TabIndex = 5;
            // 
            // txtNombre
            // 
            this.txtNombre.Font = new System.Drawing.Font("Palatino Linotype", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtNombre.Location = new System.Drawing.Point(303, 41);
            this.txtNombre.Name = "txtNombre";
            this.txtNombre.ReadOnly = true;
            this.txtNombre.Size = new System.Drawing.Size(309, 25);
            this.txtNombre.TabIndex = 4;
            // 
            // cbxEstado
            // 
            this.cbxEstado.AutoSize = true;
            this.cbxEstado.Location = new System.Drawing.Point(604, 94);
            this.cbxEstado.Name = "cbxEstado";
            this.cbxEstado.Size = new System.Drawing.Size(67, 22);
            this.cbxEstado.TabIndex = 3;
            this.cbxEstado.Text = "Estado";
            this.cbxEstado.UseVisualStyleBackColor = true;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(387, 73);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(53, 18);
            this.label4.TabIndex = 2;
            this.label4.Text = "Ubigeo:";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(300, 21);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(86, 18);
            this.label6.TabIndex = 0;
            this.label6.Text = "Razon social:";
            // 
            // gbxAnimal
            // 
            this.gbxAnimal.BackColor = System.Drawing.Color.AntiqueWhite;
            this.gbxAnimal.Controls.Add(this.cbmEspecie);
            this.gbxAnimal.Controls.Add(this.label1);
            this.gbxAnimal.Font = new System.Drawing.Font("Palatino Linotype", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gbxAnimal.Location = new System.Drawing.Point(32, 225);
            this.gbxAnimal.Name = "gbxAnimal";
            this.gbxAnimal.Size = new System.Drawing.Size(260, 88);
            this.gbxAnimal.TabIndex = 5;
            this.gbxAnimal.TabStop = false;
            this.gbxAnimal.Text = "Datos del animal";
            // 
            // cbmEspecie
            // 
            this.cbmEspecie.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbmEspecie.Font = new System.Drawing.Font("Palatino Linotype", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbmEspecie.FormattingEnabled = true;
            this.cbmEspecie.Location = new System.Drawing.Point(25, 40);
            this.cbmEspecie.Name = "cbmEspecie";
            this.cbmEspecie.Size = new System.Drawing.Size(196, 26);
            this.cbmEspecie.TabIndex = 4;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(22, 21);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(54, 18);
            this.label1.TabIndex = 3;
            this.label1.Text = "Especie:";
            // 
            // dgvProveedor
            // 
            this.dgvProveedor.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvProveedor.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dgvProveedor.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvProveedor.Location = new System.Drawing.Point(358, 314);
            this.dgvProveedor.MultiSelect = false;
            this.dgvProveedor.Name = "dgvProveedor";
            this.dgvProveedor.ReadOnly = true;
            this.dgvProveedor.RowHeadersVisible = false;
            this.dgvProveedor.RowHeadersWidth = 51;
            this.dgvProveedor.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.dgvProveedor.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvProveedor.Size = new System.Drawing.Size(591, 221);
            this.dgvProveedor.TabIndex = 6;
            this.dgvProveedor.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvProveedor_CellClick);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.PapayaWhip;
            this.label3.Font = new System.Drawing.Font("Palatino Linotype", 27.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.SystemColors.ControlText;
            this.label3.Location = new System.Drawing.Point(235, 20);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(532, 50);
            this.label3.TabIndex = 7;
            this.label3.Text = "REGISTRO DE PROVEEDOR";
            // 
            // btnRegistrar
            // 
            this.btnRegistrar.BackColor = System.Drawing.Color.MediumAquamarine;
            this.btnRegistrar.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnRegistrar.Font = new System.Drawing.Font("Palatino Linotype", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnRegistrar.IconChar = FontAwesome.Sharp.IconChar.PeopleCarryBox;
            this.btnRegistrar.IconColor = System.Drawing.Color.Black;
            this.btnRegistrar.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnRegistrar.IconSize = 30;
            this.btnRegistrar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnRegistrar.Location = new System.Drawing.Point(523, 541);
            this.btnRegistrar.Name = "btnRegistrar";
            this.btnRegistrar.Size = new System.Drawing.Size(121, 37);
            this.btnRegistrar.TabIndex = 12;
            this.btnRegistrar.Text = "Registrar";
            this.btnRegistrar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnRegistrar.UseVisualStyleBackColor = false;
            this.btnRegistrar.Click += new System.EventHandler(this.btnRegistrar_Click);
            // 
            // btnModificar
            // 
            this.btnModificar.BackColor = System.Drawing.Color.Goldenrod;
            this.btnModificar.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnModificar.Font = new System.Drawing.Font("Palatino Linotype", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnModificar.IconChar = FontAwesome.Sharp.IconChar.UserGear;
            this.btnModificar.IconColor = System.Drawing.Color.Black;
            this.btnModificar.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnModificar.IconSize = 30;
            this.btnModificar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnModificar.Location = new System.Drawing.Point(831, 541);
            this.btnModificar.Name = "btnModificar";
            this.btnModificar.Size = new System.Drawing.Size(118, 36);
            this.btnModificar.TabIndex = 16;
            this.btnModificar.Text = "Modificar";
            this.btnModificar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnModificar.UseVisualStyleBackColor = false;
            this.btnModificar.Click += new System.EventHandler(this.btnModificar_Click);
            // 
            // btnEditar
            // 
            this.btnEditar.BackColor = System.Drawing.Color.LightGoldenrodYellow;
            this.btnEditar.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnEditar.Font = new System.Drawing.Font("Palatino Linotype", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnEditar.IconChar = FontAwesome.Sharp.IconChar.CalendarWeek;
            this.btnEditar.IconColor = System.Drawing.Color.Black;
            this.btnEditar.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnEditar.IconSize = 30;
            this.btnEditar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnEditar.Location = new System.Drawing.Point(831, 128);
            this.btnEditar.Name = "btnEditar";
            this.btnEditar.Size = new System.Drawing.Size(118, 40);
            this.btnEditar.TabIndex = 58;
            this.btnEditar.Text = "Editar";
            this.btnEditar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnEditar.UseVisualStyleBackColor = false;
            this.btnEditar.Click += new System.EventHandler(this.btnEditar_Click);
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
            this.btnNuevo.Location = new System.Drawing.Point(831, 82);
            this.btnNuevo.Name = "btnNuevo";
            this.btnNuevo.Size = new System.Drawing.Size(118, 40);
            this.btnNuevo.TabIndex = 57;
            this.btnNuevo.Text = "Nuevo";
            this.btnNuevo.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnNuevo.UseVisualStyleBackColor = false;
            this.btnNuevo.Click += new System.EventHandler(this.btnNuevo_Click);
            // 
            // btnDeshabilitar
            // 
            this.btnDeshabilitar.BackColor = System.Drawing.Color.IndianRed;
            this.btnDeshabilitar.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnDeshabilitar.Font = new System.Drawing.Font("Palatino Linotype", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnDeshabilitar.IconChar = FontAwesome.Sharp.IconChar.ChalkboardTeacher;
            this.btnDeshabilitar.IconColor = System.Drawing.Color.Black;
            this.btnDeshabilitar.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnDeshabilitar.IconSize = 30;
            this.btnDeshabilitar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnDeshabilitar.Location = new System.Drawing.Point(668, 541);
            this.btnDeshabilitar.Name = "btnDeshabilitar";
            this.btnDeshabilitar.Size = new System.Drawing.Size(140, 38);
            this.btnDeshabilitar.TabIndex = 68;
            this.btnDeshabilitar.Text = "Deshabilitar";
            this.btnDeshabilitar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnDeshabilitar.UseVisualStyleBackColor = false;
            this.btnDeshabilitar.Click += new System.EventHandler(this.btnDeshabilitar_Click);
            // 
            // btnCancelar
            // 
            this.btnCancelar.BackColor = System.Drawing.Color.Maroon;
            this.btnCancelar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnCancelar.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnCancelar.Font = new System.Drawing.Font("Mongolian Baiti", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCancelar.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.btnCancelar.IconChar = FontAwesome.Sharp.IconChar.TrashAlt;
            this.btnCancelar.IconColor = System.Drawing.Color.White;
            this.btnCancelar.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnCancelar.IconSize = 25;
            this.btnCancelar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCancelar.Location = new System.Drawing.Point(358, 545);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(133, 30);
            this.btnCancelar.TabIndex = 67;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnCancelar.UseVisualStyleBackColor = false;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click_1);
            // 
            // cbmCriterios
            // 
            this.cbmCriterios.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbmCriterios.FormattingEnabled = true;
            this.cbmCriterios.Location = new System.Drawing.Point(74, 42);
            this.cbmCriterios.Name = "cbmCriterios";
            this.cbmCriterios.Size = new System.Drawing.Size(139, 26);
            this.cbmCriterios.TabIndex = 10;
            this.cbmCriterios.SelectedIndexChanged += new System.EventHandler(this.cbmCriterios_SelectedIndexChanged);
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
            // txtBuscartex
            // 
            this.txtBuscartex.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtBuscartex.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtBuscartex.Location = new System.Drawing.Point(327, 40);
            this.txtBuscartex.Name = "txtBuscartex";
            this.txtBuscartex.Size = new System.Drawing.Size(202, 25);
            this.txtBuscartex.TabIndex = 12;
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
            // btnBuscar
            // 
            this.btnBuscar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnBuscar.IconChar = FontAwesome.Sharp.IconChar.MagnifyingGlass;
            this.btnBuscar.IconColor = System.Drawing.Color.Black;
            this.btnBuscar.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnBuscar.IconSize = 15;
            this.btnBuscar.Location = new System.Drawing.Point(219, 41);
            this.btnBuscar.Name = "btnBuscar";
            this.btnBuscar.Size = new System.Drawing.Size(36, 27);
            this.btnBuscar.TabIndex = 51;
            this.btnBuscar.UseVisualStyleBackColor = true;
            this.btnBuscar.Click += new System.EventHandler(this.btnBuscar_Click);
            // 
            // dtpFecha
            // 
            this.dtpFecha.Location = new System.Drawing.Point(328, 40);
            this.dtpFecha.Name = "dtpFecha";
            this.dtpFecha.Size = new System.Drawing.Size(203, 25);
            this.dtpFecha.TabIndex = 52;
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label15.Location = new System.Drawing.Point(73, 21);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(79, 16);
            this.label15.TabIndex = 13;
            this.label15.Text = "Buscar por:";
            // 
            // btnLimpiar
            // 
            this.btnLimpiar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnLimpiar.IconChar = FontAwesome.Sharp.IconChar.Broom;
            this.btnLimpiar.IconColor = System.Drawing.Color.Black;
            this.btnLimpiar.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnLimpiar.IconSize = 15;
            this.btnLimpiar.Location = new System.Drawing.Point(261, 41);
            this.btnLimpiar.Name = "btnLimpiar";
            this.btnLimpiar.Size = new System.Drawing.Size(37, 26);
            this.btnLimpiar.TabIndex = 67;
            this.btnLimpiar.UseVisualStyleBackColor = true;
            this.btnLimpiar.Click += new System.EventHandler(this.btnLimpiar_Click);
            // 
            // gbxBuscar
            // 
            this.gbxBuscar.BackColor = System.Drawing.Color.AntiqueWhite;
            this.gbxBuscar.Controls.Add(this.iconPictureBox2);
            this.gbxBuscar.Controls.Add(this.label16);
            this.gbxBuscar.Controls.Add(this.txtBuscar2);
            this.gbxBuscar.Controls.Add(this.btnLimpiar);
            this.gbxBuscar.Controls.Add(this.label15);
            this.gbxBuscar.Controls.Add(this.dtpFecha);
            this.gbxBuscar.Controls.Add(this.btnBuscar);
            this.gbxBuscar.Controls.Add(this.label14);
            this.gbxBuscar.Controls.Add(this.txtBuscartex);
            this.gbxBuscar.Controls.Add(this.label10);
            this.gbxBuscar.Controls.Add(this.cbmCriterios);
            this.gbxBuscar.Font = new System.Drawing.Font("Palatino Linotype", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gbxBuscar.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.gbxBuscar.Location = new System.Drawing.Point(358, 225);
            this.gbxBuscar.Name = "gbxBuscar";
            this.gbxBuscar.Size = new System.Drawing.Size(591, 83);
            this.gbxBuscar.TabIndex = 66;
            this.gbxBuscar.TabStop = false;
            this.gbxBuscar.Text = "Buscar Proveedor";
            // 
            // iconPictureBox2
            // 
            this.iconPictureBox2.BackColor = System.Drawing.Color.AntiqueWhite;
            this.iconPictureBox2.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.iconPictureBox2.IconChar = FontAwesome.Sharp.IconChar.AddressCard;
            this.iconPictureBox2.IconColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.iconPictureBox2.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.iconPictureBox2.IconSize = 45;
            this.iconPictureBox2.Location = new System.Drawing.Point(13, 23);
            this.iconPictureBox2.Name = "iconPictureBox2";
            this.iconPictureBox2.Size = new System.Drawing.Size(54, 45);
            this.iconPictureBox2.TabIndex = 70;
            this.iconPictureBox2.TabStop = false;
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label16.Location = new System.Drawing.Point(324, 23);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(48, 16);
            this.label16.TabIndex = 69;
            this.label16.Text = "Filtro: ";
            // 
            // txtBuscar2
            // 
            this.txtBuscar2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtBuscar2.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtBuscar2.Location = new System.Drawing.Point(328, 41);
            this.txtBuscar2.Name = "txtBuscar2";
            this.txtBuscar2.Size = new System.Drawing.Size(202, 25);
            this.txtBuscar2.TabIndex = 68;
            // 
            // btnBusqueda
            // 
            this.btnBusqueda.BackColor = System.Drawing.Color.LightGoldenrodYellow;
            this.btnBusqueda.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnBusqueda.Font = new System.Drawing.Font("Palatino Linotype", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnBusqueda.IconChar = FontAwesome.Sharp.IconChar.Elevator;
            this.btnBusqueda.IconColor = System.Drawing.Color.Black;
            this.btnBusqueda.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnBusqueda.IconSize = 30;
            this.btnBusqueda.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnBusqueda.Location = new System.Drawing.Point(831, 179);
            this.btnBusqueda.Name = "btnBusqueda";
            this.btnBusqueda.Size = new System.Drawing.Size(118, 40);
            this.btnBusqueda.TabIndex = 69;
            this.btnBusqueda.Text = "Buscar";
            this.btnBusqueda.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnBusqueda.UseVisualStyleBackColor = false;
            this.btnBusqueda.Click += new System.EventHandler(this.btnBusqueda_Click);
            // 
            // gbxUbigeo
            // 
            this.gbxUbigeo.BackColor = System.Drawing.Color.AntiqueWhite;
            this.gbxUbigeo.Controls.Add(this.iconButton1);
            this.gbxUbigeo.Controls.Add(this.label13);
            this.gbxUbigeo.Controls.Add(this.cbxDistrito);
            this.gbxUbigeo.Controls.Add(this.label12);
            this.gbxUbigeo.Controls.Add(this.cbxProvincia);
            this.gbxUbigeo.Controls.Add(this.label11);
            this.gbxUbigeo.Controls.Add(this.cbxDepartamento);
            this.gbxUbigeo.Controls.Add(this.txtUbiId);
            this.gbxUbigeo.Controls.Add(this.label2);
            this.gbxUbigeo.Font = new System.Drawing.Font("Palatino Linotype", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gbxUbigeo.Location = new System.Drawing.Point(32, 318);
            this.gbxUbigeo.Margin = new System.Windows.Forms.Padding(2);
            this.gbxUbigeo.Name = "gbxUbigeo";
            this.gbxUbigeo.Padding = new System.Windows.Forms.Padding(2);
            this.gbxUbigeo.Size = new System.Drawing.Size(260, 223);
            this.gbxUbigeo.TabIndex = 70;
            this.gbxUbigeo.TabStop = false;
            this.gbxUbigeo.Text = "Ubigeo";
            // 
            // iconButton1
            // 
            this.iconButton1.Cursor = System.Windows.Forms.Cursors.Hand;
            this.iconButton1.IconChar = FontAwesome.Sharp.IconChar.MagnifyingGlass;
            this.iconButton1.IconColor = System.Drawing.Color.Black;
            this.iconButton1.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.iconButton1.IconSize = 15;
            this.iconButton1.Location = new System.Drawing.Point(170, 29);
            this.iconButton1.Name = "iconButton1";
            this.iconButton1.Size = new System.Drawing.Size(38, 25);
            this.iconButton1.TabIndex = 53;
            this.iconButton1.UseVisualStyleBackColor = true;
            this.iconButton1.Click += new System.EventHandler(this.iconButton1_Click);
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(19, 162);
            this.label13.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(57, 18);
            this.label13.TabIndex = 7;
            this.label13.Text = "Distrito:";
            // 
            // cbxDistrito
            // 
            this.cbxDistrito.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxDistrito.FormattingEnabled = true;
            this.cbxDistrito.Location = new System.Drawing.Point(23, 182);
            this.cbxDistrito.Margin = new System.Windows.Forms.Padding(2);
            this.cbxDistrito.Name = "cbxDistrito";
            this.cbxDistrito.Size = new System.Drawing.Size(215, 26);
            this.cbxDistrito.TabIndex = 6;
            this.cbxDistrito.SelectedIndexChanged += new System.EventHandler(this.cbxDistrito_SelectedIndexChanged);
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(19, 114);
            this.label12.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(69, 18);
            this.label12.TabIndex = 5;
            this.label12.Text = "Provincia:";
            // 
            // cbxProvincia
            // 
            this.cbxProvincia.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxProvincia.FormattingEnabled = true;
            this.cbxProvincia.Location = new System.Drawing.Point(22, 134);
            this.cbxProvincia.Margin = new System.Windows.Forms.Padding(2);
            this.cbxProvincia.Name = "cbxProvincia";
            this.cbxProvincia.Size = new System.Drawing.Size(215, 26);
            this.cbxProvincia.TabIndex = 4;
            this.cbxProvincia.SelectedIndexChanged += new System.EventHandler(this.cbxProvincia_SelectedIndexChanged);
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Palatino Linotype", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.Location = new System.Drawing.Point(19, 66);
            this.label11.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(97, 18);
            this.label11.TabIndex = 3;
            this.label11.Text = "Departamento:";
            // 
            // cbxDepartamento
            // 
            this.cbxDepartamento.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxDepartamento.FormattingEnabled = true;
            this.cbxDepartamento.Location = new System.Drawing.Point(23, 86);
            this.cbxDepartamento.Margin = new System.Windows.Forms.Padding(2);
            this.cbxDepartamento.Name = "cbxDepartamento";
            this.cbxDepartamento.Size = new System.Drawing.Size(214, 26);
            this.cbxDepartamento.TabIndex = 2;
            this.cbxDepartamento.SelectedIndexChanged += new System.EventHandler(this.cbxDepartamento_SelectedIndexChanged);
            // 
            // txtUbiId
            // 
            this.txtUbiId.Location = new System.Drawing.Point(79, 29);
            this.txtUbiId.Margin = new System.Windows.Forms.Padding(2);
            this.txtUbiId.Name = "txtUbiId";
            this.txtUbiId.Size = new System.Drawing.Size(77, 25);
            this.txtUbiId.TabIndex = 1;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(52, 29);
            this.label2.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(24, 18);
            this.label2.TabIndex = 0;
            this.label2.Text = "ID:";
            // 
            // label17
            // 
            this.label17.BackColor = System.Drawing.Color.AntiqueWhite;
            this.label17.Location = new System.Drawing.Point(12, -28);
            this.label17.Name = "label17";
            this.label17.Size = new System.Drawing.Size(981, 646);
            this.label17.TabIndex = 71;
            // 
            // FormProveedor
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.AntiqueWhite;
            this.ClientSize = new System.Drawing.Size(1005, 590);
            this.Controls.Add(this.gbxUbigeo);
            this.Controls.Add(this.btnBusqueda);
            this.Controls.Add(this.btnRegistrar);
            this.Controls.Add(this.btnDeshabilitar);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.gbxBuscar);
            this.Controls.Add(this.btnEditar);
            this.Controls.Add(this.btnNuevo);
            this.Controls.Add(this.btnModificar);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.dgvProveedor);
            this.Controls.Add(this.gbxAnimal);
            this.Controls.Add(this.gbxProveedor);
            this.Controls.Add(this.label17);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "FormProveedor";
            this.Text = "FormProveedor";
            this.gbxProveedor.ResumeLayout(false);
            this.gbxProveedor.PerformLayout();
            this.gbxAnimal.ResumeLayout(false);
            this.gbxAnimal.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvProveedor)).EndInit();
            this.gbxBuscar.ResumeLayout(false);
            this.gbxBuscar.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.iconPictureBox2)).EndInit();
            this.gbxUbigeo.ResumeLayout(false);
            this.gbxUbigeo.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.GroupBox gbxProveedor;
        private System.Windows.Forms.TextBox txtUbigeo;
        private System.Windows.Forms.TextBox txtNombre;
        private System.Windows.Forms.CheckBox cbxEstado;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.GroupBox gbxAnimal;
        private System.Windows.Forms.ComboBox cbmEspecie;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dgvProveedor;
        private System.Windows.Forms.Label label3;
        private FontAwesome.Sharp.IconButton btnRegistrar;
        private FontAwesome.Sharp.IconButton btnModificar;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtIdPro;
        private FontAwesome.Sharp.IconButton btnEditar;
        private FontAwesome.Sharp.IconButton btnNuevo;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txtTelefono;
        private System.Windows.Forms.TextBox txtDireccion;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox txtRuc;
        private FontAwesome.Sharp.IconButton btnDeshabilitar;
        private FontAwesome.Sharp.IconButton btnCancelar;
        private System.Windows.Forms.ComboBox cbmCriterios;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox txtBuscartex;
        private System.Windows.Forms.Label label14;
        private FontAwesome.Sharp.IconButton btnBuscar;
        private System.Windows.Forms.DateTimePicker dtpFecha;
        private System.Windows.Forms.Label label15;
        private FontAwesome.Sharp.IconButton btnLimpiar;
        private System.Windows.Forms.GroupBox gbxBuscar;
        private FontAwesome.Sharp.IconButton btnBusqueda;
        private FontAwesome.Sharp.IconButton btnUbigeo;
        private System.Windows.Forms.TextBox txtBuscar2;
        private System.Windows.Forms.GroupBox gbxUbigeo;
        private System.Windows.Forms.TextBox txtUbiId;
        private System.Windows.Forms.Label label2;
        private FontAwesome.Sharp.IconButton iconButton1;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.ComboBox cbxDistrito;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.ComboBox cbxProvincia;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.ComboBox cbxDepartamento;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.Label label17;
        private FontAwesome.Sharp.IconButton iconButton2;
        private FontAwesome.Sharp.IconPictureBox iconPictureBox2;
    }
}
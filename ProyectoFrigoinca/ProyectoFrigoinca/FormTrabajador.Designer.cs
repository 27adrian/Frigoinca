

















namespace ProyectoFrigoinca
{
    partial class FormTrabajador
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            this.btnRegistrar = new FontAwesome.Sharp.IconButton();
            this.label4 = new System.Windows.Forms.Label();
            this.txtUbigeo = new System.Windows.Forms.TextBox();
            this.cbmDistrito = new System.Windows.Forms.ComboBox();
            this.label8 = new System.Windows.Forms.Label();
            this.cbmProvincia = new System.Windows.Forms.ComboBox();
            this.label7 = new System.Windows.Forms.Label();
            this.cbmDepartamento = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.iconPictureBox1 = new FontAwesome.Sharp.IconPictureBox();
            this.btnModificar = new FontAwesome.Sharp.IconButton();
            this.dgvTrabajador = new System.Windows.Forms.DataGridView();
            this.label5 = new System.Windows.Forms.Label();
            this.btnEditar = new FontAwesome.Sharp.IconButton();
            this.btnNuevo = new FontAwesome.Sharp.IconButton();
            this.gbxUbigeo = new System.Windows.Forms.GroupBox();
            this.btnCancelar = new FontAwesome.Sharp.IconButton();
            this.label13 = new System.Windows.Forms.Label();
            this.txtUsuario = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.txtClave = new System.Windows.Forms.TextBox();
            this.gbxDatosSistema = new System.Windows.Forms.GroupBox();
            this.gbxBuscar = new System.Windows.Forms.GroupBox();
            this.txtDocBusq = new System.Windows.Forms.TextBox();
            this.btnLimpiar = new FontAwesome.Sharp.IconButton();
            this.iconPictureBox2 = new FontAwesome.Sharp.IconPictureBox();
            this.label15 = new System.Windows.Forms.Label();
            this.cbmRolesB = new System.Windows.Forms.ComboBox();
            this.dtpFecha = new System.Windows.Forms.DateTimePicker();
            this.btnBuscar = new FontAwesome.Sharp.IconButton();
            this.label14 = new System.Windows.Forms.Label();
            this.txtBuscartex = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.cbmCriterios = new System.Windows.Forms.ComboBox();
            this.btnEliminar = new FontAwesome.Sharp.IconButton();
            this.cbxEstado = new System.Windows.Forms.CheckBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label12 = new System.Windows.Forms.Label();
            this.txtIdTrabajador = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.cbmRol = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtIdRol = new System.Windows.Forms.TextBox();
            this.txtDocumento = new System.Windows.Forms.TextBox();
            this.btnBuscarDoc = new FontAwesome.Sharp.IconButton();
            this.gbxTrabajador = new System.Windows.Forms.GroupBox();
            this.txtNombre = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.iconPictureBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvTrabajador)).BeginInit();
            this.gbxUbigeo.SuspendLayout();
            this.gbxDatosSistema.SuspendLayout();
            this.gbxBuscar.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.iconPictureBox2)).BeginInit();
            this.gbxTrabajador.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnRegistrar
            // 
            this.btnRegistrar.BackColor = System.Drawing.Color.DarkTurquoise;
            this.btnRegistrar.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnRegistrar.Font = new System.Drawing.Font("Palatino Linotype", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnRegistrar.IconChar = FontAwesome.Sharp.IconChar.UserCheck;
            this.btnRegistrar.IconColor = System.Drawing.Color.Black;
            this.btnRegistrar.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnRegistrar.IconSize = 30;
            this.btnRegistrar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnRegistrar.Location = new System.Drawing.Point(547, 513);
            this.btnRegistrar.Name = "btnRegistrar";
            this.btnRegistrar.Size = new System.Drawing.Size(118, 37);
            this.btnRegistrar.TabIndex = 9;
            this.btnRegistrar.Text = "Registrar";
            this.btnRegistrar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnRegistrar.UseVisualStyleBackColor = false;
            this.btnRegistrar.Click += new System.EventHandler(this.btnRegistrar_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(27, 36);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(57, 16);
            this.label4.TabIndex = 3;
            this.label4.Text = "Ubigeo:";
            // 
            // txtUbigeo
            // 
            this.txtUbigeo.Enabled = false;
            this.txtUbigeo.Location = new System.Drawing.Point(98, 36);
            this.txtUbigeo.Name = "txtUbigeo";
            this.txtUbigeo.Size = new System.Drawing.Size(100, 22);
            this.txtUbigeo.TabIndex = 16;
            this.txtUbigeo.TextChanged += new System.EventHandler(this.txtUbigeo_TextChanged);
            // 
            // cbmDistrito
            // 
            this.cbmDistrito.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbmDistrito.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbmDistrito.FormattingEnabled = true;
            this.cbmDistrito.Location = new System.Drawing.Point(30, 194);
            this.cbmDistrito.Name = "cbmDistrito";
            this.cbmDistrito.Size = new System.Drawing.Size(176, 24);
            this.cbmDistrito.TabIndex = 15;
            this.cbmDistrito.SelectedIndexChanged += new System.EventHandler(this.cbmDistrito_SelectedIndexChanged);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(27, 169);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(75, 16);
            this.label8.TabIndex = 14;
            this.label8.Text = "DISTRITO";
            // 
            // cbmProvincia
            // 
            this.cbmProvincia.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbmProvincia.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbmProvincia.FormattingEnabled = true;
            this.cbmProvincia.Location = new System.Drawing.Point(30, 142);
            this.cbmProvincia.Name = "cbmProvincia";
            this.cbmProvincia.Size = new System.Drawing.Size(176, 24);
            this.cbmProvincia.TabIndex = 13;
            this.cbmProvincia.SelectedIndexChanged += new System.EventHandler(this.cbmProvincia_SelectedIndexChanged);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(27, 123);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(89, 16);
            this.label7.TabIndex = 12;
            this.label7.Text = "PROVINCIA";
            // 
            // cbmDepartamento
            // 
            this.cbmDepartamento.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbmDepartamento.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbmDepartamento.FormattingEnabled = true;
            this.cbmDepartamento.Location = new System.Drawing.Point(29, 96);
            this.cbmDepartamento.Name = "cbmDepartamento";
            this.cbmDepartamento.Size = new System.Drawing.Size(176, 24);
            this.cbmDepartamento.TabIndex = 11;
            this.cbmDepartamento.SelectedIndexChanged += new System.EventHandler(this.cmbDepartamento_SelectedIndexChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(26, 77);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(129, 16);
            this.label2.TabIndex = 10;
            this.label2.Text = "DEPARTAMENTO";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.BackColor = System.Drawing.Color.AntiqueWhite;
            this.label6.Font = new System.Drawing.Font("Mongolian Baiti", 27.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.label6.Location = new System.Drawing.Point(204, 20);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(537, 40);
            this.label6.TabIndex = 12;
            this.label6.Text = "REGISTRO DE TRABAJADOR";
            // 
            // iconPictureBox1
            // 
            this.iconPictureBox1.BackColor = System.Drawing.Color.AntiqueWhite;
            this.iconPictureBox1.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.iconPictureBox1.IconChar = FontAwesome.Sharp.IconChar.Users;
            this.iconPictureBox1.IconColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.iconPictureBox1.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.iconPictureBox1.IconSize = 48;
            this.iconPictureBox1.Location = new System.Drawing.Point(747, 12);
            this.iconPictureBox1.Name = "iconPictureBox1";
            this.iconPictureBox1.Size = new System.Drawing.Size(54, 48);
            this.iconPictureBox1.TabIndex = 14;
            this.iconPictureBox1.TabStop = false;
            // 
            // btnModificar
            // 
            this.btnModificar.BackColor = System.Drawing.Color.Goldenrod;
            this.btnModificar.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnModificar.Font = new System.Drawing.Font("Palatino Linotype", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnModificar.IconChar = FontAwesome.Sharp.IconChar.UserEdit;
            this.btnModificar.IconColor = System.Drawing.Color.Black;
            this.btnModificar.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnModificar.IconSize = 30;
            this.btnModificar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnModificar.Location = new System.Drawing.Point(835, 513);
            this.btnModificar.Name = "btnModificar";
            this.btnModificar.Size = new System.Drawing.Size(118, 37);
            this.btnModificar.TabIndex = 15;
            this.btnModificar.Text = "Modificar";
            this.btnModificar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnModificar.UseVisualStyleBackColor = false;
            this.btnModificar.Click += new System.EventHandler(this.btnModificar_Click);
            // 
            // dgvTrabajador
            // 
            this.dgvTrabajador.AllowUserToAddRows = false;
            this.dgvTrabajador.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Mongolian Baiti", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle3.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle3.Padding = new System.Windows.Forms.Padding(2);
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvTrabajador.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle3;
            this.dgvTrabajador.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvTrabajador.Location = new System.Drawing.Point(369, 277);
            this.dgvTrabajador.MultiSelect = false;
            this.dgvTrabajador.Name = "dgvTrabajador";
            this.dgvTrabajador.ReadOnly = true;
            this.dgvTrabajador.RowHeadersWidth = 51;
            dataGridViewCellStyle4.SelectionBackColor = System.Drawing.Color.White;
            dataGridViewCellStyle4.SelectionForeColor = System.Drawing.Color.Black;
            this.dgvTrabajador.RowsDefaultCellStyle = dataGridViewCellStyle4;
            this.dgvTrabajador.Size = new System.Drawing.Size(584, 224);
            this.dgvTrabajador.TabIndex = 45;
            this.dgvTrabajador.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvTrabajador_CellClick);
            // 
            // label5
            // 
            this.label5.BackColor = System.Drawing.Color.AntiqueWhite;
            this.label5.Location = new System.Drawing.Point(12, -17);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(981, 646);
            this.label5.TabIndex = 47;
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
            this.btnEditar.Location = new System.Drawing.Point(852, 138);
            this.btnEditar.Name = "btnEditar";
            this.btnEditar.Size = new System.Drawing.Size(118, 37);
            this.btnEditar.TabIndex = 56;
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
            this.btnNuevo.Location = new System.Drawing.Point(852, 89);
            this.btnNuevo.Name = "btnNuevo";
            this.btnNuevo.Size = new System.Drawing.Size(118, 37);
            this.btnNuevo.TabIndex = 55;
            this.btnNuevo.Text = "Nuevo";
            this.btnNuevo.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnNuevo.UseVisualStyleBackColor = false;
            this.btnNuevo.Click += new System.EventHandler(this.btnNuevo_Click);
            // 
            // gbxUbigeo
            // 
            this.gbxUbigeo.BackColor = System.Drawing.Color.AntiqueWhite;
            this.gbxUbigeo.Controls.Add(this.label2);
            this.gbxUbigeo.Controls.Add(this.cbmDepartamento);
            this.gbxUbigeo.Controls.Add(this.label7);
            this.gbxUbigeo.Controls.Add(this.txtUbigeo);
            this.gbxUbigeo.Controls.Add(this.cbmProvincia);
            this.gbxUbigeo.Controls.Add(this.label8);
            this.gbxUbigeo.Controls.Add(this.cbmDistrito);
            this.gbxUbigeo.Controls.Add(this.label4);
            this.gbxUbigeo.Font = new System.Drawing.Font("Mongolian Baiti", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gbxUbigeo.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.gbxUbigeo.Location = new System.Drawing.Point(44, 181);
            this.gbxUbigeo.Name = "gbxUbigeo";
            this.gbxUbigeo.Size = new System.Drawing.Size(250, 237);
            this.gbxUbigeo.TabIndex = 10;
            this.gbxUbigeo.TabStop = false;
            this.gbxUbigeo.Text = "Datos de ubicacion";
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
            this.btnCancelar.Location = new System.Drawing.Point(369, 520);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(120, 30);
            this.btnCancelar.TabIndex = 64;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnCancelar.UseVisualStyleBackColor = false;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click_1);
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label13.Location = new System.Drawing.Point(95, 24);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(60, 16);
            this.label13.TabIndex = 2;
            this.label13.Text = "Usuario:";
            // 
            // txtUsuario
            // 
            this.txtUsuario.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtUsuario.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtUsuario.Location = new System.Drawing.Point(42, 43);
            this.txtUsuario.Name = "txtUsuario";
            this.txtUsuario.Size = new System.Drawing.Size(162, 25);
            this.txtUsuario.TabIndex = 10;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.Location = new System.Drawing.Point(95, 79);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(47, 16);
            this.label11.TabIndex = 11;
            this.label11.Text = "Clave:";
            // 
            // txtClave
            // 
            this.txtClave.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtClave.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtClave.Location = new System.Drawing.Point(42, 98);
            this.txtClave.Name = "txtClave";
            this.txtClave.Size = new System.Drawing.Size(162, 25);
            this.txtClave.TabIndex = 12;
            // 
            // gbxDatosSistema
            // 
            this.gbxDatosSistema.BackColor = System.Drawing.Color.AntiqueWhite;
            this.gbxDatosSistema.Controls.Add(this.txtClave);
            this.gbxDatosSistema.Controls.Add(this.label11);
            this.gbxDatosSistema.Controls.Add(this.txtUsuario);
            this.gbxDatosSistema.Controls.Add(this.label13);
            this.gbxDatosSistema.Font = new System.Drawing.Font("Mongolian Baiti", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gbxDatosSistema.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.gbxDatosSistema.Location = new System.Drawing.Point(44, 424);
            this.gbxDatosSistema.Name = "gbxDatosSistema";
            this.gbxDatosSistema.Size = new System.Drawing.Size(250, 145);
            this.gbxDatosSistema.TabIndex = 12;
            this.gbxDatosSistema.TabStop = false;
            this.gbxDatosSistema.Text = "Datos para el sistema:";
            // 
            // gbxBuscar
            // 
            this.gbxBuscar.BackColor = System.Drawing.Color.AntiqueWhite;
            this.gbxBuscar.Controls.Add(this.txtDocBusq);
            this.gbxBuscar.Controls.Add(this.btnLimpiar);
            this.gbxBuscar.Controls.Add(this.iconPictureBox2);
            this.gbxBuscar.Controls.Add(this.label15);
            this.gbxBuscar.Controls.Add(this.cbmRolesB);
            this.gbxBuscar.Controls.Add(this.dtpFecha);
            this.gbxBuscar.Controls.Add(this.btnBuscar);
            this.gbxBuscar.Controls.Add(this.label14);
            this.gbxBuscar.Controls.Add(this.txtBuscartex);
            this.gbxBuscar.Controls.Add(this.label10);
            this.gbxBuscar.Controls.Add(this.cbmCriterios);
            this.gbxBuscar.Font = new System.Drawing.Font("Mongolian Baiti", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gbxBuscar.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.gbxBuscar.Location = new System.Drawing.Point(369, 181);
            this.gbxBuscar.Name = "gbxBuscar";
            this.gbxBuscar.Size = new System.Drawing.Size(584, 71);
            this.gbxBuscar.TabIndex = 12;
            this.gbxBuscar.TabStop = false;
            this.gbxBuscar.Text = "Buscar Trabajador";
            // 
            // txtDocBusq
            // 
            this.txtDocBusq.Location = new System.Drawing.Point(340, 33);
            this.txtDocBusq.Name = "txtDocBusq";
            this.txtDocBusq.Size = new System.Drawing.Size(228, 22);
            this.txtDocBusq.TabIndex = 68;
            this.txtDocBusq.TextChanged += new System.EventHandler(this.txtDocBusq_TextChanged);
            this.txtDocBusq.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtDocBusq_KeyPress);
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
            this.iconPictureBox2.IconChar = FontAwesome.Sharp.IconChar.UserSecret;
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
            // cbmRolesB
            // 
            this.cbmRolesB.FormattingEnabled = true;
            this.cbmRolesB.Location = new System.Drawing.Point(340, 34);
            this.cbmRolesB.Name = "cbmRolesB";
            this.cbmRolesB.Size = new System.Drawing.Size(228, 22);
            this.cbmRolesB.TabIndex = 53;
            // 
            // dtpFecha
            // 
            this.dtpFecha.Location = new System.Drawing.Point(340, 33);
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
            this.txtBuscartex.Location = new System.Drawing.Point(340, 33);
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
            this.cbmCriterios.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbmCriterios.FormattingEnabled = true;
            this.cbmCriterios.Location = new System.Drawing.Point(78, 33);
            this.cbmCriterios.Name = "cbmCriterios";
            this.cbmCriterios.Size = new System.Drawing.Size(156, 22);
            this.cbmCriterios.TabIndex = 10;
            this.cbmCriterios.SelectedIndexChanged += new System.EventHandler(this.cbmCriterios_SelectedIndexChanged);
            // 
            // btnEliminar
            // 
            this.btnEliminar.BackColor = System.Drawing.Color.IndianRed;
            this.btnEliminar.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnEliminar.Font = new System.Drawing.Font("Palatino Linotype", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnEliminar.IconChar = FontAwesome.Sharp.IconChar.UserSlash;
            this.btnEliminar.IconColor = System.Drawing.Color.Black;
            this.btnEliminar.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnEliminar.IconSize = 30;
            this.btnEliminar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnEliminar.Location = new System.Drawing.Point(695, 513);
            this.btnEliminar.Name = "btnEliminar";
            this.btnEliminar.Size = new System.Drawing.Size(118, 37);
            this.btnEliminar.TabIndex = 65;
            this.btnEliminar.Text = "Eliminar";
            this.btnEliminar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnEliminar.UseVisualStyleBackColor = false;
            this.btnEliminar.Click += new System.EventHandler(this.btnEliminar_Click);
            // 
            // cbxEstado
            // 
            this.cbxEstado.AutoSize = true;
            this.cbxEstado.BackColor = System.Drawing.Color.AntiqueWhite;
            this.cbxEstado.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbxEstado.Location = new System.Drawing.Point(689, 45);
            this.cbxEstado.Name = "cbxEstado";
            this.cbxEstado.Size = new System.Drawing.Size(74, 20);
            this.cbxEstado.TabIndex = 6;
            this.cbxEstado.Text = "Estado";
            this.cbxEstado.UseVisualStyleBackColor = false;
            this.cbxEstado.CheckedChanged += new System.EventHandler(this.cbxEstado_CheckedChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(99, 26);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(84, 16);
            this.label1.TabIndex = 0;
            this.label1.Text = "Documento:";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label12.Location = new System.Drawing.Point(272, 26);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(127, 16);
            this.label12.TabIndex = 0;
            this.label12.Text = "Nombre Completo:";
            // 
            // txtIdTrabajador
            // 
            this.txtIdTrabajador.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtIdTrabajador.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtIdTrabajador.Location = new System.Drawing.Point(24, 45);
            this.txtIdTrabajador.Name = "txtIdTrabajador";
            this.txtIdTrabajador.Size = new System.Drawing.Size(60, 25);
            this.txtIdTrabajador.TabIndex = 8;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(39, 26);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(27, 16);
            this.label9.TabIndex = 9;
            this.label9.Text = "ID:";
            // 
            // cbmRol
            // 
            this.cbmRol.FormattingEnabled = true;
            this.cbmRol.Location = new System.Drawing.Point(528, 47);
            this.cbmRol.Name = "cbmRol";
            this.cbmRol.Size = new System.Drawing.Size(137, 22);
            this.cbmRol.TabIndex = 10;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(526, 28);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(33, 16);
            this.label3.TabIndex = 11;
            this.label3.Text = "Rol:";
            // 
            // txtIdRol
            // 
            this.txtIdRol.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtIdRol.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtIdRol.Location = new System.Drawing.Point(835, 37);
            this.txtIdRol.Name = "txtIdRol";
            this.txtIdRol.Size = new System.Drawing.Size(37, 25);
            this.txtIdRol.TabIndex = 12;
            this.txtIdRol.TextChanged += new System.EventHandler(this.txtIdRol_TextChanged);
            // 
            // txtDocumento
            // 
            this.txtDocumento.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtDocumento.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtDocumento.Location = new System.Drawing.Point(102, 46);
            this.txtDocumento.Name = "txtDocumento";
            this.txtDocumento.Size = new System.Drawing.Size(115, 25);
            this.txtDocumento.TabIndex = 13;
            this.txtDocumento.TextChanged += new System.EventHandler(this.txtDocumento_TextChanged);
            this.txtDocumento.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtDocumento_KeyPress);
            // 
            // btnBuscarDoc
            // 
            this.btnBuscarDoc.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnBuscarDoc.IconChar = FontAwesome.Sharp.IconChar.MagnifyingGlass;
            this.btnBuscarDoc.IconColor = System.Drawing.Color.Black;
            this.btnBuscarDoc.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnBuscarDoc.IconSize = 15;
            this.btnBuscarDoc.Location = new System.Drawing.Point(223, 46);
            this.btnBuscarDoc.Name = "btnBuscarDoc";
            this.btnBuscarDoc.Size = new System.Drawing.Size(38, 25);
            this.btnBuscarDoc.TabIndex = 52;
            this.btnBuscarDoc.UseVisualStyleBackColor = true;
            this.btnBuscarDoc.Click += new System.EventHandler(this.btnBuscarDoc_Click);
            // 
            // gbxTrabajador
            // 
            this.gbxTrabajador.BackColor = System.Drawing.Color.AntiqueWhite;
            this.gbxTrabajador.Controls.Add(this.btnBuscarDoc);
            this.gbxTrabajador.Controls.Add(this.txtDocumento);
            this.gbxTrabajador.Controls.Add(this.label3);
            this.gbxTrabajador.Controls.Add(this.cbmRol);
            this.gbxTrabajador.Controls.Add(this.label9);
            this.gbxTrabajador.Controls.Add(this.txtIdTrabajador);
            this.gbxTrabajador.Controls.Add(this.txtNombre);
            this.gbxTrabajador.Controls.Add(this.label12);
            this.gbxTrabajador.Controls.Add(this.label1);
            this.gbxTrabajador.Controls.Add(this.cbxEstado);
            this.gbxTrabajador.Font = new System.Drawing.Font("Mongolian Baiti", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gbxTrabajador.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.gbxTrabajador.Location = new System.Drawing.Point(44, 89);
            this.gbxTrabajador.Name = "gbxTrabajador";
            this.gbxTrabajador.Size = new System.Drawing.Size(769, 86);
            this.gbxTrabajador.TabIndex = 2;
            this.gbxTrabajador.TabStop = false;
            this.gbxTrabajador.Text = "Datos de trabajador";
            // 
            // txtNombre
            // 
            this.txtNombre.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtNombre.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtNombre.Location = new System.Drawing.Point(275, 46);
            this.txtNombre.Name = "txtNombre";
            this.txtNombre.ReadOnly = true;
            this.txtNombre.Size = new System.Drawing.Size(247, 25);
            this.txtNombre.TabIndex = 7;
            // 
            // FormTrabajador
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Tan;
            this.ClientSize = new System.Drawing.Size(1005, 590);
            this.Controls.Add(this.btnEliminar);
            this.Controls.Add(this.gbxBuscar);
            this.Controls.Add(this.txtIdRol);
            this.Controls.Add(this.gbxDatosSistema);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.gbxUbigeo);
            this.Controls.Add(this.btnEditar);
            this.Controls.Add(this.btnNuevo);
            this.Controls.Add(this.dgvTrabajador);
            this.Controls.Add(this.btnModificar);
            this.Controls.Add(this.iconPictureBox1);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.btnRegistrar);
            this.Controls.Add(this.gbxTrabajador);
            this.Controls.Add(this.label5);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "FormTrabajador";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FormTrabajador";
            ((System.ComponentModel.ISupportInitialize)(this.iconPictureBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvTrabajador)).EndInit();
            this.gbxUbigeo.ResumeLayout(false);
            this.gbxUbigeo.PerformLayout();
            this.gbxDatosSistema.ResumeLayout(false);
            this.gbxDatosSistema.PerformLayout();
            this.gbxBuscar.ResumeLayout(false);
            this.gbxBuscar.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.iconPictureBox2)).EndInit();
            this.gbxTrabajador.ResumeLayout(false);
            this.gbxTrabajador.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private FontAwesome.Sharp.IconButton btnRegistrar;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label6;
        private FontAwesome.Sharp.IconPictureBox iconPictureBox1;
        private FontAwesome.Sharp.IconButton btnModificar;
        private System.Windows.Forms.DataGridView dgvTrabajador;
        private System.Windows.Forms.ComboBox cbmDistrito;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.ComboBox cbmProvincia;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.ComboBox cbmDepartamento;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtUbigeo;
        private System.Windows.Forms.Label label5;
        private FontAwesome.Sharp.IconButton btnEditar;
        private FontAwesome.Sharp.IconButton btnNuevo;
        private System.Windows.Forms.GroupBox gbxUbigeo;
        private FontAwesome.Sharp.IconButton btnCancelar;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.TextBox txtUsuario;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox txtClave;
        private System.Windows.Forms.GroupBox gbxDatosSistema;
        private System.Windows.Forms.GroupBox gbxBuscar;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.ComboBox cbmCriterios;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.TextBox txtBuscartex;
        private FontAwesome.Sharp.IconButton btnBuscar;
        private FontAwesome.Sharp.IconButton btnEliminar;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.ComboBox cbmRolesB;
        private System.Windows.Forms.DateTimePicker dtpFecha;
        private FontAwesome.Sharp.IconPictureBox iconPictureBox2;
        private FontAwesome.Sharp.IconButton btnLimpiar;
        private System.Windows.Forms.TextBox txtDocBusq;
        private System.Windows.Forms.CheckBox cbxEstado;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.TextBox txtIdTrabajador;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.ComboBox cbmRol;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtIdRol;
        private System.Windows.Forms.TextBox txtDocumento;
        private FontAwesome.Sharp.IconButton btnBuscarDoc;
        private System.Windows.Forms.GroupBox gbxTrabajador;
        private System.Windows.Forms.TextBox txtNombre;
    }
}
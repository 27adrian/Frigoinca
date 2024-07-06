namespace ProyectoFrigoinca
{
    partial class FormPagoTarjeta
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
            this.label2 = new System.Windows.Forms.Label();
            this.txtCorreo = new System.Windows.Forms.TextBox();
            this.txtApellidos = new System.Windows.Forms.TextBox();
            this.txtNombres = new System.Windows.Forms.TextBox();
            this.btnPagar = new System.Windows.Forms.Button();
            this.txtCvv = new System.Windows.Forms.TextBox();
            this.txtVencimiento = new System.Windows.Forms.TextBox();
            this.txtNumeroTarjeta = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.lblMontoTotal = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.iconPictureBox3 = new FontAwesome.Sharp.IconPictureBox();
            this.iconPictureBox1 = new FontAwesome.Sharp.IconPictureBox();
            this.iconPictureBox4 = new FontAwesome.Sharp.IconPictureBox();
            this.iconPictureBox5 = new FontAwesome.Sharp.IconPictureBox();
            this.iconPictureBox2 = new FontAwesome.Sharp.IconPictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.iconPictureBox3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.iconPictureBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.iconPictureBox4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.iconPictureBox5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.iconPictureBox2)).BeginInit();
            this.SuspendLayout();
            // 
            // label2
            // 
            this.label2.AutoEllipsis = true;
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.SystemColors.MenuText;
            this.label2.Location = new System.Drawing.Point(75, 206);
            this.label2.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(27, 24);
            this.label2.TabIndex = 18;
            this.label2.Text = "S/";
            // 
            // txtCorreo
            // 
            this.txtCorreo.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtCorreo.ForeColor = System.Drawing.SystemColors.ScrollBar;
            this.txtCorreo.Location = new System.Drawing.Point(64, 154);
            this.txtCorreo.Margin = new System.Windows.Forms.Padding(2);
            this.txtCorreo.Name = "txtCorreo";
            this.txtCorreo.Size = new System.Drawing.Size(254, 24);
            this.txtCorreo.TabIndex = 15;
            this.txtCorreo.Text = "Correo";
            this.txtCorreo.Enter += new System.EventHandler(this.txtCorreo_Enter_1);
            this.txtCorreo.Leave += new System.EventHandler(this.txtCorreo_Leave);
            // 
            // txtApellidos
            // 
            this.txtApellidos.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtApellidos.ForeColor = System.Drawing.SystemColors.ScrollBar;
            this.txtApellidos.Location = new System.Drawing.Point(196, 126);
            this.txtApellidos.Margin = new System.Windows.Forms.Padding(2);
            this.txtApellidos.Name = "txtApellidos";
            this.txtApellidos.Size = new System.Drawing.Size(122, 24);
            this.txtApellidos.TabIndex = 14;
            this.txtApellidos.Text = "Apellidos";
            this.txtApellidos.Enter += new System.EventHandler(this.txtApellidos_Enter_1);
            this.txtApellidos.Leave += new System.EventHandler(this.txtApellidos_Leave);
            // 
            // txtNombres
            // 
            this.txtNombres.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtNombres.ForeColor = System.Drawing.SystemColors.ScrollBar;
            this.txtNombres.Location = new System.Drawing.Point(64, 126);
            this.txtNombres.Margin = new System.Windows.Forms.Padding(2);
            this.txtNombres.Name = "txtNombres";
            this.txtNombres.Size = new System.Drawing.Size(128, 24);
            this.txtNombres.TabIndex = 13;
            this.txtNombres.Text = "Nombres";
            this.txtNombres.Enter += new System.EventHandler(this.txtNombres_Enter_1);
            this.txtNombres.Leave += new System.EventHandler(this.txtNombres_Leave);
            // 
            // btnPagar
            // 
            this.btnPagar.BackColor = System.Drawing.Color.DarkSeaGreen;
            this.btnPagar.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnPagar.Font = new System.Drawing.Font("Palatino Linotype", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnPagar.ForeColor = System.Drawing.SystemColors.ControlText;
            this.btnPagar.Location = new System.Drawing.Point(236, 206);
            this.btnPagar.Margin = new System.Windows.Forms.Padding(2);
            this.btnPagar.Name = "btnPagar";
            this.btnPagar.Size = new System.Drawing.Size(82, 27);
            this.btnPagar.TabIndex = 16;
            this.btnPagar.Text = "Pagar";
            this.btnPagar.UseVisualStyleBackColor = false;
            this.btnPagar.Click += new System.EventHandler(this.btnPagar_Click);
            // 
            // txtCvv
            // 
            this.txtCvv.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtCvv.ForeColor = System.Drawing.SystemColors.ScrollBar;
            this.txtCvv.Location = new System.Drawing.Point(196, 93);
            this.txtCvv.Margin = new System.Windows.Forms.Padding(2);
            this.txtCvv.Name = "txtCvv";
            this.txtCvv.Size = new System.Drawing.Size(122, 24);
            this.txtCvv.TabIndex = 12;
            this.txtCvv.Text = "CVV";
            this.txtCvv.Enter += new System.EventHandler(this.txtCvv_Enter_1);
            this.txtCvv.Leave += new System.EventHandler(this.txtCvv_Leave);
            // 
            // txtVencimiento
            // 
            this.txtVencimiento.BackColor = System.Drawing.SystemColors.Window;
            this.txtVencimiento.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtVencimiento.ForeColor = System.Drawing.SystemColors.ScrollBar;
            this.txtVencimiento.Location = new System.Drawing.Point(64, 93);
            this.txtVencimiento.Margin = new System.Windows.Forms.Padding(2);
            this.txtVencimiento.Name = "txtVencimiento";
            this.txtVencimiento.Size = new System.Drawing.Size(128, 24);
            this.txtVencimiento.TabIndex = 11;
            this.txtVencimiento.Text = "MM/AA";
            this.txtVencimiento.Enter += new System.EventHandler(this.txtVencimiento_Enter_1);
            this.txtVencimiento.Leave += new System.EventHandler(this.txtVencimiento_Leave_1);
            // 
            // txtNumeroTarjeta
            // 
            this.txtNumeroTarjeta.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtNumeroTarjeta.ForeColor = System.Drawing.Color.Silver;
            this.txtNumeroTarjeta.Location = new System.Drawing.Point(63, 65);
            this.txtNumeroTarjeta.Margin = new System.Windows.Forms.Padding(2);
            this.txtNumeroTarjeta.Name = "txtNumeroTarjeta";
            this.txtNumeroTarjeta.Size = new System.Drawing.Size(255, 24);
            this.txtNumeroTarjeta.TabIndex = 10;
            this.txtNumeroTarjeta.Text = "Número de tarjeta";
            this.txtNumeroTarjeta.Enter += new System.EventHandler(this.txtNumeroTarjeta_Enter_1);
            this.txtNumeroTarjeta.Leave += new System.EventHandler(this.txtNumeroTarjeta_Leave_1);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Palatino Linotype", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.SystemColors.MenuText;
            this.label1.Location = new System.Drawing.Point(76, 180);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(126, 18);
            this.label1.TabIndex = 17;
            this.label1.Text = "Monto total a pagar";
            // 
            // lblMontoTotal
            // 
            this.lblMontoTotal.AutoSize = true;
            this.lblMontoTotal.BackColor = System.Drawing.Color.Transparent;
            this.lblMontoTotal.Font = new System.Drawing.Font("Palatino Linotype", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMontoTotal.ForeColor = System.Drawing.SystemColors.ControlText;
            this.lblMontoTotal.Location = new System.Drawing.Point(106, 213);
            this.lblMontoTotal.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.lblMontoTotal.Name = "lblMontoTotal";
            this.lblMontoTotal.Size = new System.Drawing.Size(0, 18);
            this.lblMontoTotal.TabIndex = 19;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Palatino Linotype", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.SystemColors.MenuText;
            this.label3.Location = new System.Drawing.Point(29, 11);
            this.label3.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(250, 37);
            this.label3.TabIndex = 20;
            this.label3.Text = "AÑADA TARJETA";
            // 
            // iconPictureBox3
            // 
            this.iconPictureBox3.BackColor = System.Drawing.Color.AntiqueWhite;
            this.iconPictureBox3.ForeColor = System.Drawing.SystemColors.MenuText;
            this.iconPictureBox3.IconChar = FontAwesome.Sharp.IconChar.ChalkboardTeacher;
            this.iconPictureBox3.IconColor = System.Drawing.SystemColors.MenuText;
            this.iconPictureBox3.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.iconPictureBox3.Location = new System.Drawing.Point(24, 93);
            this.iconPictureBox3.Name = "iconPictureBox3";
            this.iconPictureBox3.Size = new System.Drawing.Size(35, 32);
            this.iconPictureBox3.TabIndex = 73;
            this.iconPictureBox3.TabStop = false;
            // 
            // iconPictureBox1
            // 
            this.iconPictureBox1.BackColor = System.Drawing.Color.AntiqueWhite;
            this.iconPictureBox1.ForeColor = System.Drawing.SystemColors.MenuText;
            this.iconPictureBox1.IconChar = FontAwesome.Sharp.IconChar.CreditCardAlt;
            this.iconPictureBox1.IconColor = System.Drawing.SystemColors.MenuText;
            this.iconPictureBox1.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.iconPictureBox1.Location = new System.Drawing.Point(24, 65);
            this.iconPictureBox1.Name = "iconPictureBox1";
            this.iconPictureBox1.Size = new System.Drawing.Size(35, 32);
            this.iconPictureBox1.TabIndex = 74;
            this.iconPictureBox1.TabStop = false;
            // 
            // iconPictureBox4
            // 
            this.iconPictureBox4.BackColor = System.Drawing.Color.AntiqueWhite;
            this.iconPictureBox4.ForeColor = System.Drawing.SystemColors.MenuText;
            this.iconPictureBox4.IconChar = FontAwesome.Sharp.IconChar.Donate;
            this.iconPictureBox4.IconColor = System.Drawing.SystemColors.MenuText;
            this.iconPictureBox4.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.iconPictureBox4.Location = new System.Drawing.Point(24, 199);
            this.iconPictureBox4.Name = "iconPictureBox4";
            this.iconPictureBox4.Size = new System.Drawing.Size(35, 32);
            this.iconPictureBox4.TabIndex = 75;
            this.iconPictureBox4.TabStop = false;
            // 
            // iconPictureBox5
            // 
            this.iconPictureBox5.BackColor = System.Drawing.Color.AntiqueWhite;
            this.iconPictureBox5.ForeColor = System.Drawing.SystemColors.MenuText;
            this.iconPictureBox5.IconChar = FontAwesome.Sharp.IconChar.Elevator;
            this.iconPictureBox5.IconColor = System.Drawing.SystemColors.MenuText;
            this.iconPictureBox5.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.iconPictureBox5.Location = new System.Drawing.Point(24, 131);
            this.iconPictureBox5.Name = "iconPictureBox5";
            this.iconPictureBox5.Size = new System.Drawing.Size(35, 32);
            this.iconPictureBox5.TabIndex = 76;
            this.iconPictureBox5.TabStop = false;
            // 
            // iconPictureBox2
            // 
            this.iconPictureBox2.BackColor = System.Drawing.Color.AntiqueWhite;
            this.iconPictureBox2.ForeColor = System.Drawing.SystemColors.MenuText;
            this.iconPictureBox2.IconChar = FontAwesome.Sharp.IconChar.Grunt;
            this.iconPictureBox2.IconColor = System.Drawing.SystemColors.MenuText;
            this.iconPictureBox2.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.iconPictureBox2.IconSize = 33;
            this.iconPictureBox2.Location = new System.Drawing.Point(284, 12);
            this.iconPictureBox2.Name = "iconPictureBox2";
            this.iconPictureBox2.Size = new System.Drawing.Size(42, 33);
            this.iconPictureBox2.TabIndex = 77;
            this.iconPictureBox2.TabStop = false;
            // 
            // FormPagoTarjeta
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.AntiqueWhite;
            this.ClientSize = new System.Drawing.Size(351, 243);
            this.Controls.Add(this.iconPictureBox2);
            this.Controls.Add(this.iconPictureBox5);
            this.Controls.Add(this.iconPictureBox4);
            this.Controls.Add(this.iconPictureBox1);
            this.Controls.Add(this.iconPictureBox3);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.lblMontoTotal);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtCorreo);
            this.Controls.Add(this.txtApellidos);
            this.Controls.Add(this.txtNombres);
            this.Controls.Add(this.btnPagar);
            this.Controls.Add(this.txtCvv);
            this.Controls.Add(this.txtVencimiento);
            this.Controls.Add(this.txtNumeroTarjeta);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "FormPagoTarjeta";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FormPagoTarjeta";
            this.Load += new System.EventHandler(this.FormPagoTarjeta_Load);
            ((System.ComponentModel.ISupportInitialize)(this.iconPictureBox3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.iconPictureBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.iconPictureBox4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.iconPictureBox5)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.iconPictureBox2)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtCorreo;
        private System.Windows.Forms.TextBox txtApellidos;
        private System.Windows.Forms.TextBox txtNombres;
        private System.Windows.Forms.Button btnPagar;
        private System.Windows.Forms.TextBox txtCvv;
        private System.Windows.Forms.TextBox txtVencimiento;
        private System.Windows.Forms.TextBox txtNumeroTarjeta;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label lblMontoTotal;
        private System.Windows.Forms.Label label3;
        private FontAwesome.Sharp.IconPictureBox iconPictureBox3;
        private FontAwesome.Sharp.IconPictureBox iconPictureBox1;
        private FontAwesome.Sharp.IconPictureBox iconPictureBox4;
        private FontAwesome.Sharp.IconPictureBox iconPictureBox5;
        private FontAwesome.Sharp.IconPictureBox iconPictureBox2;
    }
}
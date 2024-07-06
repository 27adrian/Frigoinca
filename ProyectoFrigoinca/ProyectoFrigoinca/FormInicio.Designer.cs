
namespace ProyectoFrigoinca
{
    partial class FormInicio
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormInicio));
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.menuEncargado = new FontAwesome.Sharp.IconMenuItem();
            this.menuCliente = new FontAwesome.Sharp.IconMenuItem();
            this.menuProveedor = new FontAwesome.Sharp.IconMenuItem();
            this.menuCompra = new FontAwesome.Sharp.IconMenuItem();
            this.requerimientoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ordenCompraToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.materiaPrimaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuVenta = new FontAwesome.Sharp.IconMenuItem();
            this.menuInventario = new FontAwesome.Sharp.IconMenuItem();
            this.inventarioToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.loteProductoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.corteToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.animalToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.detalleDeCortesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuMetodoPago = new FontAwesome.Sharp.IconMenuItem();
            this.menuReportes = new FontAwesome.Sharp.IconMenuItem();
            this.ventasToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.comprasToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuContacto = new FontAwesome.Sharp.IconMenuItem();
            this.menuStrip2 = new System.Windows.Forms.MenuStrip();
            this.label1 = new System.Windows.Forms.Label();
            this.iconMenuItem2 = new FontAwesome.Sharp.IconMenuItem();
            this.iconPictureBox1 = new FontAwesome.Sharp.IconPictureBox();
            this.iconPictureBox2 = new FontAwesome.Sharp.IconPictureBox();
            this.lbfecha = new System.Windows.Forms.Label();
            this.lblUsuario = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.iconPictureBox3 = new FontAwesome.Sharp.IconPictureBox();
            this.contenedor = new System.Windows.Forms.Panel();
            this.menuStrip1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.iconPictureBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.iconPictureBox2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.iconPictureBox3)).BeginInit();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.BackColor = System.Drawing.Color.Tan;
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.menuEncargado,
            this.menuCliente,
            this.menuProveedor,
            this.menuCompra,
            this.menuVenta,
            this.menuInventario,
            this.menuMetodoPago,
            this.menuReportes,
            this.menuContacto});
            this.menuStrip1.Location = new System.Drawing.Point(0, 85);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(1005, 74);
            this.menuStrip1.TabIndex = 2;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // menuEncargado
            // 
            this.menuEncargado.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.menuEncargado.IconChar = FontAwesome.Sharp.IconChar.UserTie;
            this.menuEncargado.IconColor = System.Drawing.Color.Black;
            this.menuEncargado.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.menuEncargado.IconSize = 50;
            this.menuEncargado.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
            this.menuEncargado.Name = "menuEncargado";
            this.menuEncargado.Size = new System.Drawing.Size(86, 70);
            this.menuEncargado.Text = "Encargado";
            this.menuEncargado.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.menuEncargado.Click += new System.EventHandler(this.menuEncargado_Click);
            // 
            // menuCliente
            // 
            this.menuCliente.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.menuCliente.IconChar = FontAwesome.Sharp.IconChar.Users;
            this.menuCliente.IconColor = System.Drawing.Color.Black;
            this.menuCliente.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.menuCliente.IconSize = 50;
            this.menuCliente.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
            this.menuCliente.Name = "menuCliente";
            this.menuCliente.Size = new System.Drawing.Size(69, 70);
            this.menuCliente.Text = "Clientes";
            this.menuCliente.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.menuCliente.Click += new System.EventHandler(this.menuAfiliados_Click);
            // 
            // menuProveedor
            // 
            this.menuProveedor.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.menuProveedor.IconChar = FontAwesome.Sharp.IconChar.AddressCard;
            this.menuProveedor.IconColor = System.Drawing.Color.Black;
            this.menuProveedor.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.menuProveedor.IconSize = 50;
            this.menuProveedor.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
            this.menuProveedor.Name = "menuProveedor";
            this.menuProveedor.Size = new System.Drawing.Size(83, 70);
            this.menuProveedor.Text = "Proveedor";
            this.menuProveedor.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.menuProveedor.Click += new System.EventHandler(this.menuProveedor_Click);
            // 
            // menuCompra
            // 
            this.menuCompra.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.requerimientoToolStripMenuItem,
            this.ordenCompraToolStripMenuItem,
            this.materiaPrimaToolStripMenuItem});
            this.menuCompra.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.menuCompra.IconChar = FontAwesome.Sharp.IconChar.Shop;
            this.menuCompra.IconColor = System.Drawing.Color.Black;
            this.menuCompra.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.menuCompra.IconSize = 50;
            this.menuCompra.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
            this.menuCompra.Name = "menuCompra";
            this.menuCompra.Size = new System.Drawing.Size(69, 70);
            this.menuCompra.Text = "Compra";
            this.menuCompra.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.menuCompra.Click += new System.EventHandler(this.menuCompra_Click);
            // 
            // requerimientoToolStripMenuItem
            // 
            this.requerimientoToolStripMenuItem.Name = "requerimientoToolStripMenuItem";
            this.requerimientoToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.requerimientoToolStripMenuItem.Text = "Requerimiento ";
            this.requerimientoToolStripMenuItem.Click += new System.EventHandler(this.requerimientoToolStripMenuItem_Click);
            // 
            // ordenCompraToolStripMenuItem
            // 
            this.ordenCompraToolStripMenuItem.Name = "ordenCompraToolStripMenuItem";
            this.ordenCompraToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.ordenCompraToolStripMenuItem.Text = "Orden Compra";
            this.ordenCompraToolStripMenuItem.Click += new System.EventHandler(this.ordenCompraToolStripMenuItem_Click);
            // 
            // materiaPrimaToolStripMenuItem
            // 
            this.materiaPrimaToolStripMenuItem.Name = "materiaPrimaToolStripMenuItem";
            this.materiaPrimaToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.materiaPrimaToolStripMenuItem.Text = "Materia Prima";
            this.materiaPrimaToolStripMenuItem.Click += new System.EventHandler(this.materiaPrimaToolStripMenuItem_Click);
            // 
            // menuVenta
            // 
            this.menuVenta.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.menuVenta.IconChar = FontAwesome.Sharp.IconChar.MoneyBills;
            this.menuVenta.IconColor = System.Drawing.Color.Black;
            this.menuVenta.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.menuVenta.IconSize = 50;
            this.menuVenta.ImageAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.menuVenta.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
            this.menuVenta.Name = "menuVenta";
            this.menuVenta.Size = new System.Drawing.Size(62, 70);
            this.menuVenta.Text = "Venta";
            this.menuVenta.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.menuVenta.Click += new System.EventHandler(this.menuVenta_Click);
            // 
            // menuInventario
            // 
            this.menuInventario.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.inventarioToolStripMenuItem,
            this.loteProductoToolStripMenuItem,
            this.corteToolStripMenuItem1,
            this.animalToolStripMenuItem,
            this.detalleDeCortesToolStripMenuItem});
            this.menuInventario.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.menuInventario.IconChar = FontAwesome.Sharp.IconChar.BoxOpen;
            this.menuInventario.IconColor = System.Drawing.Color.Black;
            this.menuInventario.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.menuInventario.IconSize = 50;
            this.menuInventario.ImageAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.menuInventario.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
            this.menuInventario.Name = "menuInventario";
            this.menuInventario.Size = new System.Drawing.Size(83, 70);
            this.menuInventario.Text = "Inventario";
            this.menuInventario.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.menuInventario.Click += new System.EventHandler(this.iconMenuItem1_Click);
            // 
            // inventarioToolStripMenuItem
            // 
            this.inventarioToolStripMenuItem.Name = "inventarioToolStripMenuItem";
            this.inventarioToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.inventarioToolStripMenuItem.Text = "Inventario";
            this.inventarioToolStripMenuItem.Click += new System.EventHandler(this.inventarioToolStripMenuItem_Click);
            // 
            // loteProductoToolStripMenuItem
            // 
            this.loteProductoToolStripMenuItem.Name = "loteProductoToolStripMenuItem";
            this.loteProductoToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.loteProductoToolStripMenuItem.Text = "Lote Producto";
            this.loteProductoToolStripMenuItem.Click += new System.EventHandler(this.loteProductoToolStripMenuItem_Click);
            // 
            // corteToolStripMenuItem1
            // 
            this.corteToolStripMenuItem1.Name = "corteToolStripMenuItem1";
            this.corteToolStripMenuItem1.Size = new System.Drawing.Size(180, 22);
            this.corteToolStripMenuItem1.Text = "Corte";
            this.corteToolStripMenuItem1.Click += new System.EventHandler(this.corteToolStripMenuItem1_Click);
            // 
            // animalToolStripMenuItem
            // 
            this.animalToolStripMenuItem.Name = "animalToolStripMenuItem";
            this.animalToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.animalToolStripMenuItem.Text = "Animal";
            this.animalToolStripMenuItem.Click += new System.EventHandler(this.animalToolStripMenuItem_Click);
            // 
            // detalleDeCortesToolStripMenuItem
            // 
            this.detalleDeCortesToolStripMenuItem.Name = "detalleDeCortesToolStripMenuItem";
            this.detalleDeCortesToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.detalleDeCortesToolStripMenuItem.Text = "Detalle de cortes";
            this.detalleDeCortesToolStripMenuItem.Click += new System.EventHandler(this.detalleDeCortesToolStripMenuItem_Click);
            // 
            // menuMetodoPago
            // 
            this.menuMetodoPago.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.menuMetodoPago.IconChar = FontAwesome.Sharp.IconChar.CreditCardAlt;
            this.menuMetodoPago.IconColor = System.Drawing.Color.Black;
            this.menuMetodoPago.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.menuMetodoPago.IconSize = 50;
            this.menuMetodoPago.ImageAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.menuMetodoPago.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
            this.menuMetodoPago.Name = "menuMetodoPago";
            this.menuMetodoPago.Size = new System.Drawing.Size(121, 70);
            this.menuMetodoPago.Text = "Metodo de Pago";
            this.menuMetodoPago.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.menuMetodoPago.Click += new System.EventHandler(this.iconMenuItem4_Click);
            // 
            // menuReportes
            // 
            this.menuReportes.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ventasToolStripMenuItem,
            this.comprasToolStripMenuItem});
            this.menuReportes.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.menuReportes.IconChar = FontAwesome.Sharp.IconChar.Paste;
            this.menuReportes.IconColor = System.Drawing.Color.Black;
            this.menuReportes.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.menuReportes.IconSize = 50;
            this.menuReportes.ImageAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.menuReportes.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
            this.menuReportes.Name = "menuReportes";
            this.menuReportes.Size = new System.Drawing.Size(74, 70);
            this.menuReportes.Text = "Reportes";
            this.menuReportes.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.menuReportes.Click += new System.EventHandler(this.menuReportes_Click);
            // 
            // ventasToolStripMenuItem
            // 
            this.ventasToolStripMenuItem.Name = "ventasToolStripMenuItem";
            this.ventasToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.ventasToolStripMenuItem.Text = "Ventas";
            this.ventasToolStripMenuItem.Click += new System.EventHandler(this.ventasToolStripMenuItem_Click_1);
            // 
            // comprasToolStripMenuItem
            // 
            this.comprasToolStripMenuItem.Name = "comprasToolStripMenuItem";
            this.comprasToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.comprasToolStripMenuItem.Text = "Compras";
            this.comprasToolStripMenuItem.Click += new System.EventHandler(this.comprasToolStripMenuItem_Click);
            // 
            // menuContacto
            // 
            this.menuContacto.Font = new System.Drawing.Font("Mongolian Baiti", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.menuContacto.IconChar = FontAwesome.Sharp.IconChar.Tools;
            this.menuContacto.IconColor = System.Drawing.Color.Black;
            this.menuContacto.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.menuContacto.IconSize = 50;
            this.menuContacto.ImageAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.menuContacto.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
            this.menuContacto.Name = "menuContacto";
            this.menuContacto.Size = new System.Drawing.Size(75, 70);
            this.menuContacto.Text = "Contacto";
            this.menuContacto.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.menuContacto.Click += new System.EventHandler(this.menuContacto_Click);
            // 
            // menuStrip2
            // 
            this.menuStrip2.AutoSize = false;
            this.menuStrip2.BackColor = System.Drawing.Color.Maroon;
            this.menuStrip2.Location = new System.Drawing.Point(0, 0);
            this.menuStrip2.Name = "menuStrip2";
            this.menuStrip2.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.menuStrip2.Size = new System.Drawing.Size(1005, 85);
            this.menuStrip2.TabIndex = 3;
            this.menuStrip2.Text = "menuStrip2";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Maroon;
            this.label1.Font = new System.Drawing.Font("Perpetua Titling MT", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.label1.Location = new System.Drawing.Point(42, 24);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(403, 38);
            this.label1.TabIndex = 4;
            this.label1.Text = "CARNICERIA FRIGOINCA";
            // 
            // iconMenuItem2
            // 
            this.iconMenuItem2.IconChar = FontAwesome.Sharp.IconChar.None;
            this.iconMenuItem2.IconColor = System.Drawing.Color.Black;
            this.iconMenuItem2.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.iconMenuItem2.Name = "iconMenuItem2";
            this.iconMenuItem2.Size = new System.Drawing.Size(32, 19);
            this.iconMenuItem2.Text = "iconMenuItem2";
            // 
            // iconPictureBox1
            // 
            this.iconPictureBox1.BackColor = System.Drawing.Color.Maroon;
            this.iconPictureBox1.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.iconPictureBox1.IconChar = FontAwesome.Sharp.IconChar.SignOutAlt;
            this.iconPictureBox1.IconColor = System.Drawing.SystemColors.ControlLightLight;
            this.iconPictureBox1.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.iconPictureBox1.IconSize = 44;
            this.iconPictureBox1.Location = new System.Drawing.Point(961, 0);
            this.iconPictureBox1.Name = "iconPictureBox1";
            this.iconPictureBox1.Size = new System.Drawing.Size(44, 48);
            this.iconPictureBox1.TabIndex = 5;
            this.iconPictureBox1.TabStop = false;
            this.iconPictureBox1.Click += new System.EventHandler(this.iconPictureBox1_Click);
            // 
            // iconPictureBox2
            // 
            this.iconPictureBox2.BackColor = System.Drawing.Color.Maroon;
            this.iconPictureBox2.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.iconPictureBox2.IconChar = FontAwesome.Sharp.IconChar.Grunt;
            this.iconPictureBox2.IconColor = System.Drawing.SystemColors.ControlLightLight;
            this.iconPictureBox2.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.iconPictureBox2.IconSize = 58;
            this.iconPictureBox2.Location = new System.Drawing.Point(484, 12);
            this.iconPictureBox2.Name = "iconPictureBox2";
            this.iconPictureBox2.Size = new System.Drawing.Size(67, 58);
            this.iconPictureBox2.TabIndex = 6;
            this.iconPictureBox2.TabStop = false;
            // 
            // lbfecha
            // 
            this.lbfecha.AutoSize = true;
            this.lbfecha.BackColor = System.Drawing.Color.DarkRed;
            this.lbfecha.Font = new System.Drawing.Font("Palatino Linotype", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbfecha.ForeColor = System.Drawing.Color.Tan;
            this.lbfecha.Location = new System.Drawing.Point(784, 49);
            this.lbfecha.Name = "lbfecha";
            this.lbfecha.Size = new System.Drawing.Size(76, 26);
            this.lbfecha.TabIndex = 7;
            this.lbfecha.Text = "lbFecha";
            this.lbfecha.Click += new System.EventHandler(this.lbfecha_Click);
            // 
            // lblUsuario
            // 
            this.lblUsuario.AutoSize = true;
            this.lblUsuario.BackColor = System.Drawing.Color.DarkRed;
            this.lblUsuario.Font = new System.Drawing.Font("Palatino Linotype", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblUsuario.ForeColor = System.Drawing.Color.Tan;
            this.lblUsuario.Location = new System.Drawing.Point(784, 9);
            this.lblUsuario.Name = "lblUsuario";
            this.lblUsuario.Size = new System.Drawing.Size(93, 26);
            this.lblUsuario.TabIndex = 9;
            this.lblUsuario.Text = "lbUsuario";
            this.lblUsuario.Click += new System.EventHandler(this.label2_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.BackColor = System.Drawing.Color.DarkRed;
            this.label4.Font = new System.Drawing.Font("Palatino Linotype", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.ForeColor = System.Drawing.Color.Tan;
            this.label4.Location = new System.Drawing.Point(696, 9);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(82, 26);
            this.label4.TabIndex = 11;
            this.label4.Text = "Usuario:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.DarkRed;
            this.label2.Font = new System.Drawing.Font("Palatino Linotype", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.Tan;
            this.label2.Location = new System.Drawing.Point(704, 49);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(70, 26);
            this.label2.TabIndex = 12;
            this.label2.Text = "Fecha :";
            // 
            // iconPictureBox3
            // 
            this.iconPictureBox3.BackColor = System.Drawing.Color.Maroon;
            this.iconPictureBox3.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.iconPictureBox3.IconChar = FontAwesome.Sharp.IconChar.Clone;
            this.iconPictureBox3.IconColor = System.Drawing.SystemColors.ControlLightLight;
            this.iconPictureBox3.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.iconPictureBox3.IconSize = 44;
            this.iconPictureBox3.Location = new System.Drawing.Point(920, 0);
            this.iconPictureBox3.Name = "iconPictureBox3";
            this.iconPictureBox3.Size = new System.Drawing.Size(44, 48);
            this.iconPictureBox3.TabIndex = 13;
            this.iconPictureBox3.TabStop = false;
            this.iconPictureBox3.Click += new System.EventHandler(this.iconPictureBox3_Click);
            // 
            // contenedor
            // 
            this.contenedor.BackColor = System.Drawing.Color.AntiqueWhite;
            this.contenedor.Dock = System.Windows.Forms.DockStyle.Fill;
            this.contenedor.Location = new System.Drawing.Point(0, 159);
            this.contenedor.Name = "contenedor";
            this.contenedor.Size = new System.Drawing.Size(1005, 590);
            this.contenedor.TabIndex = 15;
            // 
            // FormInicio
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.ClientSize = new System.Drawing.Size(1005, 749);
            this.Controls.Add(this.contenedor);
            this.Controls.Add(this.iconPictureBox3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.lblUsuario);
            this.Controls.Add(this.lbfecha);
            this.Controls.Add(this.iconPictureBox2);
            this.Controls.Add(this.iconPictureBox1);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.menuStrip1);
            this.Controls.Add(this.menuStrip2);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FormInicio";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FormInicio";
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.iconPictureBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.iconPictureBox2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.iconPictureBox3)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private FontAwesome.Sharp.IconMenuItem menuEncargado;
        private FontAwesome.Sharp.IconMenuItem menuCliente;
        private FontAwesome.Sharp.IconMenuItem menuProveedor;
        private FontAwesome.Sharp.IconMenuItem menuCompra;
        private FontAwesome.Sharp.IconMenuItem menuVenta;
        private System.Windows.Forms.MenuStrip menuStrip2;
        private System.Windows.Forms.Label label1;
        private FontAwesome.Sharp.IconMenuItem iconMenuItem2;
        private FontAwesome.Sharp.IconPictureBox iconPictureBox1;
        private FontAwesome.Sharp.IconPictureBox iconPictureBox2;
        private System.Windows.Forms.Label lbfecha;
        private FontAwesome.Sharp.IconMenuItem menuContacto;
        private FontAwesome.Sharp.IconMenuItem menuMetodoPago;
        private System.Windows.Forms.Label lblUsuario;
        private System.Windows.Forms.ToolStripMenuItem materiaPrimaToolStripMenuItem;
        private FontAwesome.Sharp.IconMenuItem menuReportes;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label2;
        private FontAwesome.Sharp.IconPictureBox iconPictureBox3;
        private FontAwesome.Sharp.IconMenuItem menuInventario;
        private System.Windows.Forms.ToolStripMenuItem corteToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem loteProductoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ordenCompraToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem inventarioToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem requerimientoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ventasToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem comprasToolStripMenuItem;
        private System.Windows.Forms.Panel contenedor;
        private System.Windows.Forms.ToolStripMenuItem animalToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem detalleDeCortesToolStripMenuItem;
    }
}
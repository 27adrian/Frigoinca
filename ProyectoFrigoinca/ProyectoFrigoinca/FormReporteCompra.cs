using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ProyectoFrigoinca
{
    public partial class FormReporteCompra : Form
    {
        public FormReporteCompra()
        {
            InitializeComponent();
        }

        public DateTime fecha1 { get; set; }

        public DateTime fecha2 { get; set; }
        private void Form1_Load(object sender, EventArgs e)
        {
            this.ReporteComprasTableAdapter.Fill(this.dataMostrar.reporteCompras,fecha1,fecha2);
            this.reportViewer1.RefreshReport();
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {   
            DateTime fecha1=dtpDesde.Value;

            DateTime fecha2=dtpHasta.Value;
            this.ReporteComprasTableAdapter.Fill(this.dataMostrar.reporteCompras, fecha1, fecha2);
            this.reportViewer1.RefreshReport();

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
}

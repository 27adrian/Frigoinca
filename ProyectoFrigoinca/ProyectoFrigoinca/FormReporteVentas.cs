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
    public partial class FormReporteVentas : Form
    {
        public FormReporteVentas()
        {
            InitializeComponent();
        }

        public DateTime fecha1 { get; set; }
        public DateTime fecha2 { get; set; }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void FormReporteVentas_Load(object sender, EventArgs e)
        {
            this.reporteVentasTableAdapter.Fill(this.dataMostrar.reporteVentas, fecha1, fecha2);     
            this.reportViewer1.RefreshReport();
            //this.reportViewer1.RefreshReport();
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            DateTime fecha1 = dtpDesde.Value;
            DateTime fecha2 = dtpHasta.Value;

            this.reporteVentasTableAdapter.Fill(this.dataMostrar.reporteVentas, fecha1, fecha2);
            this.reportViewer1 .RefreshReport();

        }

        private void dtpDesde_ValueChanged(object sender, EventArgs e)
        {

        }
    }
}

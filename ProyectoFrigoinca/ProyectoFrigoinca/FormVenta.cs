using CapaDatos;
using CapaEntidad;
using CapaLogica;
using RestSharp;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Runtime.Remoting.Metadata.W3cXsd2001;
using System.Text;
using System.Threading.Tasks;
using System.Web.Configuration;
using System.Windows.Forms;


namespace ProyectoFrigoinca
{
    public partial class txtCli : Form
    {
        public txtCli()
        {
            InitializeComponent();
            ListarCLientesResumen();
            LlenarComboBox();
            cbmDocumento.Items.Add("BOLETA");
            cbmDocumento.Items.Add("FACTURA");

            cbmDocumento.SelectedIndex = -1;
        }

        private void dgvInventario_CellEnter(object sender, DataGridViewCellEventArgs e)
        {
           
        }
        private int idTemporal = 1;
        private void btnAggProd_Click(object sender, EventArgs e)
        {
            // Verifica si el campo de cantidad está vacío o no es un número válido
            if (!int.TryParse(txtCantidad.Text, out int cantidad))
            {
                MessageBox.Show("Por favor, ingrese una cantidad válida.", "ALERTA", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            // Verifica si la cantidad es mayor al stock disponible
            if (cantidad > stockDisponible)
            {
                MessageBox.Show("La cantidad solicitada es mayor al stock.", "ALERTA", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            // Verifica si los campos de texto están llenos
            if (string.IsNullOrEmpty(txtCodigoPro.Text) ||
                string.IsNullOrEmpty(txtDescripcion.Text) ||
                string.IsNullOrEmpty(txtPrecioU.Text))
            {
                MessageBox.Show("Seleccione un producto válido.", "ALERTA", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            // Crea un nuevo objeto de inventario
            entInventario2 c = new entInventario2
            {
                IdInv = Convert.ToInt32(txtCodigoPro.Text),
                Descripcion = txtDescripcion.Text,
                Stock = cantidad,
                PrecioXunidad = Convert.ToDecimal(txtPrecioU.Text)
            };

            // Agrega el objeto al DataGridView de selección
            dgvSeleccion.Rows.Add(idTemporal, c.IdInv, c.Descripcion, c.PrecioXunidad, c.Stock);

            // Incrementar el contador de ID temporal para la próxima fila
            idTemporal++;

            // Limpia el campo de cantidad
            txtCantidad.Text = "";
            txtCodigoPro.Text = "";
            txtDescripcion.Text = "";
            txtPrecioU.Text = "";

        }

        private void ListarCLientesResumen()
        {
           
        }

        private void LlenarComboBox()
        {
            List<entMedioPago> listMedPago = logMedioPago.Instancia.ListarMedioPago();
            cbmPago.DataSource = listMedPago;
            cbmPago.DisplayMember = "descMedPag"; // El nombre del animal para mostrar en el ComboBox
            cbmPago.ValueMember = "idMedPago"; // El valor real que representa al animal (su ID)
        }


        private void btnVenta_Click(object sender, EventArgs e)
        {
            if (dgvSeleccion.Rows.Count < 1)
            {
                MessageBox.Show("No se selecionó ningun producto.", "AVISO", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }
            int cantidadTotal = 0, unidades = 0;
            decimal montoUnidad = 0, montoTotal = 0;
            entVenta c = new entVenta();
            c.idMedPago = int.Parse(cbmPago.SelectedValue.ToString());
            c.idCli = int.Parse(txtIdCli.Text.ToString());
            foreach (DataGridViewRow fila in dgvSeleccion.Rows)
            {
                cantidadTotal += int.Parse(fila.Cells[4].Value?.ToString());
            }
            c.cantidad = cantidadTotal;
            cantidadTotal = 0;
            foreach (DataGridViewRow fila in dgvSeleccion.Rows)
            {
                unidades = int.Parse(fila.Cells[4].Value?.ToString());
                montoUnidad = Decimal.Parse(fila.Cells[3].Value?.ToString());
                montoTotal += (Decimal.Parse(unidades.ToString()) * montoUnidad);
            }
            c.montoTotal = montoTotal;
            DateTime d = DateTime.Now;
            c.fechaRegistro = d.Date;

            if (int.Parse(cbmPago.SelectedValue.ToString()) == 4)
            {
                using (FormPagoTarjeta formPagoTarjeta = new FormPagoTarjeta(montoTotal))
                {
                    if (formPagoTarjeta.ShowDialog() == DialogResult.OK)
                    {
                        Console.WriteLine("dialog");
                        this.registrarVentaPosPagoVisa(formPagoTarjeta.purchaseGlobal, formPagoTarjeta.jsonGlobal);
                    }
                }
            }
            else
            {
                // Llamada a InsertarVenta de logVenta.Instancia
                if (logVenta.Instancia.InsertarVenta(ref c))
                {
                    // Iterar sobre las filas de dgvSeleccion para insertar detalles de la venta
                    foreach (DataGridViewRow fila in dgvSeleccion.Rows)
                    {
                        entDetVenta vo = new entDetVenta();
                        vo.idOrdVen = c.idOrdVen;
                        int idInv = int.Parse(fila.Cells[1].Value?.ToString());
                        vo.idInv = idInv;
                        int cantidad = int.Parse(fila.Cells[4].Value?.ToString());
                        vo.cantidad = cantidad;
                        decimal precioUnitario = decimal.Parse(fila.Cells[3].Value?.ToString());
                        vo.precioUnitario = precioUnitario;
                        decimal subTotal = cantidad * precioUnitario;
                        vo.subTotal = subTotal;
                        logDetVenta.Instancia.InsertarDetVenta(vo);
                    }

                    // Mostrar mensaje de confirmación de ingreso de datos
                    MessageBox.Show("Ingreso correcto de datos. ID de venta: " + c.idOrdVen, "CONFIRMACION INGRESO", MessageBoxButtons.OK, MessageBoxIcon.Information);
                   
                }
                else
                {
                    MessageBox.Show("Error al insertar la venta.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                entClienteBoleta clienteBoleta = new entClienteBoleta();
                clienteBoleta = logCliente.Instancia.BuscarClienteBoleta(c.idCli);
                // Llamar al método GenerarPDF después de insertar la venta
                GenerarPDF(c.idOrdVen, clienteBoleta);
                // Limpiar el DataGridView dgvSeleccion después de completar la operación
                dgvSeleccion.Rows.Clear();
            }
            

            txtIdCli.Text = "";
            txtNombre.Text = "";
            txtNumeroDoc.Text = "";
            txtDoc.Text = "";
        }
        public void registrarVentaPosPagoVisa(string purchaseNumber, string cadenaJson)
        {
            Console.WriteLine("==================registrarVentaPosPagoVisa");
            Console.WriteLine(purchaseNumber);

            int cantidadTotal = 0, unidades = 0;
            decimal montoUnidad = 0, montoTotal = 0;
            entVenta c = new entVenta();
            c.idMedPago = int.Parse(cbmPago.SelectedValue.ToString());
            c.idCli = int.Parse(txtIdCli.Text.ToString());
            foreach (DataGridViewRow fila in dgvSeleccion.Rows)
            {
                cantidadTotal += int.Parse(fila.Cells[4].Value?.ToString());
            }
            c.cantidad = cantidadTotal;
            cantidadTotal = 0;
            foreach (DataGridViewRow fila in dgvSeleccion.Rows)
            {
                unidades = int.Parse(fila.Cells[4].Value?.ToString());
                montoUnidad = Decimal.Parse(fila.Cells[3].Value?.ToString());
                montoTotal += (Decimal.Parse(unidades.ToString()) * montoUnidad);
            }
            c.montoTotal = montoTotal;
            DateTime d = DateTime.Now;
            c.fechaRegistro = d.Date;

            if (logVenta.Instancia.InsertarVenta(ref c))
            {
                foreach (DataGridViewRow fila in dgvSeleccion.Rows)
                {
                    entDetVenta vo = new entDetVenta();
                    vo.idOrdVen = c.idOrdVen;
                    int idInv = int.Parse(fila.Cells[1].Value?.ToString());
                    vo.idInv = idInv;
                    int cantidad = int.Parse(fila.Cells[4].Value?.ToString());
                    vo.cantidad = cantidad;
                    decimal precioUnitario = decimal.Parse(fila.Cells[3].Value?.ToString());
                    vo.precioUnitario = precioUnitario;
                    decimal subTotal = cantidad * precioUnitario;
                    vo.subTotal = subTotal;
                    logDetVenta.Instancia.InsertarDetVenta(vo);
                }

                /* Guardar datos de Venta Visa */
                entOrdenVentaVisa ordVenVisa = new entOrdenVentaVisa();
                ordVenVisa.idOrdVen = c.idOrdVen;
                ordVenVisa.purchaseNumber = purchaseNumber;
                ordVenVisa.cadenaJson = cadenaJson;
                logVenta.Instancia.InsertarOrdenVentaVisa(ref ordVenVisa);

                MessageBox.Show("Ingreso correcto de datos. ID de venta: " + c.idOrdVen, "CONFIRMACION INGRESO", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            entClienteBoleta clienteBoleta = new entClienteBoleta();
            clienteBoleta = logCliente.Instancia.BuscarClienteBoleta(c.idCli);
            // Llamar al método GenerarPDF después de insertar la venta
            GenerarPDF(c.idOrdVen, clienteBoleta);
            dgvSeleccion.Rows.Clear();
            {

            }
        }

        private void btn1_Click(object sender, EventArgs e)
        {
            if (dgvSeleccion.SelectedRows.Count > 0)
            {
                dgvSeleccion.Rows.RemoveAt(dgvSeleccion.SelectedRows[0].Index);
            }
        }

        private void FormVenta_Activated(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Normal;
        }

        public string GenerarSerie(long numero)
        {
            Random random = new Random();

            // Generar el primer carácter alfabético (A-Z)
            char firstChar = (char)random.Next('A', 'Z' + 1);

            // Asegurarse de que el número tiene tres dígitos, añadiendo ceros a la izquierda si es necesario
            string numericPartFormatted = numero.ToString("D3");

            // Combinar el carácter alfabético y la parte numérica
            string serie = firstChar + numericPartFormatted;

            return serie;
        }


        public void GenerarPDF(long venta, entClienteBoleta cli)
        {
            try
            {
                var client = new RestClient("https://facturacion.apisperu.com/api/v1/invoice/pdf"); //URL
                var request = new RestRequest();
                // List<Producto> productos = new CN_Producto().Listar();
                request.Method = Method.Post;
                request.AddHeader("Content-Type", "application/json");
                //Token
                request.AddHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJ1c2VybmFtZSI6IjkzMjMzNzM4MSIsImNvbXBhbnkiOiIyMDYwMjQ5MjU0MSIsImlhdCI6MTcxODI0NzI5MiwiZXhwIjo4MDI1NDQ3MjkyfQ.UJtfxbdJvUtsGSoGhOzRs5zR8c5Nro6iimX5h1XLZAjr9wu5Rgj3EEl7Pi5BodlvNkIBwk8vW-AzuhmCJYDprYHtDtnaF5jPTIN9qHFtjoAvNqSZ6EB9OYLJyLR-fhlaNx-3B6mgUPVqD8LjGeKDnIlYGZmUWu_JVXLN523t09uLrMM0mcKdFNeO0s77gB_9Z0prdnUQUuinDQDSHF_JDkRryg0oXvvkm1KUqAyTBxTWTk_YAMUMLCw56eore71hzgCTR3l7y1cPjPnYkZKi-dM6s3kDOg3tUtPJ2Kbyo71NkhkWtPOJqAsOMdlJ7pC6EaA2FiauG90S9BMmGHy7xCJ0fW5S5ZkNeICI4BOo2hd5A446PKli8QcfA0d3LNk4sN2TDWBQpYRNpLovk_6YvhMdZVjrR3bAywphoAkyTYUL_qMhcy7ptbTP6pD_hOXqTDaLfjJd1DkACMb6lNqgA9pRyUMrg-OZUaJfym5ulHxhhOhVktS4VZEBEGSZn20kaIzRgHHfLIgdusUnE0pYJVXTMdBsp5LVymHUSWJ20Uy8SZFgLrW_fX1oABbiUq5ctlO2wPuRBbZrsLNjRt6LRQ4WO1a7cbUo-iVpoeZEAfJL9sNTkc_kH1HxWnoJ98FywVpFiuWs9mN0qUqhF6gnMYRz3to4WbT8F1Sduk5_9Xs");

                var detailsList = new List<object>();
                var docIdent = "";
                if (cli.tipoDoc == "DNI")
                {
                    docIdent = "1";
                }
                else
                {
                    docIdent = "6";
                }
                int ubiBoleta = cli.idUbigeo;
                entUbigeo ubi = new entUbigeo();
                ubi = logUbigeo.Instancia.BuscarUbigeoBoleta(ubiBoleta);

                foreach (DataGridViewRow row in dgvSeleccion.Rows)
                {
                    //Almacenando la informacion de los datagridview en variables
                    var codProducto = row.Cells[1].Value?.ToString();//ID del producto
                    var descripcion = row.Cells[2].Value?.ToString();//Descripcion del producto
                    var cantidad = Convert.ToInt16(row.Cells[4].Value?.ToString());//Cantidad de productos
                    var mtoValorUnitarioIGV = Convert.ToDecimal(row.Cells[3].Value?.ToString());//Valor del producto con IGV
                    int IGV = 18;
                    decimal mtoValorUnitarioNoIGV = Convert.ToDecimal(mtoValorUnitarioIGV) * (1 -(Convert.ToDecimal(IGV) / 100));
                    var mtoValorTotalNoIGV = mtoValorUnitarioNoIGV * cantidad;
                    var impuestos = (Convert.ToDecimal(mtoValorUnitarioIGV) * Convert.ToDecimal(cantidad)) * (Convert.ToDecimal(IGV)/100);
                    var montoIGV = mtoValorUnitarioIGV * (Convert.ToDecimal(IGV) / 100);
                    //almacenamos dichas variables en la informacion requerida por el json
                    var detail = new
                    {
                        codProducto = codProducto,//ITEM
                        unidad = "u", //Unidad de medida/cantidad
                        descripcion = descripcion, //Descripcion del producto
                        cantidad = cantidad, //Cantidad de productos
                        mtoValorUnitario = mtoValorUnitarioNoIGV,//V/U
                        mtoValorVenta = mtoValorTotalNoIGV,//subtotal
                        mtoBaseIgv = mtoValorTotalNoIGV,////Valor de la venta por cantidad sin IGV AHIAHI
                        porcentajeIgv = IGV,//IGV en porcentaje AHIAHI
                        igv = montoIGV,//Monto del IGV unitario AHIAHI
                        tipAfeIgv = 10,//Grabada - Operacion Onerosa
                        totalImpuestos = impuestos,//Monto del IGV por la cantidad
                        mtoPrecioUnitario = mtoValorUnitarioIGV//P/U
                    };
                    //Añadimos la informacion del objeto a una lista
                    detailsList.Add(detail);
                }

                //Corregir la obtención de mtoValorVenta y totalImpuestos
                var mtoOperGravadas = detailsList.Sum(detail => (decimal)detail.GetType().GetProperty("mtoValorVenta").GetValue(detail)); //Sumatoria de la venta sin IGV
                var totalImpuestos = detailsList.Sum(detail => (decimal)detail.GetType().GetProperty("totalImpuestos").GetValue(detail)); //Sumatoria del IGV
                var totalVenta = mtoOperGravadas + totalImpuestos;//Valor venta + IGV
                double totalVenta2 = Convert.ToDouble(totalVenta);
                int soles = (int)Math.Truncate(totalVenta2);
                decimal centimos = Convert.ToDecimal(totalVenta) - Convert.ToDecimal(soles);
                centimos = Convert.ToInt16(centimos * 100);
                string serie = GenerarSerie(venta);
                Random random = new Random();

                // Suponiendo que tienes un ComboBox llamado comboxDocumento
                string tipoDoc = "", tipoPago = ""; // Inicializamos tipoDoc como cadena vacía
                

                // Lógica para determinar el tipo de documento según la selección en el ComboBox
                if (cbmDocumento.SelectedItem != null)
                {
                    string documentoSeleccionado = cbmDocumento.SelectedItem.ToString();

                    // Asignar el valor correspondiente a tipoDoc
                    if (documentoSeleccionado == "BOLETA")
                    {
                        tipoDoc = "03"; // Si es boleta, asignamos "03"
                    }
                    else if (documentoSeleccionado == "FACTURA")
                    {
                        tipoDoc = "01"; // Si es factura, asignamos "01"
                    }
                }
                //Informacion requerida del json
                var jsonData = new //Datos que se envian al Json
                {
                    ublVersion = "2.1",//Version de ubl
                    tipoOperacion = "0101", //El tipo de operacion, en este caso es venta interna
                    tipoDoc = tipoDoc,//Tipo de Documento (entre los tipos de boletas y facturas)
                    serie = serie, //Numero de serie de la boleta
                    correlativo = random.Next(0, 10),//Numero correlativo de la serie de la boleta
                    fechaEmision = DateTime.Now.ToString("yyyy-MM-ddTHH:mm:sszzz"),//Fecha de emision de la boleta
                    formaPago = new
                    {
                        moneda = "PEN",// Moneda usada en el pago
                        tipo = "Contado" //Como se hizo el pago
                    },
                    tipoMoneda = "PEN",//Moneda usada
                    client = new
                    {
                        tipoDoc = docIdent,//Tipo de documento usado por el cliente (DNI = 1 o RUC = 6)
                        numDoc = cli.numeroDoc,//Numero de Documento del cliente
                        rznSocial = cli.nombComp,//Nombre del cliente
                        address = new
                        {
                            direccion = cli.direccion, //Direccion exacta
                            provincia = ubi.provincia,//Provincia
                            departamento = ubi.departamento,//Departamento
                            distrito = ubi.distrito,//Distrito
                            ubigueo = cli.idUbigeo//Ubigeo
                        }
                    },
                    company = new
                    {
                        ruc = 20602492541,//RUC de la empresa
                        razonSocial = "FRIGOINCA SOCIEDAD ANONIMA CERRADA - FRIGOINCA S.A.C.",//Razon social de la empresa
                        nombreComercial = "FRIGOINCA", //Nombre comercial de la empresa
                        address = new
                        {
                            direccion = "Calle Canevaro 110, Pacanga, Perú",//Direccion exacta
                            provincia = "CHEPEN",//Provincia
                            departamento = "LA LIBERTAD",//Departamento
                            distrito = "PACANGA",//Distrito
                            ubigueo = "130402"//Ubigeo
                        }
                    },

                    mtoOperGravadas = mtoOperGravadas,//Monto total sin IGV
                    mtoIGV = totalImpuestos,//Monto del IGV
                    valorVenta = totalVenta,//Monto de la venta con IGV AHIAHI
                    totalImpuestos = totalImpuestos,//Monto del IGV AHIAHI
                    subTotal = mtoOperGravadas,//Monto total sin IGV AHIAHI
                    mtoImpVenta = totalVenta,//Monto de la venta con IGV
                    details = detailsList.ToArray(),//Añadimos la lista de los objetos a los detalles
                    legends = new[]//
                    {
                        new
                        {
                            code = "1000",//Identificador de que se coloca el monto en letras
                            value = $"SON {soles.ToString()} CON {centimos.ToString()}/100 SOLES"//Monto en letras
                        }
                    }
                };

                string jsonBody = Newtonsoft.Json.JsonConvert.SerializeObject(jsonData);
                request.AddParameter("application/json", jsonBody, ParameterType.RequestBody);

                RestResponse response = (RestResponse)client.Execute(request);

                string nombreArchivo = "Boleta_" + DateTime.Now.ToString("ddMMyyyyHHmmss") + ".pdf";

                SaveFileDialog saveFileDialog1 = new SaveFileDialog
                {
                    Filter = "Archivos PDF|*.pdf",
                    FileName = nombreArchivo
                };

                if (saveFileDialog1.ShowDialog() == DialogResult.OK)
                {
                    string rutaDescarga = saveFileDialog1.FileName;
                    System.IO.File.WriteAllBytes(rutaDescarga, response.RawBytes);
                    MessageBox.Show("Archivo PDF descargado con éxito como: " + rutaDescarga);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex);
            }
        }

       
        private void btnBuscarCli_Click_1(object sender, EventArgs e)
        {
            using (FormBuscarCli fromBuscarc = new FormBuscarCli())
            {
                if (fromBuscarc.ShowDialog() == DialogResult.OK)
                {
                    txtIdCli.Text = fromBuscarc.idCli;
                    txtNombre.Text = fromBuscarc.nombreCli;
                    txtDoc.Text = fromBuscarc.doc;
                    txtNumeroDoc.Text = fromBuscarc.numDoc;                   
                    
                }
            }
        }
        private int stockDisponible; // Nueva variable para almacenar el stock disponible
        private void btnBuscarP_Click(object sender, EventArgs e)
        {
            using (FormBuscarPro formBuscarP = new FormBuscarPro())
            {
                if (formBuscarP.ShowDialog() == DialogResult.OK)
                {
                    txtCodigoPro.Text = formBuscarP.codigo;
                    txtPrecioU.Text = formBuscarP.precioU;
                    txtDescripcion.Text = formBuscarP.descripcion;
                    stockDisponible = formBuscarP.stockDisponible; // Almacena el stock disponible
                    txtCantidad.Focus(); // Establece el enfoque en el campo de cantidad
                }
            }
        }

        private void dgvInventario_CellEnter_1(object sender, DataGridViewCellEventArgs e)
        {
           
        }

        
    }
}
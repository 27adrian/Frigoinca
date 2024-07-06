using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Net.Http.Headers;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ProyectoFrigoinca
{
    public partial class FormPagoTarjeta : Form
    {

        public decimal montoTotalInto = 0;
        public string purchaseGlobal { get; private set; }
        public string jsonGlobal { get; private set; }
        public FormPagoTarjeta(decimal montoTotal)
        {
            InitializeComponent();
            montoTotalInto = montoTotal;
            lblMontoTotal.Text = montoTotal.ToString();
        }

        private async void btnPagar_Click(object sender, EventArgs e)
        {
            if (txtNumeroTarjeta.Text == ""
                || txtVencimiento.Text == ""
                || txtCvv.Text == ""
                || txtNombres.Text == ""
                || txtApellidos.Text == ""
                || txtCorreo.Text == ""
                || txtNumeroTarjeta.Text == "Número de tarjeta"
                || txtVencimiento.Text == "MM/VV"
                || txtCvv.Text == "CVV"
                || txtNombres.Text == "Nombres"
                || txtApellidos.Text == "Apellidos"
                || txtCorreo.Text == "Correo"
                )
            {
                MessageBox.Show("Debe ingresar todos los campos.", "AVISO", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }
            else
            {
                /* Obtenemos el código de seguridad */
                var security = await ApiSecurity();
                var tokenSesion = await ApiToken(security, montoTotalInto);
                var aprobacion = await ApiAutorizacion(security, montoTotalInto);

                Console.WriteLine("==================Resultado de transacción");
                Console.WriteLine(aprobacion);

                if (aprobacion != "")
                {
                    JObject obj = JObject.Parse(aprobacion.ToString());

                    if (obj["order"]["actionCode"].ToString() == "000")
                    {
                        Console.WriteLine(obj["order"]["purchaseNumber"].ToString());
                        purchaseGlobal = obj["order"]["purchaseNumber"].ToString();
                        jsonGlobal = obj.ToString();

                        DialogResult = DialogResult.OK;
                        this.Close();
                    }
                }

            }
        }
        private async Task<string> ApiAutorizacion(string security, decimal amount)
        {
            var client = new HttpClient();
            string purchaseNumber = new Random().Next(100000000, 999999999).ToString();
            purchaseNumber = "33" + purchaseNumber;
            string vencimientoTexto = txtVencimiento.Text;
            string[] vencimiento = vencimientoTexto.Split('/');

            var cardHolder = new objCardHolder(txtNombres.Text, txtApellidos.Text, txtCorreo.Text);
            var card = new objCard(txtNumeroTarjeta.Text, vencimiento[0], vencimiento[1], txtCvv.Text);
            var order = new objOrder(purchaseNumber.ToString(), amount);
            var obj = new objAutorization(order, card, cardHolder);

            string resultado = "";

            var request = new HttpRequestMessage
            {
                Method = HttpMethod.Post,
                RequestUri = new Uri("https://apisandbox.vnforappstest.com/api.authorization/v3/authorization/ecommerce/456879852"),
                Headers =
                {
                    { "accept", "application/json" },
                    { "Authorization", security },
                },
                Content = new StringContent(SerealizarObjAutorization(obj).ToString())
                {
                    Headers =
                {
                    ContentType = new MediaTypeHeaderValue("application/json")
                }
                }
            };
            try
            {
                using (var response = await client.SendAsync(request))
                {
                    Console.WriteLine(response.StatusCode.ToString());
                    if (response.StatusCode.ToString() == "OK")
                    {
                        response.EnsureSuccessStatusCode();
                        resultado = await response.Content.ReadAsStringAsync();
                    }
                    else
                    {
                        Console.WriteLine("Condicion 01");
                        Console.WriteLine(response.ToString());
                        MessageBox.Show("Problemas al intentar hacer el pago.", "AVISO", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    }

                }
            }
            catch (Exception e)
            {
                Console.WriteLine("Condicion 02");
                throw e;
            }
            finally
            {

            }

            return resultado;
        }

        private async Task<string> ApiToken(string security, decimal amount)
        {
            var client = new HttpClient();
            var objMerchantDefine = new ObjetoApiTokenAntiraudMerchantDefineData();
            var objAntifraude = new ObjetoApiTokenAntiraud(objMerchantDefine);
            var obj = new ObjetoApiToken("web", amount, objAntifraude);
            Console.WriteLine(SerealizarObjeto(obj).ToString());

            var request = new HttpRequestMessage
            {
                Method = HttpMethod.Post,
                RequestUri = new Uri("https://apisandbox.vnforappstest.com/api.ecommerce/v2/ecommerce/token/session/456879852"),
                Headers =
                    {
                        { "accept", "application/json" },
                        { "Authorization", security },
                    },
                /*Content = new StringContent("{\"channel\":\"web\",\"amount\": 12.33,\"antifraud\":{\"clientIp\":\"24.212.107.30\",\"merchantDefineData\":{\"additionalProp\":\"string\"}}}")*/
                Content = new StringContent(SerealizarObjeto(obj).ToString())
                {
                    Headers =
                    {
                        ContentType = new MediaTypeHeaderValue("application/json")
                    }
                }
            };
            using (var response = await client.SendAsync(request))
            {
                response.EnsureSuccessStatusCode();
                return await response.Content.ReadAsStringAsync();
            }
        }

        private async Task<string> ApiSecurity()
        {
            var client = new HttpClient();
            var request = new HttpRequestMessage
            {
                Method = HttpMethod.Get,
                RequestUri = new Uri("https://apitestenv.vnforapps.com/api.security/v1/security"),
                Headers =
                {
                    { "accept", "text/plain" },
                    { "authorization", "Basic aW50ZWdyYWNpb25lc0BuaXViaXouY29tLnBlOl83ejNAOGZG" },
                },
            };
            using (var response = await client.SendAsync(request))
            {
                response.EnsureSuccessStatusCode();
                return await response.Content.ReadAsStringAsync();
            }
        }


        public class objAutorization
        {
            public string channel { get; set; }
            public string captureType { get; set; }
            public bool countable { get; set; }
            public object order { get; set; }
            public object card { get; set; }
            public object cardHolder { get; set; }

            public objAutorization(object order, object card, object cardHolder)
            {
                this.channel = "pasarela";
                this.captureType = "manual";
                this.countable = true;
                this.order = order;
                this.card = card;
                this.cardHolder = cardHolder;
            }
        }

        public class objOrder
        {
            public string purchaseNumber { get; set; }
            public decimal amount { get; set; }
            public string currency { get; set; }
            public int installment { get; set; }

            public objOrder(string purchaseNumber, decimal amount)
            {
                this.purchaseNumber = purchaseNumber;
                this.amount = amount;
                this.currency = "PEN";
                this.installment = 0;
            }
        }

        public class objCard
        {
            public string cardNumber { get; set; }
            public string expirationMonth { get; set; }
            public string expirationYear { get; set; }
            public string cvv2 { get; set; }

            public objCard(string cardNumber, string expirationMonth, string expirationYear, string cvv2)
            {
                this.cardNumber = cardNumber;
                this.expirationMonth = expirationMonth;
                this.expirationYear = expirationYear;
                this.cvv2 = cvv2;
            }
        }

        public class objCardHolder
        {
            public string firstName { get; set; }
            public string lastName { get; set; }
            public string email { get; set; }

            public objCardHolder(string firstName, string lastName, string email)
            {
                this.firstName = firstName;
                this.lastName = lastName;
                this.email = email;
            }
        }

        public class ObjetoApiToken
        {
            public string channel { get; set; }
            public decimal amount { get; set; }
            public object ObjetoApiTokenAntiraud { get; set; }

            public ObjetoApiToken(string channel, decimal amount, object ObjetoApiTokenAntiraud)
            {
                this.channel = channel;
                this.amount = amount;
                this.ObjetoApiTokenAntiraud = ObjetoApiTokenAntiraud;
            }
        }

        public class ObjetoApiTokenAntiraud
        {
            public string clientIp { get; set; }
            public object merchantDefineData { get; set; }
            public ObjetoApiTokenAntiraud(object merchantDefineData)
            {
                this.clientIp = "24.212.107.30"; /* esto debe cambiar */
                this.merchantDefineData = merchantDefineData;
            }

        }

        public class ObjetoApiTokenAntiraudMerchantDefineData
        {
            public string additionalProp { get; set; }
            public ObjetoApiTokenAntiraudMerchantDefineData()
            {
                this.additionalProp = "string";
            }
        }

        private string SerealizarObjeto(ObjetoApiToken obj)
        {
            return JsonConvert.SerializeObject(obj);
        }

        private string SerealizarObjAutorization(objAutorization obj)
        {
            return JsonConvert.SerializeObject(obj);
        }
                

        private void txtNumeroTarjeta_Enter_1(object sender, EventArgs e)
        {
            if (txtNumeroTarjeta.Text == "Número de tarjeta")
            {
                txtNumeroTarjeta.Text = "";
                txtNumeroTarjeta.ForeColor = Color.Black;
            }
        }

        private void txtNumeroTarjeta_Leave_1(object sender, EventArgs e)
        {
            if (txtNumeroTarjeta.Text == "")
            {
                txtNumeroTarjeta.Text = "Número de tarjeta";
                txtNumeroTarjeta.ForeColor = Color.Silver;
            }
        }

        private void txtVencimiento_Enter_1(object sender, EventArgs e)
        {
            if (txtVencimiento.Text == "MM/AA")
            {
                txtVencimiento.Text = "";
                txtVencimiento.ForeColor = Color.Black;
            }
        }

        private void txtVencimiento_Leave_1(object sender, EventArgs e)
        {
            if (txtVencimiento.Text == "")
            {
                txtVencimiento.Text = "MM/AA";
                txtVencimiento.ForeColor = Color.Silver;
            }
        }

        private void txtCvv_Enter_1(object sender, EventArgs e)
        {
            if (txtCvv.Text == "CVV")
            {
                txtCvv.Text = "";
                txtCvv.ForeColor = Color.Black;
            }
        }

        private void txtCvv_Leave(object sender, EventArgs e)
        {
            if (txtCvv.Text == "")
            {
                txtCvv.Text = "CVV";
                txtCvv.ForeColor = Color.Silver;
            }
        }

        private void txtNombres_Enter_1(object sender, EventArgs e)
        {
            if (txtNombres.Text == "Nombres")
            {
                txtNombres.Text = "";
                txtNombres.ForeColor = Color.Black;
            }
        }

        private void txtNombres_Leave(object sender, EventArgs e)
        {
            if (txtNombres.Text == "")
            {
                txtNombres.Text = "Nombres";
                txtNombres.ForeColor = Color.Silver;
            }
        }

        private void txtApellidos_Enter_1(object sender, EventArgs e)
        {
            if (txtApellidos.Text == "Apellidos")
            {
                txtApellidos.Text = "";
                txtApellidos.ForeColor = Color.Black;
            }
        }

        private void txtApellidos_Leave(object sender, EventArgs e)
        {
            if (txtApellidos.Text == "")
            {
                txtApellidos.Text = "Apellidos";
                txtApellidos.ForeColor = Color.Silver;
            }
        }

        private void txtCorreo_Enter_1(object sender, EventArgs e)
        {
            if (txtCorreo.Text == "Correo")
            {
                txtCorreo.Text = "";
                txtCorreo.ForeColor = Color.Black;
            }
        }

        private void txtCorreo_Leave(object sender, EventArgs e)
        {
            if (txtCorreo.Text == "")
            {
                txtCorreo.Text = "Correo";
                txtCorreo.ForeColor = Color.Silver;
            }
        }

        private void FormPagoTarjeta_Load(object sender, EventArgs e)
        {

        }
    }
}
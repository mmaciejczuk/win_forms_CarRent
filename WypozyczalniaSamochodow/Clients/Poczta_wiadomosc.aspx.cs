using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Drawing;
using System.Data.SqlClient;

namespace WypozyczalniaSamochodow.Clients
{
    public partial class Poczta_nowa_wiadomosc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelError.Text = "";
        }

        protected void ButtonWyczysc_Click(object sender, EventArgs e)
        {
            TextBoxTemat.Text = "";
            TextBoxWiadomosc.Text = "";
            LabelError.Text = "";
        }

        protected void ButtonWyslij_Click(object sender, EventArgs e)
        {
            SendEmail(MySession.Current.identyfikator, MySession.Current.login, MySession.Current.email, 
                TextBoxTemat.Text, TextBoxWiadomosc.Text);
            zapiszEmail();
            LabelError.ForeColor = Color.Green;
            LabelError.Text = "Wiadomość została wysłana";
            TextBoxTemat.Text = "";
            TextBoxWiadomosc.Text = "";
        }

        public SmtpClient client = new SmtpClient();
        public System.Net.NetworkCredential NetworkCred = 
            new System.Net.NetworkCredential("wypozyczalnia.samochodow.pb@gmail.com", "wypozyczalnia");

        private void SendEmail(int id_klienta, string login, string email, string temat, string tresc)
        {
            try
            {
                client.Host = "smtp.gmail.com";
                client.EnableSsl = true;
                NetworkCred.UserName = "wypozyczalnia.samochodow.pb@gmail.com";
                NetworkCred.Password = "wypozyczalnia";

                client.Port = 587;
                client.Credentials = NetworkCred;
                client.Send("wypozyczalnia.samochodow.pb@gmail.com", email, temat, tresc);

            }
            catch (Exception ex)
            {
                LabelError.Text = ex.ToString();
            }
        }

        private void zapiszEmail()
        {
            try
            {
                SqlConnection conn = GetConnStr.getConnStr();
                conn.Open();
                SqlCommand zapiszEmail = new SqlCommand("INSERT INTO Emails (id_klienta, data_wyslania, tresc_wyslanej, " +
                "temat_wyslanej) VALUES (@id_klienta, @data_wyslania, @tresc_wyslanej, @temat_wyslanej)");

                zapiszEmail.Connection = conn;

                zapiszEmail.Parameters.AddWithValue("id_klienta", MySession.Current.identyfikator);
                zapiszEmail.Parameters.AddWithValue("data_wyslania", DateTime.Now);
                zapiszEmail.Parameters.AddWithValue("temat_wyslanej", TextBoxTemat.Text);
                zapiszEmail.Parameters.AddWithValue("tresc_wyslanej", TextBoxWiadomosc.Text);

                zapiszEmail.ExecuteNonQuery();

                conn.Close();
            }
            catch (Exception ex)
            {
                LabelError.Text = ex.ToString();
            }
        }
    }
}
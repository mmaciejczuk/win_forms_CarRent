using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WypozyczalniaSamochodow.Clients
{
    public partial class Rejestracja : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBoxLogin.Focus();
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            if (IsPostBack)
            {
                try
                {
                    SqlConnection conn = GetConnStr.getConnStr();
                    conn.Open();
                    SqlCommand zapiszUzytkownika = new SqlCommand("INSERT INTO Clients (login, haslo, imie, nazwisko, miasto, " +
                    "kod, ulica, nr_domu, email, banned) VALUES (@login, @haslo, @imie, @nazwisko, @miasto, @kod, @ulica, " +
                    "@nr_domu, @email, @banned)");

                    zapiszUzytkownika.Connection = conn;

                    zapiszUzytkownika.Parameters.AddWithValue("login", TextBoxLogin.Text);
                    zapiszUzytkownika.Parameters.AddWithValue("haslo", md5(TextBoxHaslo.Text));
                    zapiszUzytkownika.Parameters.AddWithValue("imie", TextBoxImie.Text);
                    zapiszUzytkownika.Parameters.AddWithValue("nazwisko", TextBoxNazwisko.Text);
                    zapiszUzytkownika.Parameters.AddWithValue("miasto", TextBoxMiasto.Text);
                    zapiszUzytkownika.Parameters.AddWithValue("kod", TextBoxKod.Text);
                    zapiszUzytkownika.Parameters.AddWithValue("ulica", TextBoxUlica.Text);
                    zapiszUzytkownika.Parameters.AddWithValue("nr_domu", Convert.ToInt32(TextBoxNrDomu.Text));
                    zapiszUzytkownika.Parameters.AddWithValue("email", TextBoxEmail.Text);
                    zapiszUzytkownika.Parameters.AddWithValue("banned", false);

                    zapiszUzytkownika.ExecuteNonQuery();

                    conn.Close();

                    Label2.Visible = true;
                    Label2.Text = "Gratulacje! Zarejestrowałeś się pomyślnie!";
                    LinkButton2.Visible = true;
                    Wizard1.Visible = false;
                }
                catch (Exception ex)
                {
                    Label2.Visible = true;
                    Label2.Text = ex.ToString();
                }
            }
        }

        public static string md5(string sPassword)
        {
            System.Security.Cryptography.MD5CryptoServiceProvider x = new System.Security.Cryptography.MD5CryptoServiceProvider();
            byte[] bs = System.Text.Encoding.UTF8.GetBytes(sPassword);
            bs = x.ComputeHash(bs);
            System.Text.StringBuilder s = new System.Text.StringBuilder();
            foreach (byte b in bs)
            {
                s.Append(b.ToString("x2").ToLower());
            }
            return s.ToString();
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            Label1.Text = "";
            SqlConnection conn = GetConnStr.getConnStr();
            conn.Open();
            SqlCommand uzytkownikIstnieje = new SqlCommand("SELECT COUNT(*) FROM Clients WHERE login = @login", conn);

            uzytkownikIstnieje.Parameters.Add("login", TextBoxLogin.Text);

            int temp = Convert.ToInt32(uzytkownikIstnieje.ExecuteScalar().ToString());
            if (temp == 1)
            {
                args.IsValid = false;
                Label1.Text = "Użytkownik o tym loginie istnieje. Wprowadź inną nazwę";
            }
            else
            {
                args.IsValid = true;
            }
        }
    }
}
    

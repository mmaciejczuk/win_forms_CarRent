using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WypozyczalniaSamochodow
{
    public partial class Adm : System.Web.UI.Page
    {
        string id_klienta;
        string tabela;
        string katalog;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (MyCookie.czyIstniejeCookie("login"))
            {
                TextBoxLogin.Text = MyCookie.pobierzCookie("login");
                TextBoxHaslo.Text = MyCookie.pobierzCookie("haslo");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {            

            if (RadioButtonList1.SelectedValue == "Administrator")
            {
                id_klienta = "id_admina";
                tabela = "Admins";
                katalog = "Admin";
            }
            else if (RadioButtonList1.SelectedValue == "Pracownik")
            {
                id_klienta = "id_pracownika";
                tabela = "Employees";
                katalog = "Employees";
            }

            LabelError.Text = "";
            SqlDataReader reader = null;
            SqlConnection conn = GetConnStr.getConnStr();
            conn.Open();
            SqlCommand sprawdzUzytkownika =
                new SqlCommand("SELECT COUNT(*) FROM " + tabela + " WHERE login LIKE @login", conn);
            //sprawdzUzytkownika.Parameters.AddWithValue("tabela", tabela);
            sprawdzUzytkownika.Parameters.AddWithValue("login", TextBoxLogin.Text);

            int temp = Convert.ToInt32(sprawdzUzytkownika.ExecuteScalar().ToString());
            if (temp == 1)
            {
                int id = 0;
                string haslo = "";
                string login = "";
                SqlCommand hasloCommand =
                    new SqlCommand("SELECT " + id_klienta + " , login, haslo FROM " + tabela + " WHERE login LIKE @login", conn);
                //hasloCommand.Parameters.AddWithValue("id", id_klienta);
                //hasloCommand.Parameters.AddWithValue("tabela", tabela);
                hasloCommand.Parameters.AddWithValue("login", TextBoxLogin.Text);

                reader = hasloCommand.ExecuteReader();

                while (reader.Read())
                {
                    id = Convert.ToInt32(reader[0]);
                    login = (reader[1]).ToString();
                    haslo = (reader[2]).ToString();
                }

                //string haslo = hasloCommand.ExecuteScalar().ToString();
                conn.Close();

                if (haslo == md5(TextBoxHaslo.Text))
                {
                    MySession.Current.identyfikator = id;
                    MySession.Current.login = login;
                    if (CheckBox1.Checked == true && MyCookie.czyIstniejeCookie("login"))
                    {
                        MyCookie.stworzCookie("login", login, 30);
                        MyCookie.stworzCookie("haslo", md5(TextBoxHaslo.Text), 30);
                    }
                    Response.Redirect("~/" + katalog + "/Home.aspx");
                }
                else
                {
                    LabelError.Text = "Nieprawidłowe hasło";
                }
            }
            else
            {
                LabelError.Text = "Nieprawidłowa nazwa użytkownika";
            }
        }

        /************************************************KODOWANIE MD5*********************************************/

        public static string md5(string sPassword)
        {
            System.Security.Cryptography.MD5CryptoServiceProvider x =
                new System.Security.Cryptography.MD5CryptoServiceProvider();
            byte[] bs = System.Text.Encoding.UTF8.GetBytes(sPassword);
            bs = x.ComputeHash(bs);
            System.Text.StringBuilder s = new System.Text.StringBuilder();
            foreach (byte b in bs)
            {
                s.Append(b.ToString("x2").ToLower());
            }
            return s.ToString();
        }
    }
}
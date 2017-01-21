using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Collections;
using System.Drawing;
using System.Web.UI.DataVisualization.Charting;

namespace WypozyczalniaSamochodow.Clients
{
    public partial class Formularz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            wyswietlWykres();
        }

        /**********************************IMPLEMENTACJA WYKRESU********************************************/

        protected void wyswietlWykres()
        {
            SqlConnection conn = null;
            SqlDataReader reader = null;

            DateTime dateStart = DateTime.Now;
            DateTime dateEnd = DateTime.Now.AddDays(30);
            double start = dateStart.ToOADate();
            double end = dateEnd.ToOADate();

            ArrayList auto = new ArrayList();
            ArrayList data_wypozyczenia = new ArrayList();
            ArrayList czas_wypozyczenia = new ArrayList();

            try
            {
                conn = GetConnStr.getConnStr();
                conn.Open();

                SqlCommand pokazWykres = new SqlCommand("SELECT Cars.marka + ' ' + Cars.model AS Auto, " +
                "ReservationDetails.data_wypozyczenia As Data_wyp, " +
                "datediff(dd, ReservationDetails.data_wypozyczenia, " +
                "ReservationDetails.data_zwrotu) As Czas " +
                "FROM Cars INNER JOIN ReservationDetails ON " +
                "Cars.id_samochodu = ReservationDetails.id_samochodu AND " +
                "Cars.id_samochodu=@id_samochodu WHERE Cars.id_samochodu=@id_samochodu", conn);

                pokazWykres.Parameters.AddWithValue("id_samochodu", Request.QueryString["id"]);

                reader = pokazWykres.ExecuteReader();

                while (reader.Read())
                {
                    auto.Add(reader[0]).ToString();
                    data_wypozyczenia.Add(Convert.ToDateTime(reader[1]));
                    czas_wypozyczenia.Add(Convert.ToInt32(reader[2]));
                }

                Chart1.BackColor = Color.LightBlue;
                Chart1.BackSecondaryColor = Color.WhiteSmoke;
                Chart1.BackGradientStyle = GradientStyle.DiagonalRight;
                Chart1.BorderlineDashStyle = ChartDashStyle.Solid;
                Chart1.BorderSkin.SkinStyle = BorderSkinStyle.Emboss;
                Chart1.BorderlineColor = Color.Gray;
                Chart1.ChartAreas[0].BackColor = System.Drawing.ColorTranslator.FromHtml("#FFFFCC");
                Chart1.Titles.Add("Zajęte terminy");
                Chart1.Titles[0].Font = new Font("Utopia", 16);

                Chart1.ChartAreas[0].AxisY.Minimum = start;
                Chart1.ChartAreas[0].AxisY.Maximum = end;
                Chart1.ChartAreas[0].AxisY.LabelStyle.Angle = -45;
                Chart1.ChartAreas[0].AxisY.LabelStyle.Interval = 2;

                Chart1.Series[0].Points.DataBindXY(auto, "Auto", data_wypozyczenia, "Data_wyp");
                Chart1.Series[1].Points.DataBindXY(auto, "Auto", czas_wypozyczenia, "Czas");
            }

            catch (Exception ex)
            {
                LabelError.Text = "Implementacja wykresu error: " + ex;
            }

            finally
            {
                if (reader != null) reader.Close();
                if (conn != null) conn.Close();
            }
        }

        /**********************WALIDACJA WYBRANYCH DANYCH I WYWOŁANIE METOD*************************/

        protected void ButtonRezerwuj_Click(object sender, EventArgs e)
        {
            LabelError.Text = "";
            try
            {
                string data1 = Calendar1.SelectedDate.ToShortDateString();           
                string data2 = Calendar2.SelectedDate.ToShortDateString();

                DateTime dat1 = Calendar1.SelectedDate;
                DateTime dat2 = Calendar2.SelectedDate;
                DateTime dat = DateTime.Now;

                string login = MySession.Current.login;
                string id = Request.QueryString["id"];
                int platnosc = DropDownList1.SelectedIndex;


                if (data1 == "0001-01-01" || data2 == "0001-01-01" || (dat1 > dat2))
                    LabelError.Text = "Wybierz prawidłowe daty z kalendarzy";
                else if (Convert.ToDateTime(data1) <= dat || Convert.ToDateTime(data2) <= dat)
                {
                    LabelError.Text = "Data wypożyczenia musi być większa od " + dat.ToShortDateString();
                }
                else
                {
                    sprawdzRezerwacje(data1, data2);
                    zapiszRezerwacje();
                    pobierzID();
                    if (LabelError.Text == "")
                    {
                        Response.Redirect("~/Clients/Potwierdzenie.aspx"); //warunek is valid?
                    }
                }
            }
            catch (Exception ex)
            {
                LabelError.Text = "Walidacja danych error: " + ex;
            }
            finally
            {

            }
        }   

        /*****************************ODCZYTAJ DANE Z BAZY (SPRAWDZANIE WOLNYCH TERMINÓW*************/


        private void sprawdzRezerwacje(string data1, string data2)
        {

            SqlConnection conn = null;
            SqlDataReader reader = null;

            try
            {
                conn = GetConnStr.getConnStr();
                conn.Open();

                SqlCommand sprawdzRezerwacje = new SqlCommand("Select COUNT(id_samochodu) FROM ReservationDetails WHERE " +
                    "((data_zwrotu>'" + data1 + "'AND data_zwrotu<'" + data2 + "') OR " +
                    "(data_wypozyczenia>'" + data1 + "'AND data_wypozyczenia<'" + data2 + "') OR " +
                    "(data_zwrotu>'" + data1 + "'AND data_zwrotu<'" + data2 + "'AND data_wypozyczenia>'" + data1 + "'AND data_wypozyczenia<'" + data2 + "') OR " +
                    "(data_wypozyczenia>'" + data1 + "'AND data_wypozyczenia<'" + data2 + "'AND data_zwrotu>'" + data1 + "'AND data_zwrotu<'" + data2 + "') OR " +
                    "(data_wypozyczenia='" + data1 + "') OR " +
                    "(data_zwrotu='" + data2 + "') OR " +
                    "(data_wypozyczenia<'" + data1 + "'AND data_zwrotu>'" + data2 + "')) AND id_samochodu LIKE @id_samochodu", conn);

                sprawdzRezerwacje.Parameters.AddWithValue("id_samochodu", Request.QueryString["id"]);

                int temp = Convert.ToInt32(sprawdzRezerwacje.ExecuteScalar().ToString());
                if (temp > 0)
                {
                    LabelError.Text = "Samochód jest już zarezerwowany w tym czasie </br>Proszę wybrać inny termin";
                    temp = 0;
                }
                else
                {
                    temp = 0;
                }
            }

            catch (Exception ex)
            {
                LabelError.Text = "Sprawdzanie wolnych terminów error: " + ex;
            }

            finally
            {
                if (reader != null) reader.Close();
                if (conn != null) conn.Close();
            }
        }

        /*************************************ZAPISYWANIE REZERWACJI**************************************/

        private void zapiszRezerwacje()
        {
            SqlConnection conn = null;
            try
            {
                conn = GetConnStr.getConnStr();
                conn.Open();

                SqlCommand zapiszRezerwacje = new SqlCommand("INSERT INTO Reservations (id_klienta, data_aktualizacji) VALUES " +
                    "(@id_klienta, @data_aktualizacji)", conn);
                zapiszRezerwacje.Parameters.AddWithValue("id_klienta", MySession.Current.identyfikator);
                zapiszRezerwacje.Parameters.AddWithValue("data_aktualizacji", DateTime.Now);
                zapiszRezerwacje.ExecuteNonQuery();
            }

            catch (Exception ex)
            {
                LabelError.Text = "Zapisywanie rezerwacji error: " + ex;
            }

            finally
            {
                if (conn != null) conn.Close();
                MySession.Current.id_samochodu = Convert.ToInt32(Request.QueryString["id"]);
                MySession.Current.data_wypozyczenia = Calendar1.SelectedDate;
                MySession.Current.data_zwrotu = Calendar2.SelectedDate;
                MySession.Current.platnosc = DropDownList1.SelectedValue;
            }
        }

        /*******************************POBIERANIE ID REZERWACJI, CZASU TRWANIA, ID CENNIKA******************************/

        private void pobierzID()
        {
            SqlConnection conn = null;
            SqlDataReader reader = null;

            try
            {
                conn = GetConnStr.getConnStr();
                conn.Open();
                SqlCommand zapiszRezerwacje = new SqlCommand("SELECT id_rezerwacji FROM Reservations " +
                    "WHERE id_klienta = @id_klienta", conn);
                zapiszRezerwacje.Parameters.AddWithValue("id_klienta", MySession.Current.identyfikator);

                reader = zapiszRezerwacje.ExecuteReader();

                while (reader.Read())
                {
                    MySession.Current.id_rezerwacji = Convert.ToInt32(reader[0]);
                }
            }

            catch (Exception ex)
            {
                LabelError.Text = "Pobieranie ID rezerwacji error: " + ex;
            }

            finally
            {
                if (reader != null) reader.Close();
                if (conn != null) conn.Close();
            }
        }     
    }
}
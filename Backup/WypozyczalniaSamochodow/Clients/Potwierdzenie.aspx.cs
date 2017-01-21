using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WypozyczalniaSamochodow.Clients
{
    public partial class Potwierdzenie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                zapiszSzczegolyRezerwacji();
                potwierdzenie();
        }

        /********************************ZAPISYWANIE SZCZEGÓŁÓW REZERWACJI********************************/

        private void zapiszSzczegolyRezerwacji()
        {
            SqlConnection conn = null;
            SqlDataReader reader = null;
            try
            {
                conn = GetConnStr.getConnStr();
                conn.Open();

                SqlCommand zapiszRezerwacje = new SqlCommand("INSERT INTO ReservationDetails " +
                "(id_samochodu, id_rezerwacji, platnosc, status, data_wypozyczenia, data_zwrotu) VALUES " +
                "(@id_samochodu, @id_rezerwacji, @platnosc, @status, @data_wypozyczenia, @data_zwrotu)", conn);

                zapiszRezerwacje.Parameters.AddWithValue("id_samochodu", MySession.Current.id_samochodu);
                zapiszRezerwacje.Parameters.AddWithValue("id_rezerwacji", MySession.Current.id_rezerwacji);
                zapiszRezerwacje.Parameters.AddWithValue("platnosc", MySession.Current.platnosc);
                zapiszRezerwacje.Parameters.AddWithValue("status", 3);
                zapiszRezerwacje.Parameters.AddWithValue("data_wypozyczenia", MySession.Current.data_wypozyczenia);
                zapiszRezerwacje.Parameters.AddWithValue("data_zwrotu", MySession.Current.data_zwrotu);
                zapiszRezerwacje.ExecuteNonQuery();
            }

            catch (Exception ex)
            {
                LabelError.Text = "Zapisywanie szczegółów rezerwacji error: " + ex;
            }
            finally
            {
                if (reader != null) reader.Close();
                if (conn != null) conn.Close();
            }
        }

        /***************************************WYŚWIETL POTWIERDZENIE REZERWACJI*******************************/

        private void potwierdzenie()
        {
            SqlConnection conn = null;
            SqlDataReader reader = null;
            try
            {
                conn = GetConnStr.getConnStr();
                conn.Open();

                SqlCommand pokazTabele = new SqlCommand("SELECT Cars.marka, Cars.model, BodyTypes.rodzaj_nadwozia, " +
                        "ReservationDetails.data_wypozyczenia, ReservationDetails.data_zwrotu, Payments.sposob_platnosci, " +
                        "Cars.zdjecie FROM Cars INNER JOIN ReservationDetails ON " +
                        "Cars.id_samochodu = ReservationDetails.id_samochodu " +
                        "INNER JOIN Reservations ON ReservationDetails.id_rezerwacji = Reservations.id_rezerwacji " +
                        "INNER JOIN Payments ON ReservationDetails.platnosc = Payments.id_platnosci " +
                        "INNER JOIN BodyTypes ON Cars.rodzaj_nadwozia = BodyTypes.id_nadwozia " +
                        "WHERE Reservations.id_rezerwacji=@id_rezerwacji", conn);

                pokazTabele.Parameters.AddWithValue("id_rezerwacji", MySession.Current.id_rezerwacji);
                reader = pokazTabele.ExecuteReader();

                DetailsView1.DataSource = reader;
                DetailsView1.DataBind();
            }
            catch (Exception ex)
            {
                LabelError.Text = "Wyswietl potwierdzenie rezerwacji error: " + ex;
            }
            finally
            {
                if (reader != null) reader.Close();
                if (conn != null) conn.Close();
            }
        }
    }
}
        
    


    

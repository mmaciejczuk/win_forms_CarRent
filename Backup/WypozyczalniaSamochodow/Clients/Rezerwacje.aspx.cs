using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WypozyczalniaSamochodow.Clients
{
    public partial class Rezerwacje : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = GetConnStr.getConnStr();
            conn.Open();

            SqlCommand wyswietlRezerwacje = new SqlCommand("SELECT Cars.marka, Cars.model, BodyTypes.rodzaj_nadwozia, " +
                "ReservationDetails.data_wypozyczenia, ReservationDetails.data_zwrotu, Statuses.status AS Status " +
                "FROM Cars INNER JOIN ReservationDetails ON Cars.id_samochodu = ReservationDetails.id_samochodu " +
                "INNER JOIN Reservations ON ReservationDetails.id_rezerwacji = Reservations.id_rezerwacji " +
                "INNER JOIN Clients ON Reservations.id_klienta = Clients.id_klienta " +
                "INNER JOIN Statuses ON ReservationDetails.status = Statuses.id_statusu " +
                "INNER JOIN BodyTypes ON Cars.rodzaj_nadwozia = BodyTypes.id_nadwozia " +
                "WHERE Clients.id_klienta=@id_klienta", conn);

            wyswietlRezerwacje.Connection = conn;
            wyswietlRezerwacje.Parameters.AddWithValue("id_klienta", MySession.Current.identyfikator);
            SqlDataReader reader = wyswietlRezerwacje.ExecuteReader();

            ListView1.DataSource = reader;
            ListView1.DataBind();
            conn.Close();
            reader.Close();
        }
    }
}
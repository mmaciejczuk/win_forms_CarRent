using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace WypozyczalniaSamochodow
{
    public partial class About : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack) ReadRecords();
        }

        private void ReadRecords(string data1, string data2, string category)
        {

            OleDbConnection conn = null;
            OleDbDataReader reader = null;

            try
            {
                conn = new OleDbConnection(
                    "Provider=Microsoft.Jet.OLEDB.4.0; " +
                    "Data Source=" + Server.MapPath("App_Data/WypozyczalniaSamochodow.mdb"));
                conn.Open();

                OleDbCommand cmd =
                    new OleDbCommand(
                        "Select Distinct s.marka As Marka, s.model As Model, rn.rodzaj_nadwozia As Nadwozie, s.pojemnosc_silnika As Pojemność, rp.rodzaj_paliwa As Paliwo"
                        + " FROM Samochod s, RodzajNadwozia rn, RodzajPaliwa rp"

                        + " WHERE (s.marka) NOT IN "
                        + "(SELECT s.marka"
                        + " FROM Samochod s, SamochodRezerwacja sr WHERE ("
                        + "(sr.data_zwrotu BETWEEN '" + data1 + "' AND '" + data2 + "')"
                        + " OR (sr.data_wypozyczenia BETWEEN '" + data1 + "' AND '" + data2 + "')"
                        + " OR ((sr.data_zwrotu BETWEEN '" + data1 + "' AND '" + data2 + "') AND (sr.data_wypozyczenia BETWEEN '" + data1 + "' AND '" + data2 + "'))"
                        + " OR ((sr.data_wypozyczenia = '" + data1 + "') AND (sr.data_zwrotu = '" + data2 + "'))"
                        + " OR (('" + data1 + "' BETWEEN sr.data_zwrotu AND sr.data_wypozyczenia) AND ('" + data2 + "' BETWEEN sr.data_zwrotu AND sr.data_wypozyczenia)))"

                        + " AND s.id_samochodu=sr.id_samochodu)"

                        + " AND (rn.rodzaj_nadwozia LIKE "
                        + category + ")"

                        + " AND rn.id=s.typ_nadwozia AND rp.id=s.rodzaj_paliwa"
                        , conn);
                reader = cmd.ExecuteReader();

                GridView1.DataSource = reader;
                GridView1.DataBind();
            }
            //        catch (Exception e)
            //        {
            //            Response.Write(e.Message);
            //            Response.End();
            //        }
            finally
            {
                if (reader != null) reader.Close();
                if (conn != null) conn.Close();
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string data1 = Calendar1.SelectedDate.ToShortDateString();
            string data2 = Calendar2.SelectedDate.ToShortDateString();
            DateTime dat1 = Calendar1.SelectedDate;
            DateTime dat2 = Calendar2.SelectedDate;

            string category ="";
            int licznik = 0;

            if (data1 == "0001-01-01" || data2 == "0001-01-01" || (dat1>dat2))
                Label1.Text = "Wybierz prawidłowe daty z kalendarza";

            else
            {
                Label1.Text = "Samochody dostępne w terminie od: " + Calendar1.SelectedDate.ToShortDateString()
                                                         + " do: " + Calendar2.SelectedDate.ToShortDateString();

                foreach (ListItem li in CheckBoxList1.Items)
                {
                    if (li.Selected == true && licznik == 0)
                    {
                        licznik++;
                        category += "'" + li.Text.ToString() + "' ";
                    }
                    else if (li.Selected == true && licznik > 0)
                    {
                        category += "OR rn.rodzaj_nadwozia LIKE '" + li.Text.ToString() + "' ";
                    }
                }

                if (licznik == 0)
                {
                    category = "'osobowy' OR rn.rodzaj_nadwozia LIKE 'osobowy-kombi' OR "
                    + "rn.rodzaj_nadwozia LIKE 'bus' OR rn.rodzaj_nadwozia LIKE 'pick-up' OR "
                    + "rn.rodzaj_nadwozia LIKE 'dostawczy'";
                }

                ReadRecords(data1, data2, category);
                GridView1.Visible = true;
            }
        }
    }
}

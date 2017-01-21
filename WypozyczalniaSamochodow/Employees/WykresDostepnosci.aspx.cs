using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Web.UI.DataVisualization.Charting;
using System.Data.SqlClient;
using System.Collections;

namespace WypozyczalniaSamochodow.Employees
{
    public partial class WykresDostepnosci : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                wyswietlWykres(DropDownList1.SelectedValue.ToString());
                LabelAuto.Text = DropDownList1.SelectedItem.ToString();
            }
        }

        protected void wyswietlWykres(string id)
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
                "Cars.id_samochodu=@id_samochodu WHERE Cars.id_samochodu LIKE @id_samochodu", conn);

                pokazWykres.Parameters.AddWithValue("id_samochodu", id);

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


        protected void Button1_Click(object sender, EventArgs e)
        {
            wyswietlWykres(DropDownList1.SelectedValue.ToString());
        }
    }
}
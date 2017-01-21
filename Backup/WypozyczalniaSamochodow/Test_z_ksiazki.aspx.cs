using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.DataVisualization.Charting;
using System.Drawing;

namespace WypozyczalniaSamochodow
{
    public partial class Charting_BasicChart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Chart1.BackColor = Color.Gray;
            Chart1.BackSecondaryColor = Color.WhiteSmoke;
            Chart1.BackGradientStyle = GradientStyle.DiagonalRight;

            Chart1.BorderlineDashStyle = ChartDashStyle.Solid;
            Chart1.BorderlineColor = Color.Gray;
            Chart1.BorderSkin.SkinStyle = BorderSkinStyle.Emboss;

            Chart1.ChartAreas[0].BackColor = Color.Wheat;
            Chart1.Titles.Add("ASP.NET Chart");
            Chart1.Titles[0].Font = new Font("Utopia", 16);

            //Chart1.Series.Add(new Series("ColumnSeries")
            //{
            //    ChartType = SeriesChartType.Column,
            //});

            //Chart1.Series.Add(new Series("SplineSeries")
            //{
            //    ChartType = SeriesChartType.Spline,
            //    BorderWidth = 3,
            //    ShadowOffset = 2,
            //    Color = Color.PaleVioletRed
            //});
            //Chart1.ChartAreas[0].AxisX.Minimum = 4;
            //Chart1.ChartAreas[0].AxisY.Minimum = 11;

            Chart1.Series[0].ChartType = SeriesChartType.StackedBar;
            Chart1.Series[0].YValueType = ChartValueType.Date;
            Chart1.Series[0].Points.DataBindY(
                new double[] { 40177.020833333336, 40177.006944444445, 40177.013888888891 });
            //Chart1.Series[1].Points.DataBindY(
            //    new int[] { 3, 7, 13, 2, 7, 15, 23, 20, 1, 5, 7, 6 });
        }
    }
}
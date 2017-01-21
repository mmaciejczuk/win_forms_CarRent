using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WypozyczalniaSamochodow.MasterPages
{
    public partial class Client : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int liczbaOdwiedzin = WypozyczalniaSamochodow.Global.LiczbaUzytkownikow;
            int liczbaUzytkownikowOnline = WypozyczalniaSamochodow.Global.AktualnaLiczbaUzytkownikow;
            LabelLiczbaOdwiedzin.Text = "Liczba odwiedzin strony: " + liczbaOdwiedzin.ToString() +
                "<br />" + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Użytkownicy online: " + 
                liczbaUzytkownikowOnline.ToString();

            if (Session["__MySession__"] == null)
            {
                Label1.Text = "";
                LinkButton1.Text = "Zaloguj się";
                LinkButton1.PostBackUrl = "~/Anonymous/Logowanie.aspx";
            }
            else
            {
                Session["__MySession__"] = null;
            }
        }
    }
}
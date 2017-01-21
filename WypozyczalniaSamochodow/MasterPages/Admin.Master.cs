using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WypozyczalniaSamochodow.MasterPages
{
    public partial class Test : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int liczbaOdwiedzin = WypozyczalniaSamochodow.Global.LiczbaUzytkownikow;
            int liczbaUzytkownikowOnline = WypozyczalniaSamochodow.Global.AktualnaLiczbaUzytkownikow;
            LabelLiczbaOdwiedzin.Text = "Liczba odwiedzin strony: " + liczbaOdwiedzin.ToString() +
                "<br />" + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Użytkownicy online: " +
                liczbaUzytkownikowOnline.ToString();

            if (Session["__MySession__"] != null)
            {
                Label1.Text = "Jesteś zalogowany jako " + MySession.Current.login;
                LinkButton1.Text = "Wyloguj się";
                LinkButton1.PostBackUrl = "~/Anonymous/Wyloguj.aspx";
            }
            else
            {
                Response.Redirect("~/Adm.aspx");
            }
        }
    }
}
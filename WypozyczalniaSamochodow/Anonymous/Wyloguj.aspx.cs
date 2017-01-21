using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WypozyczalniaSamochodow.Anonymous
{
    public partial class Wyloguj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MySession.Current.id_rezerwacji = 0;
            MySession.Current.id_samochodu = 0;
            MySession.Current.identyfikator = 0;
            MySession.Current.login = "";
            MySession.Current.platnosc = "";
            Session["__MySession__"] = null;
        }
    }
}
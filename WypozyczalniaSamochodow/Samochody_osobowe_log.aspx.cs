using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WypozyczalniaSamochodow
{
    public partial class Samochody_osobowe_log : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["__MySession__"] == null)
            {
                Response.Redirect("~/Anonymous/Logowanie.aspx");
            }
        }

    }
}
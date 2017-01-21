using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WypozyczalniaSamochodow.Clients
{
    public partial class Zalogowany : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = MySession.Current.login;
        }
    }
}
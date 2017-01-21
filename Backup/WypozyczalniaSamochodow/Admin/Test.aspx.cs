using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WypozyczalniaSamochodow.Admin
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void EmployeesListView_OnItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (String.Equals(e.CommandName, "AddToList"))
            {
                // Verify that the employee ID is not already in the list. If not, add the
                // employee to the list.

                ListViewDataItem dataItem = (ListViewDataItem)e.Item;

                string employeeID = ListViewClients.DataKeys[dataItem.DisplayIndex].Value.ToString();

                if (ListBoxWybraniKlienci.Items.FindByValue(employeeID) == null)
                {
                    ListItem item = new ListItem(e.CommandArgument.ToString(), employeeID);
                    ListBoxWybraniKlienci.Items.Add(item);
                }
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WypozyczalniaSamochodow.Admin
{
    public partial class Client : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            if (e.Exception != null)
            {
                this.lblErrorMessage.Text = e.Exception.Message;
                e.ExceptionHandled = true;
            }
        }
        protected void SqlDataSource1_Deleted(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.Exception != null)
            {
                this.lblErrorMessage.Text = e.Exception.Message;
                e.ExceptionHandled = true;
            }
        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            if (e.Exception != null)
            {
                this.lblErrorMessage.Text = e.Exception.Message;
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                bool ban = Convert.ToBoolean(DataBinder.Eval(e.Row.DataItem, "banned"));
             
                if (ban == true)
                {
                    e.Row.BackColor = System.Drawing.Color.LightPink;
                    e.Row.ForeColor = System.Drawing.Color.Maroon;
                }
                else if (ban == false)
                {
                    //e.Row.BackColor = System.Drawing.Color.LightCyan;
                    e.Row.ForeColor = System.Drawing.Color.DarkBlue;
                }
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewSortEventArgs e)
        {

        }

        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            Response.Redirect("~/Admin/Clients.aspx"); 
        }

        protected void DetailsView1_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
        {
            Response.Redirect("~/Admin/Clients.aspx");
        }

        protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        {
            Response.Redirect("~/Admin/Clients.aspx");
        }
    }
}
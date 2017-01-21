using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace WypozyczalniaSamochodow.Admin
{
    public partial class ControlPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            Response.Redirect("~/Admin/Cars.aspx");
        }

        protected void DetailsView1_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
        {
            Response.Redirect("~/Admin/Cars.aspx");
        }

        protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        {
            Response.Redirect("~/Admin/Cars.aspx");
        }
        protected void btnUploadToFolder_Click(object sender, EventArgs e)
        {

            ////save file in folder
            ////SqlDataSource1.UpdateParameters["tytul"].DefaultValue =
            ////    ((TextBox)e.Item.FindControl("TextBoxTytul")).Text;
            //if (FileUpload2.PostedFile.ContentType.ToLower().StartsWith
            //        ("image") && FileUpload2.HasFile)
            //{
            //    string savelocation = Server.MapPath("Images/");
            //    string fileExtention = System.IO.Path.GetExtension(FileUpload2.FileName);
            //    //creating filename to avoid file name conflicts.
            //    string fileName = Guid.NewGuid().ToString();
            //    //saving file in savedImage folder.
            //    string savePath = savelocation + fileName + fileExtention;
            //    FileUpload2.SaveAs(savePath);
            //}
        }
        //protected void btnUploadImage_Click(object sender, EventArgs e)
        //{
        //    //server side checking
        //    if (FileUpload1.PostedFile.ContentType.ToLower().StartsWith("image") &&
        //    FileUpload1.HasFile)
        //    {
        //        Hashtable imageHash = new Hashtable();
        //        imageHash.Add("@imageData", FileUpload1.FileBytes);
        //        DataBaseHelper DBHelper = new DataBaseHelper();
        //        //storing image in to DataBase
        //        DBHelper.ExecuteNonQuery("sp_UploadImage", imageHash);
        //    }
        //} 
    }

}
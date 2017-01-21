#region Directives

using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections.Generic;
using System.IO;

#endregion

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        PopulateRepeater();
    }

    /// <summary>
    /// I got this code from T.D. Ryans article: Thumbnailer HTTP Handler
    /// http://www.codeproject.com/aspnet/thumbnailer.asp
    /// </summary>
    private void PopulateRepeater()
    {
        IList<FileInfo> files = new List<FileInfo>();
        string filters = "*.jpg;*.png;*.gif";

        foreach (string filter in filters.Split(';'))
        {
            FileInfo[] fit = new DirectoryInfo(
                       this.Server.MapPath("~/images")).GetFiles(filter);
            foreach (FileInfo fi in fit)
            {
                files.Add(fi);
            }
        }

        this.Repeater1.DataSource = files;
        this.Repeater1.DataBind();
    }
}

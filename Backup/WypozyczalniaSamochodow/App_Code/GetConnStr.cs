using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace WypozyczalniaSamochodow
{
    public static class GetConnStr
    {
        public static SqlConnection getConnStr()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WypozyczalniaSamochodowConnectionString"].ConnectionString);
            return conn;
        }
    }
}
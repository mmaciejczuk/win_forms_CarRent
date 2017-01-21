using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Security;
using System.Web.SessionState;
using WypozyczalniaSamochodow.App_Code;
using System.IO;

namespace WypozyczalniaSamochodow
{
    public class Global : System.Web.HttpApplication
    {
        private static int liczbaWszystkichUzytkownikow = 0;
        private static int aktualnaLiczbaUzytkownikow = 0;

        void Application_Start(object sender, EventArgs e)
        {
            try
            {
                TextReader tr = new StreamReader("licznik.txt");
                liczbaWszystkichUzytkownikow = Convert.ToInt32(tr.ReadLine());
                tr.Close();
            }
            catch
            {
                ;
            }
        }

        void Application_End(object sender, EventArgs e)
        {
            TextWriter tw = new StreamWriter("licznik.txt");
            tw.WriteLine(LiczbaUzytkownikow);
            tw.Close();

        }

        void Application_Error(object sender, EventArgs e)
        {
            // Code that runs when an unhandled error occurs

        }

        void Session_Start(object sender, EventArgs e)
        {
            liczbaWszystkichUzytkownikow += 1;
            aktualnaLiczbaUzytkownikow += 1;

        }

        void Session_End(object sender, EventArgs e)
        {
            aktualnaLiczbaUzytkownikow -= 1;

        }

        public static int LiczbaUzytkownikow
        {
            get
            {
                return liczbaWszystkichUzytkownikow;

            }
        }

        public static int AktualnaLiczbaUzytkownikow
        {
            get
            {
                return aktualnaLiczbaUzytkownikow;

            }
        }

    }
}

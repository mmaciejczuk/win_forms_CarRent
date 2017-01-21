using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace WypozyczalniaSamochodow
{
    class MySession
    {
        private MySession()
        {
        }

        public static MySession Current
        {
            get
            {
                MySession session =
                  (MySession)HttpContext.Current.Session["__MySession__"];
                if (session == null)
                {
                    session = new MySession();
                    HttpContext.Current.Session["__MySession__"] = session;
                }
                return session;
            }
        }
        public int identyfikator { get; set; }
        public string login { get; set; }
        public string email { get; set; }
        public int id_samochodu { get; set; }
        public int id_rezerwacji { get; set; }
        public DateTime data_wypozyczenia { get; set; }
        public DateTime data_zwrotu { get; set; }
        public string platnosc { get; set; }
        public int cennik { get; set; }
        public int czasWypozyczenia { get; set; }
    }
}

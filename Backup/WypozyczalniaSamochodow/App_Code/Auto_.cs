using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WypozyczalniaSamochodow.Views_Clients
{
    public class Auto
    {
        public Auto(string nazwa, DateTime data_wyp, Int32 czas_wyp)
        {
            nazwa = this.nazwa;
            data_wyp = this.data_wyp;
            czas_wyp = this.czas_wyp;
        }
        private string nazwa { get; set; }
        private DateTime data_wyp { get; set; }
        private Int32 czas_wyp { get; set; }
    }
}
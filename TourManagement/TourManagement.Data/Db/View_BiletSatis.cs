using System;
using System.Collections.Generic;

namespace TourManagement.Data.Db
{
    public partial class View_BiletSatis
    {
        public int Id { get; set; }
        public string BiletNo { get; set; }
        public DateTime BiletTarihi { get; set; }
        public string SubeAdi { get; set; }
        public string TourAdi { get; set; }
        public DateTime Tarih { get; set; }
        public string MusteriAdiSoyadi { get; set; }
        public string UyrukAdi { get; set; }
        public string OtelAdi { get; set; }
        public bool ServisIstiyorMu { get; set; }
        public decimal? Total { get; set; }
        public decimal? Paid { get; set; }
        public string KurAdi { get; set; }
    }
}

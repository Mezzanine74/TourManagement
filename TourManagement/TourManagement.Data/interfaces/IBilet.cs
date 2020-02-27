using System;

namespace TourManagement.Data.interfaces
{
    public interface IBilet
    {
        string BiletNo { get; set; }
        DateTime BiletTarihi { get; set; }
        int? SubeId { get; set; }
        int TourId { get; set; }
        int MusteriId { get; set; }
        bool ServisIstiyorMu { get; set; }
        decimal? Paid { get; set; }
        decimal? Total { get; set; }
        int? CurrencyId { get; set; }
    }
}
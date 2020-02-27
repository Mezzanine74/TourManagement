using System;
using TourManagement.Data.interfaces;
using TourManagement.SharedKernel;

namespace TourManagement.Repository.ViewModels
{
    public class VmBilet : IEntity, IBilet
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public string BiletNo { get; set; }
        public DateTime BiletTarihi { get; set; }
        public int? SubeId { get; set; }
        public int TourId { get; set; }
        public int MusteriId { get; set; }
        public bool ServisIstiyorMu { get; set; }
        public decimal? Paid { get; set; }
        public decimal? Total { get; set; }
        public int? CurrencyId { get; set; }
    }
}
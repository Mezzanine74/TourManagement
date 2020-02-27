using System;
using System.Collections.Generic;
using TourManagement.Data.interfaces;
using TourManagement.SharedKernel;

namespace TourManagement.Data.Db
{
    public partial class Bilet: IEntity, ITimeStamp, IBilet
    {
        public Bilet()
        {
            TourMusteriPax = new HashSet<TourMusteriPax>();
        }

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
        public string WhoInserted { get; set; }
        public string WhoUpdated { get; set; }
        public string WhoDeleted { get; set; }
        public DateTime? WhenInserted { get; set; }
        public DateTime? WhenUpdated { get; set; }
        public DateTime? WhenDeleted { get; set; }

        public virtual Currency Currency { get; set; }
        public virtual Musteri Musteri { get; set; }
        public virtual Sube Sube { get; set; }
        public virtual Tour Tour { get; set; }
        public virtual ICollection<TourMusteriPax> TourMusteriPax { get; set; }
    }
}

using System;
using System.Collections.Generic;
using TourManagement.Data.interfaces;
using TourManagement.SharedKernel;

namespace TourManagement.Data.Db
{
    public partial class Otel: IEntity, ITimeStamp, IOtel
    {
        public Otel()
        {
            Musteri = new HashSet<Musteri>();
        }

        public int Id { get; set; }
        public string Description { get; set; }
        public string OtelAdi { get; set; }
        public int BolgeId { get; set; }
        public int BolgeUzaklikFaktoru { get; set; }
        public string WhoInserted { get; set; }
        public string WhoUpdated { get; set; }
        public string WhoDeleted { get; set; }
        public DateTime? WhenInserted { get; set; }
        public DateTime? WhenUpdated { get; set; }
        public DateTime? WhenDeleted { get; set; }

        public virtual Bolge Bolge { get; set; }
        public virtual ICollection<Musteri> Musteri { get; set; }
    }
}

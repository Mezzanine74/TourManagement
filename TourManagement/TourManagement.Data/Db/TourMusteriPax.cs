using System;
using System.Collections.Generic;
using TourManagement.Data.interfaces;
using TourManagement.SharedKernel;

namespace TourManagement.Data.Db
{
    public partial class TourMusteriPax: IEntity, ITimeStamp, ITourMusteriPax
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public int BiletId { get; set; }
        public int PaxId { get; set; }
        public int PaxAdedi { get; set; }
        public string PaxInfo { get; set; }
        public string WhoInserted { get; set; }
        public string WhoUpdated { get; set; }
        public string WhoDeleted { get; set; }
        public DateTime? WhenInserted { get; set; }
        public DateTime? WhenUpdated { get; set; }
        public DateTime? WhenDeleted { get; set; }

        public virtual Bilet Bilet { get; set; }
        public virtual Pax Pax { get; set; }
    }
}

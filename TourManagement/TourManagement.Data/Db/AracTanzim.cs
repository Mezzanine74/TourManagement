using System;
using System.Collections.Generic;
using TourManagement.Data.interfaces;
using TourManagement.SharedKernel;

namespace TourManagement.Data.Db
{
    public partial class AracTanzim: IEntity, ITimeStamp, IAracTanzim
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public int TourId { get; set; }
        public int AracParkId { get; set; }
        public int TourMusteriPaxId { get; set; }
        public int KoltukNo { get; set; }
        public string WhoInserted { get; set; }
        public string WhoUpdated { get; set; }
        public string WhoDeleted { get; set; }
        public DateTime? WhenInserted { get; set; }
        public DateTime? WhenUpdated { get; set; }
        public DateTime? WhenDeleted { get; set; }

        public virtual AracPark AracPark { get; set; }
        public virtual Tour Tour { get; set; }
    }
}

using System;
using System.Collections.Generic;
using TourManagement.Data.interfaces;
using TourManagement.SharedKernel;

namespace TourManagement.Data.Db
{
    public partial class TourTip: IEntity, ITimeStamp, ITourTip
    {
        public TourTip()
        {
            Tour = new HashSet<Tour>();
        }

        public int Id { get; set; }
        public string Description { get; set; }
        public string TourAdi { get; set; }
        public string WhoInserted { get; set; }
        public string WhoUpdated { get; set; }
        public string WhoDeleted { get; set; }
        public DateTime? WhenInserted { get; set; }
        public DateTime? WhenUpdated { get; set; }
        public DateTime? WhenDeleted { get; set; }

        public virtual ICollection<Tour> Tour { get; set; }
    }
}

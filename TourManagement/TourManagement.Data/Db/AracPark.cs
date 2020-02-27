using System;
using System.Collections.Generic;
using TourManagement.Data.interfaces;
using TourManagement.SharedKernel;

namespace TourManagement.Data.Db
{
    public partial class AracPark: IEntity, ITimeStamp, IAracPark
    {
        public AracPark()
        {
            AracTanzim = new HashSet<AracTanzim>();
        }

        public int Id { get; set; }
        public string Description { get; set; }
        public string AracPlakasi { get; set; }
        public int AracTipId { get; set; }
        public int AracKapasitesi { get; set; }
        public string WhoInserted { get; set; }
        public string WhoUpdated { get; set; }
        public string WhoDeleted { get; set; }
        public DateTime? WhenInserted { get; set; }
        public DateTime? WhenUpdated { get; set; }
        public DateTime? WhenDeleted { get; set; }

        public virtual AracTip AracTip { get; set; }
        public virtual ICollection<AracTanzim> AracTanzim { get; set; }
    }
}

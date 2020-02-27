using System;
using System.Collections.Generic;
using TourManagement.Data.interfaces;
using TourManagement.SharedKernel;

namespace TourManagement.Data.Db
{
    public partial class SatisSorumlusu: IEntity, ITimeStamp, ISatisSorumlusu
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public string AdiSoyadi { get; set; }
        public int SubeId { get; set; }
        public string WhoInserted { get; set; }
        public DateTime? WhenDeleted { get; set; }
        public string WhoUpdated { get; set; }
        public string WhoDeleted { get; set; }
        public DateTime? WhenInserted { get; set; }
        public DateTime? WhenUpdated { get; set; }

        public virtual Sube Sube { get; set; }
    }
}

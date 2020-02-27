using System;
using System.Collections.Generic;
using TourManagement.Data.interfaces;
using TourManagement.SharedKernel;

namespace TourManagement.Data.Db
{
    public partial class Currency: IEntity, ITimeStamp, ICurrency
    {
        public Currency()
        {
            Bilet = new HashSet<Bilet>();
        }

        public int Id { get; set; }
        public string Description { get; set; }
        public string KurAdi { get; set; }
        public string WhoInserted { get; set; }
        public string WhoUpdated { get; set; }
        public string WhoDeleted { get; set; }
        public DateTime? WhenInserted { get; set; }
        public DateTime? WhenUpdated { get; set; }
        public DateTime? WhenDeleted { get; set; }

        public virtual ICollection<Bilet> Bilet { get; set; }
    }
}

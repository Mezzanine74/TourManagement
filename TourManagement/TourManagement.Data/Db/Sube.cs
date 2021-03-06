﻿using System;
using System.Collections.Generic;
using TourManagement.Data.interfaces;
using TourManagement.SharedKernel;

namespace TourManagement.Data.Db
{
    public partial class Sube: IEntity, ITimeStamp, ISube
    {
        public Sube()
        {
            Bilet = new HashSet<Bilet>();
            SatisSorumlusu = new HashSet<SatisSorumlusu>();
        }

        public int Id { get; set; }
        public string Description { get; set; }
        public string SubeAdi { get; set; }
        public string WhoInserted { get; set; }
        public string WhoUpdated { get; set; }
        public string WhoDeleted { get; set; }
        public DateTime? WhenInserted { get; set; }
        public DateTime? WhenUpdated { get; set; }
        public DateTime? WhenDeleted { get; set; }

        public virtual ICollection<Bilet> Bilet { get; set; }
        public virtual ICollection<SatisSorumlusu> SatisSorumlusu { get; set; }
    }
}

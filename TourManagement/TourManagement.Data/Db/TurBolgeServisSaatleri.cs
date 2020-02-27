using System;
using System.Collections.Generic;
using TourManagement.Data.interfaces;
using TourManagement.SharedKernel;

namespace TourManagement.Data.Db
{
    public partial class TurBolgeServisSaatleri: IEntity, ITimeStamp, ITurBolgeServisSaatleri
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public int TourTipId { get; set; }
        public int BolgeId { get; set; }
        public int ServisSaati { get; set; }
        public string WhoInserted { get; set; }
        public string WhoUpdated { get; set; }
        public string WhoDeleted { get; set; }
        public DateTime? WhenInserted { get; set; }
        public DateTime? WhenUpdated { get; set; }
        public DateTime? WhenDeleted { get; set; }
    }
}

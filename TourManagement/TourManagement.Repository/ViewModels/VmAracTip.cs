using System;
using TourManagement.Data.interfaces;
using TourManagement.SharedKernel;

namespace TourManagement.Repository.ViewModels
{
    public class VmAracTip: IEntity, IAracTip
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public string AracTipAdi { get; set; }
    }
}
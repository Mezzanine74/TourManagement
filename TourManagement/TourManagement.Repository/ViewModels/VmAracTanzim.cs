using System;
using TourManagement.Data.interfaces;
using TourManagement.SharedKernel;

namespace TourManagement.Repository.ViewModels
{
    public class VmAracTanzim: IEntity, IAracTanzim
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public int TourId { get; set; }
        public int AracParkId { get; set; }
        public int TourMusteriPaxId { get; set; }
        public int KoltukNo { get; set; }
    }
}
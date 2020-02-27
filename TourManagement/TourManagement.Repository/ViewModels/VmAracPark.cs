using System;
using TourManagement.Data.interfaces;
using TourManagement.SharedKernel;

namespace TourManagement.Repository.ViewModels
{
    public class VmAracPark: IEntity, IAracPark
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public string AracPlakasi { get; set; }
        public int AracTipId { get; set; }
        public int AracKapasitesi { get; set; }
    }
}
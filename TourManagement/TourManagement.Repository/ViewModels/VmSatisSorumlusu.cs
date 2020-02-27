using System;
using TourManagement.Data.interfaces;
using TourManagement.SharedKernel;

namespace TourManagement.Repository.ViewModels
{
    public class VmSatisSorumlusu : IEntity, ISatisSorumlusu
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public string AdiSoyadi { get; set; }
        public int SubeId { get; set; }
    }
}
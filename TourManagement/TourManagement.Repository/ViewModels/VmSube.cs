using System;
using TourManagement.Data.interfaces;
using TourManagement.SharedKernel;

namespace TourManagement.Repository.ViewModels
{
    public class VmSube : IEntity, ISube
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public string SubeAdi { get; set; }
    }
}
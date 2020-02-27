using System;
using TourManagement.Data.interfaces;
using TourManagement.SharedKernel;

namespace TourManagement.Repository.ViewModels
{
    public class VmPax : IEntity, IPax
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public string PaxAdi { get; set; }
    }
}
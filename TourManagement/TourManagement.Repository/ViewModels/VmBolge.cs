using System;
using TourManagement.Data.interfaces;
using TourManagement.SharedKernel;

namespace TourManagement.Repository.ViewModels
{
    public class VmBolge : IEntity, IBolge
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public string BolgeAdi { get; set; }
        public int MerkezeUzaklikFaktoru { get; set; }
    }
}
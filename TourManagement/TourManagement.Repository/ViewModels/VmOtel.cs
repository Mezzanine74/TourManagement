using System;
using TourManagement.Data.interfaces;
using TourManagement.SharedKernel;

namespace TourManagement.Repository.ViewModels
{
    public class VmOtel : IEntity, IOtel
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public string OtelAdi { get; set; }
        public int BolgeId { get; set; }
        public int BolgeUzaklikFaktoru { get; set; }
    }
}
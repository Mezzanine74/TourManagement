using System;
using TourManagement.Data.interfaces;
using TourManagement.SharedKernel;

namespace TourManagement.Repository.ViewModels
{
    public class VmMusteri : IEntity, IMusteri
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public string MusteriAdiSoyadi { get; set; }
        public int UyrukId { get; set; }
        public int OtelId { get; set; }
        public string OdaNo { get; set; }
    }
}
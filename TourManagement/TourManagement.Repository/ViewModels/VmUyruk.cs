using System;
using TourManagement.Data.interfaces;
using TourManagement.SharedKernel;

namespace TourManagement.Repository.ViewModels
{
    public class VmUyruk : IEntity, IUyruk
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public string UyrukAdi { get; set; }
    }
}
using System;
using TourManagement.Data.interfaces;
using TourManagement.SharedKernel;

namespace TourManagement.Repository.ViewModels
{
    public class VmTour : IEntity, ITour
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public DateTime Tarih { get; set; }
        public int TourTipId { get; set; }
    }
}
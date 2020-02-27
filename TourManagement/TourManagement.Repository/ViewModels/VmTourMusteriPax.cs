using System;
using TourManagement.Data.interfaces;
using TourManagement.SharedKernel;

namespace TourManagement.Repository.ViewModels
{
    public class VmTourMusteriPax : IEntity, ITourMusteriPax
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public int BiletId { get; set; }
        public int PaxId { get; set; }
        public int PaxAdedi { get; set; }
        public string PaxInfo { get; set; }
    }
}
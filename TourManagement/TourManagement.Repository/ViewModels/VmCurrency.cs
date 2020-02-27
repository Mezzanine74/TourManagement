using System;
using TourManagement.Data.interfaces;
using TourManagement.SharedKernel;

namespace TourManagement.Repository.ViewModels
{
    public class VmCurrency : IEntity, ICurrency
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public string KurAdi { get; set; }
    }
}
using System;
using TourManagement.Data.interfaces;
using TourManagement.SharedKernel;

namespace TourManagement.Repository.ViewModels
{
    public class VmTurBolgeServisSaatleri : IEntity, ITurBolgeServisSaatleri
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public int TourTipId { get; set; }
        public int BolgeId { get; set; }
        public int ServisSaati { get; set; }
    }
}
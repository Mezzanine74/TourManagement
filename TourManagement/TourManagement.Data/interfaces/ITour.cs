using System;

namespace TourManagement.Data.interfaces
{
    public interface ITour
    {
        DateTime Tarih { get; set; }
        int TourTipId { get; set; }
    }
}
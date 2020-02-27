using System;

namespace TourManagement.SharedKernel
{
    public interface ITimeStamp
    {
        string WhoInserted { get; set; }
        string WhoUpdated { get; set; }
        string WhoDeleted { get; set; }
        Nullable<System.DateTime> WhenInserted { get; set; }
        Nullable<System.DateTime> WhenUpdated { get; set; }
        Nullable<System.DateTime> WhenDeleted { get; set; }

    }
}
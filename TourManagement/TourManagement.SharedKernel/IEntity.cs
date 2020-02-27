using System;

namespace TourManagement.SharedKernel
{
    public interface IEntity
    {
        int Id { get; set; }
        string Description { get; set; }
    }
}
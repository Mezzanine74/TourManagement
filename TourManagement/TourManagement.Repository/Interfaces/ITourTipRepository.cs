﻿using TourManagement.Data.Db;
using TourManagement.Repository.ViewModels;

namespace TourManagement.Repository.Interfaces
{
    public interface ITourTipRepository: IRepository<VmTourTip, TourTip>
    {
        
    }
}
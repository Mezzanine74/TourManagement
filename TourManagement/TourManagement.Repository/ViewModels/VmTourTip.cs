﻿using System;
using TourManagement.Data.interfaces;
using TourManagement.SharedKernel;

namespace TourManagement.Repository.ViewModels
{
    public class VmTourTip : IEntity, ITourTip
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public string TourAdi { get; set; }
    }
}
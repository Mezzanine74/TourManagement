using TourManagement.Data.Db;
using TourManagement.Repository.ViewModels;

namespace TourManagement.Repository.Interfaces
{
    public interface ITourRepository: IRepository<VmTour, Tour>
    {
        
    }
}
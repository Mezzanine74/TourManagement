using TourManagement.Data.Db;
using TourManagement.Repository.Interfaces;
using TourManagement.Repository.ViewModels;

namespace TourManagement.Repository.Repositories
{
    public class CurrencyRepository: RepositoryBase<VmCurrency, Currency>, ICurrencyRepository
    {
        
    }
}
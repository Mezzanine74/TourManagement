using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using TourManagement.Common;
using TourManagement.SharedKernel;

namespace TourManagement.Repository
{
    public interface IRepository<TViewModel, TModel> where TViewModel : class, IEntity where TModel : class, IEntity, ITimeStamp
    {
        IEnumerable<TViewModel> List(int id = 0);

        OperationResult Add(TViewModel vm);

        OperationResult Update(TViewModel vm);

        OperationResult Delete(int id);

        TViewModel GetById(int id);

        IEnumerable<TViewModel> ListWhere(Expression<Func<TModel, bool>> includeProperties);

    }
}
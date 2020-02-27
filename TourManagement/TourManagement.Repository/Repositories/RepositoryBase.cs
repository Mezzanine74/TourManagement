using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using AutoMapper;
using TourManagement.Common;
using TourManagement.Data.Db;
using TourManagement.SharedKernel;
using TourManagement.SharedKernel.Data;

namespace TourManagement.Repository.Repositories
{
    public class RepositoryBase<TViewModel, TModel> : IRepository<TViewModel, TModel> where TViewModel : class, IEntity where TModel : class, IEntity, ITimeStamp
    {
        public BilgeAdamTourContext _db;
        public GenericRepository<TModel> _repo;

        private MapperConfiguration _config1, _config2;

        public RepositoryBase() : this(new BilgeAdamTourContext())
        {

        }

        public RepositoryBase(BilgeAdamTourContext db)
        {
            _db = db;

            _repo = new GenericRepository<TModel>(db);

            _config1 = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<TViewModel, TModel>();
            });

            _config2 = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<TModel, TViewModel>();
            });

        }

        public virtual IEnumerable<TViewModel> List(int id = 0)
        {
            IMapper iMapper = _config2.CreateMapper();

            return _repo.All().Select(c => iMapper.Map<TModel, TViewModel>(c));
        }

        public virtual OperationResult Add(TViewModel vm)
        {
            IMapper iMapper = _config1.CreateMapper();

            var model = iMapper.Map<TViewModel, TModel>(vm);

            var _result = _repo.Add(model);

            if (_result.Success)
            {
                _result.AddMessage(model.Id.ToString());
            }
            else
            {
                _result.AddMessage("0");
            }

            return _result;
        }

        public virtual OperationResult Update(TViewModel vm)
        {
            IMapper iMapper = _config1.CreateMapper();

            var model = iMapper.Map<TViewModel, TModel>(vm);

            return _repo.Update(model);
        }

        public virtual OperationResult Delete(int id)
        {
            return _repo.Remove(id);
        }

        public virtual TViewModel GetById(int id)
        {
            var model = _repo.FindByKey(id);

            IMapper iMapper = _config2.CreateMapper();

            return iMapper.Map<TModel, TViewModel>(model); ;
        }

        public virtual IEnumerable<TViewModel> ListWhere(Expression<Func<TModel, bool>> includeProperties)
        {
            IMapper iMapper = _config2.CreateMapper();

            return _repo.AllInclude(includeProperties).Select(c => iMapper.Map<TModel, TViewModel>(c));
        }

    }
}
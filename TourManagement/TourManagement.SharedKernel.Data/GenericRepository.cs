using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using Microsoft.EntityFrameworkCore;
using TourManagement.Common;

namespace TourManagement.SharedKernel.Data
{
    public class GenericRepository<TEntity> where TEntity : class, IEntity, ITimeStamp
    {
        //private string _currentUser = HttpContext.Current?.User.Identity.Name;
        private string _currentUser = CurrentUser.UserName; // fix this later. It should be assigned in Core project, global asax etc.

        internal DbContext _context;
        internal DbSet<TEntity> _dbSet;

        public GenericRepository(DbContext context)
        {
            _context = context;
            _dbSet = context.Set<TEntity>();
        }

        /// <summary>
        /// ALL
        /// </summary>
        public IEnumerable<TEntity> All()
        {
            return _dbSet.AsNoTracking().ToList();
        }

        public IEnumerable<TEntity> AllInclude
            (Expression<Func<TEntity, bool>> includeProperties)
        {
            return _dbSet.Where(includeProperties).ToList();
            //return GetAllIncluding(includeProperties).ToList();
        }

        // testi yok
        public IEnumerable<TEntity> FindBy(Expression<Func<TEntity, bool>> predicate)
        {

            IEnumerable<TEntity> results = _dbSet.AsNoTracking()
              .Where(predicate).ToList();
            return results;
        }

        // testi yok
        public TEntity FindByKey(int id)
        {
            return _dbSet.AsNoTracking().SingleOrDefault(c => c.Id == id);
        }

        /// <summary>
        /// Id
        /// </summary>
        public int MaxId()
        {
            if (_dbSet.AsNoTracking().Select(c => c.Id).Take(1).Count() > 0)
            {
                return _dbSet.Max(c => c.Id);
            }
            else
            {
                return 0;
            }
        }

        public int NextId()
        {
            return MaxId() + 1;
        }

        /// <summary>
        /// Add
        /// </summary>
        public OperationResult Add(TEntity entity)
        {

            var opr = new OperationResult() { Success = true };

                entity.WhoInserted = this._currentUser;
                entity.WhenInserted = LocalTime.GetIstanbul();

                entity.Id = this.NextId();
                _dbSet.Add(entity);

                var a = entity.GetType().Name;

                try
                {
                    _context.SaveChanges();

                    return opr;
                }
                catch (Exception e)
                {
                    _dbSet.Remove(entity);
                    opr.Success = false;
                    opr.MessageList.Add("Ekleme basarisiz");

                    return opr;
                }

        }

        /// <summary>
        /// Update
        /// </summary>
        public OperationResult Update(TEntity entity)
        {

            var opr = new OperationResult() { Success = true };

            {
                // preserve previous data ..........................
                var _entity = this.FindByKey(entity.Id);

                entity.WhoInserted = _entity.WhoInserted;
                entity.WhenInserted = _entity.WhenInserted;
                entity.WhoUpdated = this._currentUser;
                entity.WhenUpdated = LocalTime.GetIstanbul();
                // ..........................preserve previous data 

                _dbSet.Attach(entity);
                _context.Entry(entity).State = EntityState.Modified;

                try
                {
                    _context.SaveChanges();

                    return opr;
                }
                catch (Exception e)
                {
                    _dbSet.Remove(entity);
                    opr.Success = false;
                    opr.MessageList.Add("Update basarisiz");

                    return opr;
                }
            }

        }

        /// <summary>
        /// Remove
        /// </summary>
        public OperationResult Remove(int Id)
        {
            var opr = new OperationResult() { Success = true };

            var entity = _dbSet.FirstOrDefault(c => c.Id == Id);

            // preserve previous data ..........................
            var _entity = this.FindByKey(entity.Id);

            entity.WhoInserted = _entity.WhoInserted;
            entity.WhenInserted = _entity.WhenInserted;
            entity.WhoUpdated = _entity.WhoUpdated;
            entity.WhenUpdated = _entity.WhenUpdated;
            entity.WhoDeleted = this._currentUser;
            entity.WhenDeleted = LocalTime.GetIstanbul();
            // ..........................preserve previous data 

            try
            {
                _context.Entry(entity).State = EntityState.Deleted;

                _context.SaveChanges();

                return opr;
            }
            catch
            {
                if (entity != null)
                {
                    _dbSet.Remove(entity);
                };
                opr.Success = false;
                opr.MessageList.Add("Silme basarisiz");

                return opr;
            }

        }
    }

}


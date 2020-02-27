using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using DevExtreme.AspNet.Data;
using DevExtreme.AspNet.Mvc;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using TourManagement.Repository;
using TourManagement.SharedKernel;

namespace TourManagement.WebApi.Controllers
{
    [Authorize]
    public class BaseApiController<TInterfaceRepository, TRepository, TViewModel, TModel> : Controller
        where TInterfaceRepository : class, IRepository<TViewModel, TModel>
        where TRepository : class, TInterfaceRepository, new()
        where TViewModel : class, IEntity, new()
        where TModel : class, IEntity, ITimeStamp
    {
        public TInterfaceRepository _repository;

        public BaseApiController() : this(new TRepository())
        {

        }

        public BaseApiController(TInterfaceRepository repository)
        {
            _repository = repository;
        }

        [HttpGet]
        public ActionResult<IEnumerable<TViewModel>> Get(DataSourceLoadOptions loadOptions)
        {
            //return Json();
            return Ok(DataSourceLoader.Load(_repository.List(), loadOptions));
        }

        [HttpGet("{id}")]
        public ActionResult<TViewModel> Get(int id)
        {
            var entry = _repository.GetById(id);

            if (entry == null)
            {
                return NotFound();
            }

            return entry;
        }

        [HttpPut("{id}")]
        public IActionResult Put(int id, TViewModel vm)
        {
            if (_repository.Update(vm).Success == false)
            {
                return Problem();
            };

            return NoContent();
        }

        [HttpPost]
        public ActionResult<TViewModel> Post(TViewModel vm)
        {
            var operation = _repository.Add(vm);

            if (operation.Success)
            {
                var entry = _repository.GetById(Convert.ToInt32(operation.MessageList[0]));
                return CreatedAtAction("Get", new { id = entry.Id }, entry);
            };

            return Problem();

        }

        [HttpDelete("{id}")]
        public ActionResult<TViewModel> Delete(int id)
        {
            var entry = _repository.GetById(id);
            if (entry == null)
            {
                return NotFound();
            }

            if (_repository.Delete(id).Success)
            {
                return entry;
            };

            return Problem();
        }


    }
}
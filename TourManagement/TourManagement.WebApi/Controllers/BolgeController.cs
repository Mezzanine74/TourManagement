using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using TourManagement.Data.Db;
using TourManagement.Repository.Interfaces;
using TourManagement.Repository.Repositories;
using TourManagement.Repository.ViewModels;

namespace TourManagement.WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BolgeController : BaseApiController<IBolgeRepository, BolgeRepository, VmBolge, Bolge>
    {

        [HttpGet]
        [Route("Test")]
        public ActionResult<IEnumerable<string>> Test()
        {
            //return Json();
            return Ok(new List<string>() {"osman","ahmet"});
        }


    }
}
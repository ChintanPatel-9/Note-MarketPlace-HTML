using NoteMarketplace_1.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NoteMarketplace_1.Controllers
{
    public class HomeController : Controller
    {

        Notes_MarketplaceEntities dboj = new Notes_MarketplaceEntities();

    

        // GET: Sample
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult AddCountries(Country model)
        {
            Country obj = new Country();
            obj.ID = model.ID;
            obj.Name = model.Name;
            obj.CountryCode = model.CountryCode;
            obj.CreatedBy = model.CreatedBy;
            obj.CreatedDate = model.CreatedDate;
            obj.ModifiedBy = model.ModifiedBy;
            obj.ModifiedDate = model.ModifiedDate;
            obj.IsActive = model.IsActive;

            Country.Add();
            dboj.SaveChanges();

            return View();
        }
    }
}
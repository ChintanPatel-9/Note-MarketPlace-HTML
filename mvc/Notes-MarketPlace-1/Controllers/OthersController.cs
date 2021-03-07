using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NoteMarketplace_1.Controllers
{
    public class OthersController : Controller
    {
        // GET: Others
        public ActionResult ContactUs()
        {
            return View();
        }

        public ActionResult BuyerRequest()
        {
            return View();
        }

        public ActionResult FAQs()
        {
            return View();
        }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NoteMarketplace_1.Controllers
{
    public class SellNotesController : Controller
    {
        // GET: Default
        public ActionResult AddPage()
        {
            return View();
        }
        public ActionResult SellNotes()
        {
            return View();
        }
    }
}
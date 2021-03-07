using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NoteMarketplace_1.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        public ActionResult EmailVerification()
        {
            return View();
        }

        public ActionResult ForgotPassword()
        {
            return View();
        }

        public ActionResult Login()
        {
            return View();
        }

        public ActionResult SignUp()
        {
            return View();
        }
    }
}
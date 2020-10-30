using PagedList;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Web_enti_mvc.Models;

namespace Web_enti_mvc.Controllers
{
    public class LoaiHangViewController : Controller
    {
        WebdochoiEntities db = new WebdochoiEntities();
        // GET: LoaiHangView
        public ActionResult Index()
        {
            var loaihang = db.LoaiHangs.Include(s => s.SanPhams);
            return View(loaihang.ToList());
        }
    }
}
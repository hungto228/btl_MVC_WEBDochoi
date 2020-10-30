using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Web_enti_mvc.Models;

namespace Web_enti_mvc.Controllers
{
    public class SanPhamViewController : Controller
    {
        WebdochoiEntities db = new WebdochoiEntities();
        // GET: SanPhamView
        public ActionResult Index(int itemId = 0)
        {
            if (itemId == 0)
                return RedirectToAction("Index", "HomeView");
             SanPhamViewModel model = new SanPhamViewModel();
            model.SanPhams = db.SanPhams.SingleOrDefault(e => e.MaSP == "itemId");
            if (model.SanPhams == null)
                return RedirectToAction("Index", "HomeView");
           
            db.SaveChanges();
           // model.SanPhams.HinhSP = db.HinhSP.Where(e => e.MaLoai == "itemId").ToList();
            model.related = db.SanPhams.Where(e => e.MaSP == model.SanPhams.MaSP && e.MaSP != model.SanPhams.MaSP).Take(4).OrderBy(e => Guid.NewGuid()).ToList();
            return View(model);
        }
    }
}
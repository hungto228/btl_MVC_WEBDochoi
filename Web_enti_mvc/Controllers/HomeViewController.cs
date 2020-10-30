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
    public class HomeViewController : Controller
    {
        private WebdochoiEntities db = new WebdochoiEntities();
        // GET: HomeView
        public ActionResult Index()
        {
            //   var sanPhams = db.SanPhams.Include(S => e.LoaiHang);
            var sanPhams = db.SanPhams.Include(s => s.LoaiHang);
            return View(sanPhams.ToList());
        }
        [HttpPost]
        public ActionResult Index( int? page, string search)
        {
            int pagesize = 9, pageindex = 1;
            pageindex = page.HasValue ? Convert.ToInt32(page) : 1;
            var list = db.SanPhams.Where(x => x.TenSP.Contains(search)).OrderByDescending(x => x.MaSP).ToList();
            IPagedList<SanPham> stu = list.ToPagedList(pageindex, pagesize);


            return View(stu);


        }
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SanPham sanPham = db.SanPhams.Find(id);
            if (sanPham == null)
            {
                return HttpNotFound();
            }
            return View(sanPham);
        }
        //public ActionResult KhuyenMai(int itemId = 0)
        //{
        //    if (itemId == 0)
        //    {
        //        var model = db.Sales.OrderByDescending(e => e.Id).Take(10).ToList();
        //        return View(model);
        //    }
        //    else
        //    {
        //        var model = db.Sales.SingleOrDefault(e => e.Id == itemId);
        //        if (model == null)
        //            return RedirectToAction("KhuyenMai");
        //        return View("ChiTietKhuyenMai", model);
        //    }
        //}
        public ActionResult VanChuyen()
        {
            return View();
        }
        [HttpGet]
        public ActionResult LienHe()
        {
            return View();
        }
        [HttpPost]
        public ActionResult LienHe(ContactViewModel model)
        {
            if (ModelState.IsValid)
            {
                var lienhe = new Lienhe()
                {
                    From = model.From,
                    Subject = model.Subject,
                    Message = model.Message,
                    Read = false
                };
               
              //  db.SaveChanges();
                ModelState.AddModelError("", "Cảm ơn bạn đã góp ý. Thư của bạn đã được gửi đi, chúng tôi sẽ phản hồi lại qua email " + model.From + " !");
            }
            return View(model);
        }
    }
}

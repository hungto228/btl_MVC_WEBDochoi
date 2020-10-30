using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Web_enti_mvc.Models
{
    public class IndexViewModel
    {
        public IEnumerable<SanPham> SanPhams { get; set; }
        public int total { get; set; }
        public int currentPage { get; set; }
    }
    public class LoaiHangViewModel
    {
      public LoaiHang loaiHang { get; set; }

        public  IEnumerable<SanPham> SanPhams { get; set; }
        public string MaLoai { get; set; }
    
        public string TenLoai { get; set; }
   
        public string GhiChu { get; set; }
           public int currentPage { get; set; }
        public int total { get; set; }

           
    }
    public class SanPhamViewModel
    {
    public SanPham SanPhams { get; set; }

        

        public IEnumerable<SanPham> related { get; set; }

    }
    public class ContactViewModel
    {
        [Required(ErrorMessage = "Vui lòng nhập trường này")]
        [EmailAddress(ErrorMessage = "Vui lòng nhập đúng định dạng email")]
        [Display(Name = "Email liên hệ:")]
        public string From { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập trường này")]
        [Display(Name = "Tiêu đề:")]
        public string Subject { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập trường này")]
        [Display(Name = "Nội dung:")]
        public string Message { get; set; }
    }
}
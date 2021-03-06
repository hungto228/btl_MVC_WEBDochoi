﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Web_enti_mvc.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class SanPham
    {
        public string MaSP { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập trường này")]
        [Display(Name = "Tên sản phẩm")]
        public string TenSP { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập trường này")]
        [Display(Name = "Mô tả sản phẩm")]
        public string Mota { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập trường này")]
        [Display(Name = "Số lượng")]
       
        public Nullable<int> SoLuong { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập trường này")]
        [Display(Name = "Hình sản phẩm")]
        public string HinhSP { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập trường này")]
        [Display(Name = "Đơn giá ")]
        public Nullable<int> DonGia { get; set; }
        public string MaLoai { get; set; }
    
        public virtual LoaiHang LoaiHang { get; set; }
    }
}

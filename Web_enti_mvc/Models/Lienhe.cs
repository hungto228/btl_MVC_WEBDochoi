using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web_enti_mvc.Models
{
    public class Lienhe
    {
        public int Id { get; set; }
        public string From { get; set; }
        public string Subject { get; set; }
        public string Message { get; set; }
        public Nullable<bool> Read { get; set; }
    }
}
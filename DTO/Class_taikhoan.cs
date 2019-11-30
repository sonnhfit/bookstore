using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    class Class_taikhoan
    {
        string user, pass, sodt, hoten, quyentruycap;

        public string User { get => user; set => user = value; }
        public string Pass { get => pass; set => pass = value; }
        public string Sodt { get => sodt; set => sodt = value; }
        public string Hoten { get => hoten; set => hoten = value; }
        public string Quyentruycap { get => quyentruycap; set => quyentruycap = value; }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    class Class_donhang
    {
        string maHD, makh, masach;
        Int16 soluong;

        public string MaHD { get => maHD; set => maHD = value; }
        public string Makh { get => makh; set => makh = value; }
        public string Masach { get => masach; set => masach = value; }
        public short Soluong { get => soluong; set => soluong = value; }
    }
}

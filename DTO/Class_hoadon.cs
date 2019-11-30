using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    class Class_hoadon
    {
        string maDH, maKH, tenKH, masach, tensach;
        Int16 soluong;
        double gia;

        public string MaDH { get => maDH; set => maDH = value; }
        public string MaKH { get => maKH; set => maKH = value; }
        public string TenKH { get => tenKH; set => tenKH = value; }
        public string Masach { get => masach; set => masach = value; }
        public string Tensach { get => tensach; set => tensach = value; }
        public short Soluong { get => soluong; set => soluong = value; }
        public double Gia { get => gia; set => gia = value; }
    }
}

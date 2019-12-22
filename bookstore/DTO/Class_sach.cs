using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class Class_sach
    {
        string maloaisach, masach, tensach, kichthuoc, namsx, nhaxb, tinhtrang, khuyenmai, gioithieu, urlanh;
        Int16 sotrang;
       double giabia, phantramKmai;

       
        public string Maloaisach { get => maloaisach; set => maloaisach = value; }
        public string Masach { get => masach; set => masach = value; }
        public string Tensach { get => tensach; set => tensach = value; }
        public string Kichthuoc { get => kichthuoc; set => kichthuoc = value; }
        public string Namsx { get => namsx; set => namsx = value; }
        public string Nhaxb { get => nhaxb; set => nhaxb = value; }
        public string Tinhtrang { get => tinhtrang; set => tinhtrang = value; }
        public string Khuyenmai { get => khuyenmai; set => khuyenmai = value; }
        public string Gioithieu { get => gioithieu; set => gioithieu = value; }
        public string Urlanh { get => urlanh; set => urlanh = value; }
  
       
        public short Sotrang { get => sotrang; set => sotrang = value; }
        public double Giabia1 { get => giabia; set => giabia = value; }
        public double PhantramKmai1 { get => phantramKmai; set => phantramKmai = value; }
    }
}

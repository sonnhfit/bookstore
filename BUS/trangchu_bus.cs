using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using DTO;
using System.Data;
using System.Data.SqlClient;
namespace BUS
{
    class trangchu_bus
    {
        DataConnect da = new DataConnect();
        Class_danhmucsach danhmuc = new Class_danhmucsach();
        Class_sach sach = new Class_sach();

        // lay danh muc sach
        public DataTable getDanhmucsach()
        {

            string sql = "select TenloaiSach from DanhMucLoaiSach";
            DataTable dt = new DataTable();
            dt = da.gettable(sql);

            return dt;
        }


        //lay danh sach tin tuc
        public DataTable getTintuc()
        {

            string sql = "select tieude,anh from tintuc";
            DataTable dt = new DataTable();
            dt = da.gettable(sql);

            return dt;
        }

        // lay danh sach sach

        public DataTable getSach()
        {

            string sql = "select masach,tensach,giabia,phantramKMai,IMG,(giabia*(100-phantramKMai)/100) as giaban  from chitietsach";
            DataTable dt = new DataTable();
            dt = da.gettable(sql);

            return dt;
        }

    }
}

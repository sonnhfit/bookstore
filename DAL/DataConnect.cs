using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    class DataConnect
    {
       // ket noi csdl
        public SqlConnection getcon()
        {

            return new SqlConnection(@"Data Source=DESKTOP-1TLJA5Q\ADMIN;Initial Catalog=shopbansach;Integrated Security=True");
        }

        //lay du lieu ra theo dang bang
        public DataTable gettable(string sql)
        {
            SqlConnection con = getcon();
            con.Open();

            SqlDataAdapter da = new SqlDataAdapter(sql, con);

            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        //thuc hien cau lenh truy van them sua xoa
        public void excute(string sql)
        {
            SqlConnection con = getcon();
            con.Open();

            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            cmd.Clone();

            con.Close();

        }

    }
}

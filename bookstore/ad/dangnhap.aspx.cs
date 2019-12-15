using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
namespace bookstore.ad
{
    public partial class dangnhap : System.Web.UI.Page
    {
        DataConnect da = new DataConnect();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            try
            {

                if (da.ktratk(txuser.Text, txpass.Text) == true)
                {
                    Label3.Text = "thanh cong";
                    Response.Redirect("ad_home.aspx");


                }

                else
                {
                    Label3.Visible = true;
                    Label3.Text = " ";
                    string script = "alert(\"sai nhap lại\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                                          "ServerControlScript", script, true);

                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }
    }
}
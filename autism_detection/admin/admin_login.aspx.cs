using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL_autism.entities;
using System.Data.SqlClient;
using BLL_autism.operations;

namespace autism_detection.admin
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            et_login l=new et_login();
            l.uname=txt_email.Text;
            l.pwd=txt_pass.Text;
            op_login op=new op_login();
            op.login_insert(l);
            Response.Write("<script>alert('clicked');</script>");

        }
    }
}
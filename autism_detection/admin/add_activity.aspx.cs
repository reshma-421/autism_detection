using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL_autism.operations;
using DAL_autism.entities;

namespace autism_detection.admin
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            et_activity a= new et_activity();
            a.a_name=txt_an.Text;
            a.a_desc=txt_des.Text;  
            a.hint=txt_hnt.Text;
            op_activity op= new op_activity();
            op.add_activity(a);
            Response.Write("<script>alert('successfull');</script");

            Response.Redirect("view_activity.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txt_an.Text = "";
            txt_des.Text = "";
            txt_hnt.Text = "";
            Response.Redirect("view_activity.aspx");
        }
    }
}
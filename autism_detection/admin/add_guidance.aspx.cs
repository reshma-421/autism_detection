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
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //txt_rid.Text = Session["uname"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["g_id"]=txt_guid.Text;
            et_guidance g=new et_guidance();
            g.guidance=txt_guid.Text;
            g.r_id=txt_rid.Text;
            op_guidance op=new op_guidance();
            op.add_guidance(g);
            Response.Write("<script>alert('clicked');</script");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txt_guid.Text = "";
            txt_rid.Text = "";
        }
    }
}
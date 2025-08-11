using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL_autism.operations;
using DAL_autism.entities;

namespace autism_detection.user
{
    public partial class WebForm16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txt_p.Text= Session["uname"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            et_feedback a = new et_feedback();
            a.feedback = txt_fd.Text;
            a.p_id = txt_p.Text; 
           
            op_feedback op = new op_feedback();
            op.add_feedback(a);
            Response.Write("<script>alert('clicked');</script");
        }
    }
}
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
    public partial class WebForm27 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           //txt_un.Text = Session["uname"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            et_diagnosis d = new et_diagnosis();
            d.diagnosis=txt_dia.Text;
            d.impression=txt_im.Text;
            d.r_id=txt_un.Text;
            op_diagnosis op = new op_diagnosis();
            op.add_diagnosis(d);
            Response.Write("<script>alert('successfull');</script");
        }
    }
}
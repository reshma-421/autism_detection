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
    public partial class WebForm14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //txt_pid.Text = Session["uname"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            et_result result = new et_result();
            result.mark = txt_mrk.Text;
            result.date= DateTime.Today.ToString("yyyy-MM-dd");
            result.time= DateTime.Now.ToString("hh:mm tt");
            result.p_id=txt_pid.Text; 
            result.total_mark=txt_tmark.Text;
            result.category=txt_cat.Text;
            //result.diagnosis=txt_dia.Text;
            op_result op=new op_result();
            op.add_result(result);

            Response.Write("<script>alert('successfull');</script");
        }
    }
}
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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txt_un.Text= Session["uname"].ToString();
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            

            et_patient p = new et_patient();
           
            //p.log_id = txt_log.Text;
            p.unq_name = txt_un.Text;
            p.height = txt_height.Text;
            p.weight = txt_weight.Text;
            op_patient op = new op_patient();
            op.add_patient(p);
            Response.Write("<script>alert('clicked');</script");
        }
    }
}
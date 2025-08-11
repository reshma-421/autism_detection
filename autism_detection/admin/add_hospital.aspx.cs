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
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //txt_di_id.Text = Session["d_name"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string upload = Request.PhysicalApplicationPath + "hosp\\";
            string tname = txt_name.Text.Substring(0, 3);
            string BTINMG;


            BTINMG = tname + ".jpg";

            if (himg.HasFile)
            {
                himg.SaveAs(upload + BTINMG);
            }
            et_hospital h = new et_hospital();
            h.h_name=txt_name.Text;
            h.address=txt_add.Text;
            h.image= BTINMG;
            h.contact=txt_ph.Text;
            h.d_id=txt_di_id.Text;
            op_hospital op = new op_hospital();
            op.add_hospital(h);
            Response.Write("<script>alert('clicked');</script");
            Response.Redirect("view_hospital.aspx");
        }

        
      

        protected void Button2_Click1(object sender, EventArgs e)
        {
            txt_name.Text = "";
            txt_add.Text = "";
            txt_ph.Text = "";
            txt_di_id.Text = "";
            Response.Redirect("view_hospital.aspx");

        }
    }
}
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
    public partial class WebForm1 : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            //txt_g.Text = Session["g_id"].ToString();
            //Session["d_name"] = txt_n.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Random r = new Random();
            string upload = Request.PhysicalApplicationPath + "doct\\";
            string tname = txt_n.Text.Substring(0, 3);
            string BTINMG;


            BTINMG = r.Next(100,1000) + ".jpg";

            if (file_up.HasFile)
            {
                file_up.SaveAs(upload + BTINMG);
            }

            et_doctor el= new et_doctor();
            el.d_name=txt_n.Text;
            el.category=txt_cat.Text;   
            el.speci=txt_speci.Text;
            el.image= BTINMG;
            el.phone=txt_ph.Text;
            el.g_id=txt_g.Text;
            el.email=txt_em.Text;
            el.ho_id=txt_ho.Text;
            op_doctor op= new op_doctor();
            op.add_doctor(el);
            Response.Write("<script>alert('clicked');</script");
            Response.Redirect("view_doctor.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txt_n.Text = "";
            txt_cat.Text = "";
            txt_speci.Text = "";
            txt_ph.Text = "";
            txt_g.Text = "";
            txt_em.Text = "";
            txt_ho.Text = "";
            Response.Redirect("view_doctor.aspx");
        }
    }
}
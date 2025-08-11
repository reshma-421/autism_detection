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
    public partial class WebForm20 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            et_education ed=new et_education();
            ed.name =txt_n.Text;
            ed.content = txt_con.Text;
            ed.description=txt_desc.Text;
            op_e_contents op=new op_e_contents();
            op.add_contents(ed);
            Response.Write("<script>alert('Succesfull');</script");

            Response.Redirect("view_contents.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txt_n.Text = "";
            txt_con.Text = "";
            txt_desc.Text = "";
            Response.Redirect("view_contents.aspx");
        }
    }
}
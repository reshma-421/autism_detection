using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace autism_detection.admin
{
    public partial class WebForm23 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("add_question.aspx?cat=newborn");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("add_question.aspx?cat=todler");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("add_question.aspx?cat=childhood");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("add_question.aspx?cat=teenage");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("add_question.aspx?cat=adult");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("view_question.aspx?a=newborn");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("view_question.aspx?a=todler");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("view_question.aspx?a=childhood");
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("view_question.aspx?a=teenage");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("view_question.aspx?a=adult");
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Response.Redirect("view_question.aspx");
        }
    }
}
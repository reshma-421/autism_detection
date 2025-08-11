using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace autism_detection.user
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string category = Request.QueryString["cat"];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("../exams/start_exam.aspx?cat=newborn");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("../exams/start_exam.aspx?cat=todler");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("../exams/start_exam.aspx?cat=childhood");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("../exams/start_exam.aspx?cat=teenage");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("../exams/start_exam.aspx?cat=adult");
        }
    }
}
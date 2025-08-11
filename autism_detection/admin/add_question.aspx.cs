using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using autism_detection.DB_conn;
using BLL_autism.operations;
using DAL_autism.entities;
using System.Data.SqlClient;

namespace autism_detection.admin
{
    public partial class WebForm24 : System.Web.UI.Page
    {
        string c,q;
        int q1;
        db_connection cn=new db_connection();

        protected void Page_Load(object sender, EventArgs e)
        {

            c = Request.QueryString["cat"];

            //c = Request.QueryString[0];

            cn.cmd=new SqlCommand("SELECT TOP 1 q_no FROM question WHERE category = '" + c + "'  ORDER BY CAST(q_no AS INT) DESC",cn.connect());
            cn.dr=cn.cmd.ExecuteReader();
            if (cn.dr.Read())
            {
                q = (cn.dr.GetString(0));

            }
            q1 = Convert.ToInt32(q) + 1;
            txt_nmbr.Text = q1.ToString();
            txt_o1.Text = "True";
            txt_o2.Text = "False";
            txt_cat.Text = c;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txt_nmbr.Text = "";
            txt_cat.Text = "";
            txt_qstn.Text = "";
            txt_ans.Text = "";
            Response.Redirect("add_test.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            et_question q = new et_question();
            q.q_no = txt_nmbr.Text;
            //q.category=txt_cat.Text;
            q.category = txt_cat.Text;
            q.question = txt_qstn.Text;
            q.q_answer = txt_ans.Text;
            q.option1 = txt_o1.Text;
            q.option2 = txt_o2.Text;
            op_question op = new op_question();
            op.add_question(q);
            q.question = "";
            txt_ans.Text = "";
            Response.Write("<script>alert('sucessfull');</script");

            Response.Redirect("view_question.aspx?cat=" + c);


        }

    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using autism_detection.DB_conn;
using BLL_autism.operations;
using DAL_autism.entities;

namespace autism_detection.admin
{
    public partial class WebForm26 : System.Web.UI.Page
    {
        db_connection cn = new db_connection();
        int ab = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            ab = Convert.ToInt32(Request.QueryString[0]);
            if (!IsPostBack)
            {
                cn.cmd = new SqlCommand("select * from question where q_id=@q_id", cn.connect());
                cn.cmd.Parameters.AddWithValue("@q_id", ab);
                cn.dr = cn.cmd.ExecuteReader();
                if (cn.dr.Read())
                {
                    txt_nmbr.Text = cn.dr.GetValue(1).ToString();
                    txt_cat.Text = cn.dr.GetString(2);
                    txt_qstn.Text = cn.dr.GetString(3);
                    txt_ans.Text = cn.dr.GetString(4);
                    txt_o1.Text = cn.dr.GetString(5);
                    txt_o2.Text = cn.dr.GetString(6);
                    

                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            et_question q = new et_question();
            q.q_no=txt_nmbr.Text;
            q.category=txt_cat.Text;
            q.question=txt_qstn.Text;
            q.q_answer=txt_ans.Text;
            q.option1 = txt_o1.Text;
            q.option2 = txt_o2.Text;
            op_question op = new op_question();
            op.upd_question(q, ab);
            Response.Redirect("view_question.aspx?a="+ txt_cat.Text);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("view_question.aspx?a=" + txt_cat.Text);
        }
    }
}
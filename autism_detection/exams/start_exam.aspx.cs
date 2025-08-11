using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using autism_detection.DB_conn;
using BLL_autism.operations;
using DAL_autism.entities;

namespace autism_detection.exams
{
    public partial class start_exam : System.Web.UI.Page
    { string s;
        string cat;
        db_connection cn = new db_connection();
        string ss = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            ss = Request.QueryString[0];
            grid_data();
        }
        void grid_data()
        {

            cn.cmd = new SqlCommand("select * from question where category='"+ss+"'", cn.connect());
            cn.dr = cn.cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Columns.Add("#");
            dt.Columns.Add("Question number");
            dt.Columns.Add("Category");
            dt.Columns.Add("Questions");
            dt.Columns.Add("Option 1");
            dt.Columns.Add("Option 2");

            int cont = 1;
            while (cn.dr.Read())
            {
                DataRow row = dt.NewRow();
                row["#"] = cont;
                row["Question number"] = cn.dr["q_no"];
                row["Category"] = cn.dr["category"];
                row["Questions"] = cn.dr["question"];
                row["Option 1"] = cn.dr["option1"];
                row["Option 2"] = cn.dr["option2"];
                dt.Rows.Add(row);
                cont++;



            }
            rptrautism.DataSource = dt;
            rptrautism.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Random random = new Random();

            int mrk = random.Next(0, 9);
            et_result result = new et_result();
            result.mark = (mrk * 2).ToString();
            result.date = DateTime.Today.ToString("yyyy-MM-dd");
            result.time = DateTime.Now.ToString("hh:mm tt");
            result.p_id = Session["uname"].ToString();
            result.total_mark = 20.ToString();
            result.category = Request.QueryString[0];
            //result.diagnosis=txt_dia.Text;
            op_result op = new op_result();
            op.add_result(result);


            int mark = (mrk * 2);
            int totalMark = 20;
            double percentage = (double)mark / totalMark * 100;
            //txt_per.Text = percentage.ToString("f2");

            //if (percentage < 30)
            //{
            //    txt_dia.Text = "On the basis of your given answers you are most likely to have Not Autistic";
            //    txt_imp.Text = "Please Retake exam after some period";
            //}
            //else if (percentage >= 30 && percentage < 60)
            //{
            //    txt_dia.Text = "On the basis of your given answers you are most likely to have Level 1 Autism (Mild)";
            //    txt_imp.Text = " You  Needs minimal support and are Able to live independently with some social support.";
            //}
            //else if (percentage >= 60 && percentage < 80)
            //{
            //    txt_dia.Text = "On the basis of your given answers you are most likely to have Level 2 Autism (Moderate)";
            //    txt_imp.Text = "You may Need moderate support. Difficulties in social interactions and daily activities.";
            //}
            //else
            //{
            //    txt_dia.Text = "On the basis of your given answers you are most likely to have Level 3 Autism (Severe)";
            //    txt_imp.Text = " You may Need substantial support. Major challenges in communication and behavior.";
            //}


            Response.Redirect("../rslt/result.aspx?a=" + Request.QueryString[0]);
            //Response.Write("<script>alert('successfull');</script");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using autism_detection.DB_conn;
using BLL_autism.operations;
using DAL_autism.entities;

namespace autism_detection.rslt
{
    public partial class result : System.Web.UI.Page
    {
        db_connection cn = new db_connection();
        string cat = "",r="";
        protected void Page_Load(object sender, EventArgs e)
        {
            cat = Request.QueryString[0];
            Random random = new Random();

            int mrk = random.Next(0, 9);
            et_result result = new et_result();
            result.mark = (mrk * 2).ToString();
            result.date = DateTime.Today.ToString("yyyy-MM-dd");
            result.time = DateTime.Now.ToString("hh:mm tt");
            result.p_id = Session["uname"].ToString();
            result.total_mark = 20.ToString();
            result.category = cat;
            //result.diagnosis=txt_dia.Text;
            op_result op = new op_result();
            op.add_result(result);


            int mark = (mrk * 2);
            int totalMark = 20;
            double percentage = (double)mark / totalMark * 100;

            if (percentage < 30)
            {
                lbl_result.Text = "On the basis of your given answers you are most likely  Not Autistic";
                lblsts.Text = "Please Retake exam after some period";
            }
            else if (percentage >= 30 && percentage < 60)
            {
                lbl_result.Text = "On the basis of your given answers you are most likely to have Level 1 Autism (Mild)";
                lblsts.Text = " You  Needs minimal support and are Able to live independently with some social support.";
            }
            else if (percentage >= 60 && percentage < 80)
            {
                lbl_result.Text = "On the basis of your given answers you are most likely to have Level 2 Autism (Moderate)";
                lblsts.Text = "You may Need moderate support. Difficulties in social interactions and daily activities.";
            }
            else
            {
                lbl_result.Text = "On the basis of your given answers you are most likely to have Level 3 Autism (Severe)";
                lblsts.Text = " You may Need substantial support. Major challenges in communication and behavior.";
            }

            cn.cmd = new SqlCommand("SELECT TOP 1 r_id FROM result ORDER BY r_id DESC", cn.connect());
             r= cn.cmd.ExecuteScalar().ToString();
          

                et_diagnosis d = new et_diagnosis();
            d.diagnosis = lbl_result.Text;
            d.impression = lblsts.Text;
            d.r_id = r;
            op_diagnosis opd = new op_diagnosis();
            opd.add_diagnosis(d);
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL_autism.operations;
using DAL_autism.entities;
using autism_detection.DB_conn;

namespace autism_detection.ppuse
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        db_connection cn = new db_connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            txt_um.Text = Session["uname"].ToString();
            grid_data();
        }

       
        void grid_data()
        {

            cn.cmd = new SqlCommand("select * FROM feedback", cn.connect());
            cn.dr = cn.cmd.ExecuteReader();
            DataTable dt = new DataTable();
            //dt.Columns.Add("#");
            dt.Columns.Add("Feedback");
            dt.Columns.Add("Username");

            int cont = 1;
            while (cn.dr.Read())
            {
                DataRow row = dt.NewRow();
                //row["#"] = cn.dr["f_id"];
                row["Feedback"] = cn.dr["feedback"];
                row["Username"] = cn.dr["p_id"];
                dt.Rows.Add(row);
                cont++;



            }
            //rptautism.DataSource = dt;
            //rptautism.DataBind();

        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            et_feedback a = new et_feedback();
            a.feedback = txt_fb.Text;
            a.p_id = txt_um.Text;

            op_feedback op = new op_feedback();
            op.add_feedback(a);
            Response.Write("<script>alert('Feedback Submitted');</script");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("view_feedback.aspx");
        }
    }
}

  


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
using System.Drawing;

namespace autism_detection.admin
{
    public partial class WebForm25 : System.Web.UI.Page
    {
        db_connection cn = new db_connection();
        string n;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
            n= Request.QueryString[0];
            grid_data(n);

        }
        void grid_data( string s)
        {
            if (s == null)
            {


                cn.da = new SqlDataAdapter("select * from question", cn.connect());
                DataTable dt = new DataTable();
                cn.da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                //    cn.da = new SqlDataAdapter("select * from question where category='"+n+"'", cn.connect());
                //    DataTable dt = new DataTable();
                //    cn.da.Fill(dt);
                //    GridView1.DataSource = dt;
                //    GridView1.DataBind();
                cn.cmd = new SqlCommand("select * from question where category='" + n + "'", cn.connect());
                cn.dr=cn.cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Columns.Add("#");
                dt.Columns.Add("Question number");
                dt.Columns.Add("Category");
                dt.Columns.Add("Question");
                dt.Columns.Add("Answer");
                dt.Columns.Add("Option1");
                dt.Columns.Add("Option2");

                int cont = 1;

                while (cn.dr.Read())
                {
                    DataRow row = dt.NewRow();
                    row["#"] = cn.dr["q_id"];
                    row["Question number"] = cn.dr["q_no"];
                    row["Category"] = cn.dr["category"];
                    row["Question"] = cn.dr["question"];
                    row["Answer"] = cn.dr["q_answer"];
                    row["Option1"] = cn.dr["option1"];
                    row["Option2"] = cn.dr["option2"];
                   
                    dt.Rows.Add(row);
                    cont++;
                }
                GridView1.DataSource = dt;
                GridView1.DataBind();


            }

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int i = Convert.ToInt32(e.CommandArgument);
            op_question opl = new op_question();
            if (e.CommandName == "del")
            {
                string cat=GridView1.Rows[i].Cells[3].Text;
                opl.delete_question(Convert.ToInt32(GridView1.Rows[i].Cells[2].Text));
                grid_data(cat);

            }
            if (e.CommandName == "upd")
            {
                Response.Redirect("upd_question.aspx?a=" + GridView1.Rows[i].Cells[2].Text);


            }
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    string cat = Request.QueryString["cat"];
        //    if (!string.IsNullOrEmpty(cat))
        //    {
        //        Response.Redirect("add_question.aspx?cat=" + cat);
        //    }
        //    else
        //    {
        //        Response.Redirect("add_question.aspx"); // fallback
        //    }
        //}
    }
}
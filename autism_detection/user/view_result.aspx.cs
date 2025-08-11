using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using autism_detection.DB_conn;

namespace autism_detection.user
{
    public partial class WebForm21 : System.Web.UI.Page
    {
        string ab;
        db_connection cn=new db_connection();
        protected void Page_Load(object sender, EventArgs e)
        {
             ab = Session["uname"].ToString();
            grid_data();
        }

        void grid_data()
        {
           
            cn.cmd = new SqlCommand("select * from result where p_id= @p_id", cn.connect());
            cn.cmd.Parameters.AddWithValue("@p_id", ab);
            cn.dr = cn.cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Columns.Add("#");
            dt.Columns.Add("Mark");
            dt.Columns.Add("Date");
            dt.Columns.Add("Time");
            dt.Columns.Add("patient");

            int cont = 1;
            while (cn.dr.Read())
            {
                DataRow row = dt.NewRow();
                row["#"] = cn.dr["r_id"];
                row["Mark"] = cn.dr["mark"];
                row["Date"] = cn.dr["date"];
                row["Time"] = cn.dr["time"];
                row["Patient"] = cn.dr["p_id"];
                dt.Rows.Add(row);
                cont++;



            }
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int i = Convert.ToInt32(e.CommandArgument);

            Response.Redirect("view_result_details.aspx?a=" + GridView1.Rows[i].Cells[1].Text);
        }
    }
}
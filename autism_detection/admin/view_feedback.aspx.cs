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

namespace autism_detection.admin
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        db_connection cn=new db_connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            grid_data();
        }
        void grid_data()
        {
            //cn.da = new SqlDataAdapter("select * from feedback", cn.connect());
            //DataTable dt = new DataTable();
            //cn.da.Fill(dt);
            //GridView1.DataSource = dt;
            //GridView1.DataBind();

            cn.cmd = new SqlCommand("select * from feedback", cn.connect());
            cn.dr = cn.cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Columns.Add("#");
            dt.Columns.Add("Feedback");
            dt.Columns.Add("patient");

            int cont = 1;
            while (cn.dr.Read())
            {
                DataRow row = dt.NewRow();
                row["#"] = cn.dr["f_id"];
                row["Feedback"] = cn.dr["feedback"];
                row["patient"] = cn.dr["p_id"];
                dt.Rows.Add(row);
                cont++;



            }
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int i = Convert.ToInt32(e.CommandArgument);
            op_feedback opl = new op_feedback();
            if (e.CommandName == "del")
            {

                opl.delete_feedback(Convert.ToInt32(GridView1.Rows[i].Cells[1].Text));
                grid_data();

            }

        }
    }
}
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
    public partial class WebForm15 : System.Web.UI.Page
    {
        db_connection cn=new db_connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            grid_data();
        }
        void grid_data()
        {
            //cn.da = new SqlDataAdapter("select * from activity", cn.connect());
            //DataTable dt = new DataTable();
            //cn.da.Fill(dt);
            //GridView1.DataSource = dt;
            //GridView1.DataBind();
            cn.cmd = new SqlCommand("select * from activity",cn.connect());
            cn.dr=cn.cmd.ExecuteReader();
            DataTable dt=new DataTable();
            dt.Columns.Add("#");
            dt.Columns.Add("Activity name");
            dt.Columns.Add("Details");
            dt.Columns.Add("Hint");

            int cont = 1;
            while (cn.dr.Read())
            {
                DataRow row = dt.NewRow();
                row["#"]= cn.dr["a_id"];
                row["Activity name"] = cn.dr["a_name"];
                row["Details"] = cn.dr["a_desc"];
                row["Hint"] = cn.dr["hint"];
                dt.Rows.Add(row);
                cont++;



            }
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }



        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int i = Convert.ToInt32(e.CommandArgument);
            op_activity opl = new op_activity();
            if (e.CommandName == "del")
            {

                opl.delete_activity(Convert.ToInt32(GridView1.Rows[i].Cells[2].Text));
                grid_data();

            }
            if (e.CommandName == "upd")
            {
                Response.Redirect("upd_activity.aspx?a=" + GridView1.Rows[i].Cells[2].Text);


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("add_activity.aspx");
        }
    }
}
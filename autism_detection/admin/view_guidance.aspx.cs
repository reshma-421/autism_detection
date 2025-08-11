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
   
    public partial class WebForm17 : System.Web.UI.Page
    {
        db_connection cn=new db_connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            grid_data();

        }
        void grid_data()
        {
            //cn.da = new SqlDataAdapter("select * from guidance", cn.connect());
            //DataTable dt = new DataTable();
            //cn.da.Fill(dt);
            //GridView1.DataSource = dt;
            //GridView1.DataBind();
            cn.cmd = new SqlCommand("select * from guidance", cn.connect());
            cn.dr = cn.cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Columns.Add("#");
            dt.Columns.Add("Guidance");
            dt.Columns.Add("Username");

            int cont = 1;
            while (cn.dr.Read())
            {
                DataRow row = dt.NewRow();
                row["#"] = cn.dr["g_id"];
                row["Guidance"] = cn.dr["guidance"];
                row["Username"] = cn.dr["r_id"];
                dt.Rows.Add(row);
                cont++;



            }
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            int i = Convert.ToInt32(e.CommandArgument);
            op_guidance opl = new op_guidance();
            if (e.CommandName == "del")
            {

                opl.delete_guidance(Convert.ToInt32(GridView1.Rows[i].Cells[2].Text));
                grid_data();

            }
            if (e.CommandName == "upd")
            {
                Response.Redirect("upd_guidance.aspx?a=" + GridView1.Rows[i].Cells[2].Text);


            }
        }
    }
}
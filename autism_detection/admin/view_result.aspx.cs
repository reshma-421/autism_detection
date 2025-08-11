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
    public partial class WebForm19 : System.Web.UI.Page
    {
        db_connection cn=new db_connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            grid_data();
        }
        void grid_data()
        {
           
            cn.cmd = new SqlCommand("select * from result", cn.connect());
            cn.dr = cn.cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Columns.Add("r_id");
            dt.Columns.Add("Mark");
            dt.Columns.Add("Date");
            dt.Columns.Add("Time");
            dt.Columns.Add("patient");
            dt.Columns.Add("Total mark");
            dt.Columns.Add("category");
           
            int cont = 1;
            while (cn.dr.Read())
            {
                DataRow row = dt.NewRow();
                row["r_id"] = cn.dr["r_id"];
                row["Mark"] = cn.dr["mark"];
                row["Date"] = cn.dr["date"];
                row["Time"] = cn.dr["time"];
                row["Patient"] = cn.dr["p_id"];
                row["Total mark"] = cn.dr["total_mark"];
                row["category"]=cn.dr["category"];
                dt.Rows.Add(row);
                cont++;



            }
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int i = Convert.ToInt32(e.CommandArgument);
            op_result opl = new op_result();
            if (e.CommandName == "del")
            {
                
                opl.delete_result(Convert.ToInt32(GridView1.Rows[i].Cells[3].Text));
                grid_data();

            }
            if (e.CommandName == "upd")
            {
                Response.Redirect("upd_result.aspx?a=" + GridView1.Rows[i].Cells[3].Text);


            }

            if (e.CommandName == "viewMore")
            {


                //Response.Redirect("../admin/view_rslt_details.aspx");
                

                //string r_id = GridView1.Rows[i].Cells[3].Text;
                Response.Redirect($"view_rslt_details.aspx?a=" + GridView1.Rows[i].Cells[3].Text);
                //Response.Redirect("view_rslt_details.aspx?a=r_id");
            }
        }
    }
}
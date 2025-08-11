using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using autism_detection.DB_conn;
using System.Data;
using BLL_autism.operations;
using DAL_autism.entities;
namespace autism_detection.admin
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        db_connection cn= new db_connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            grid_data();
        }
        void grid_data()
        {
            //cn.da = new SqlDataAdapter("select * from doctor", cn.connect());
            //DataTable dt = new DataTable();
            //cn.da.Fill(dt);
            //GridView1.DataSource = dt;
            //GridView1.DataBind();
            cn.cmd = new SqlCommand("select * from doctor", cn.connect());
            cn.dr = cn.cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Columns.Add("#");
            dt.Columns.Add("Name");
            dt.Columns.Add("Category");
            dt.Columns.Add("Specification");
            dt.Columns.Add("Image");
            dt.Columns.Add("Phone");
            //dt.Columns.Add("guid");
            dt.Columns.Add("Email");
            dt.Columns.Add("Hospital");

            int cont = 1;
            while (cn.dr.Read())
            {
                DataRow row = dt.NewRow();
                row["#"] = cn.dr["d_id"];
                row["Name"] = cn.dr["d_name"];
                row["Category"] = cn.dr["category"];
                row["Specification"] = cn.dr["speci"];
                row["Image"] = cn.dr["image"];
                row["Phone"] = cn.dr["phone"];
                //row["guid"] = cn.dr["g_id"];
                row["Email"] = cn.dr["email"];
                row["Hospital"] = cn.dr["ho_id"];
                dt.Rows.Add(row);
                cont++;
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }


        protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
        {

            int i = Convert.ToInt32(e.CommandArgument);
            op_doctor opl = new op_doctor();
            if (e.CommandName == "del")
            {

                opl.delete_doctor(Convert.ToInt32(GridView1.Rows[i].Cells[2].Text));
                grid_data();

            }
            if (e.CommandName =="upd")
            {
                Response.Redirect("upd_doctor.aspx?a="+ GridView1.Rows[i].Cells[2].Text);


            }
        }

       

      
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("add_doctor.aspx");
        }
    }
}
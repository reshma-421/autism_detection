using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using autism_detection.DB_conn;
using System.Collections;

namespace autism_detection.user
{
    public partial class WebForm22 : System.Web.UI.Page
    {
        db_connection cn=new db_connection();
        string i;
        string query;
        protected void Page_Load(object sender, EventArgs e)
        {
            //i = Request.QueryString[0];
            //grid_data();
            if (!IsPostBack)
            {
                i = Request.QueryString.Count > 0 ? Request.QueryString[0] : null;
                grid_data();
            }
        }
        void grid_data()
        {

            //cn.cmd = new SqlCommand("select * from doctor where ho_id='"+i+"'", cn.connect());
            //cn.dr = cn.cmd.ExecuteReader();
            if (!string.IsNullOrEmpty(i))
            {
                query = "SELECT * FROM doctor WHERE ho_id = @ho_id";
                cn.cmd = new SqlCommand(query, cn.connect());
                cn.cmd.Parameters.AddWithValue("@ho_id", i);

            }
            else
            {
                query = "SELECT * FROM doctor";
                cn.cmd = new SqlCommand(query, cn.connect());
            }
            cn.dr = cn.cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Columns.Add("#");
            dt.Columns.Add("Name");
            dt.Columns.Add("Category");
            dt.Columns.Add("Specification");
            dt.Columns.Add("Image");
            dt.Columns.Add("Phone");
            dt.Columns.Add("guid");
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
                row["guid"] = cn.dr["g_id"];
                row["Email"] = cn.dr["email"];
                row["Hospital"]=cn.dr["ho_id"];
                dt.Rows.Add(row);
                cont++;


            }
            rptautism.DataSource = dt;
            rptautism.DataBind();

        }
    }
}
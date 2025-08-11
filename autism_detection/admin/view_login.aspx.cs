using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using autism_detection.DB_conn;

namespace autism_detection.admin
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        db_connection cn= new db_connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            grid_data();

        }
        void grid_data()
        {
            //cn.da = new SqlDataAdapter("select * from login", cn.connect());
            //DataTable dt = new DataTable();
            //cn.da.Fill(dt);
            //GridView1.DataSource = dt;
            //GridView1.DataBind();
            cn.cmd = new SqlCommand("select * from login", cn.connect());
            cn.dr = cn.cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Columns.Add("#");
            dt.Columns.Add("Name");
            dt.Columns.Add("Password");
            dt.Columns.Add("Role");
           

            int cont = 1;
            while (cn.dr.Read())
            {
                DataRow row = dt.NewRow();
                row["#"] = cn.dr["log_id"];
                row["Name"] = cn.dr["uname"];
                row["Password"] = cn.dr["pwd"];
                row["Role"] = cn.dr["role"];
                
                dt.Rows.Add(row);
                cont++;



            }
            rptrautism.DataSource = dt;
            rptrautism.DataBind();

        }

       
       

       
    }
}
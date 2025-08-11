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
    public partial class WebForm19 : System.Web.UI.Page
    {
        string ab ;
        db_connection cn= new db_connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            ab = Session["uname"].ToString();
            grid_data();
        }
        void grid_data()
        {
            //cn.da = new SqlDataAdapter("select * from guidance", cn.connect());
            //DataTable dt = new DataTable();
            //cn.da.Fill(dt);
            //GridView1.DataSource = dt;
            //GridView1.DataBind();
            cn.cmd = new SqlCommand("select * from guidance where r_id=@r_id", cn.connect());
            cn.cmd.Parameters.AddWithValue("@r_id",ab);
            cn.dr = cn.cmd.ExecuteReader();
            DataTable dt = new DataTable();
            //dt.Columns.Add("#");
            dt.Columns.Add("Guidance");
            dt.Columns.Add("Username");

            int cont = 1;
            while (cn.dr.Read())
            {
                DataRow row = dt.NewRow();
                //row["#"] = cn.dr["g_id"];
                row["Guidance"] = cn.dr["guidance"];
                row["Username"] = cn.dr["r_id"];
                dt.Rows.Add(row);
                cont++;



            }
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

    }
}
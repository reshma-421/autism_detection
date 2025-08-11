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
    public partial class WebForm15 : System.Web.UI.Page
    {
        db_connection cn=new db_connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            grid_data();
        }
        void grid_data()
        {
            cn.da = new SqlDataAdapter("select * from history", cn.connect());
            DataTable dt = new DataTable();
            cn.da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }
}
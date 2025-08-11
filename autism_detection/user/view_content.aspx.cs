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
    public partial class WebForm27 : System.Web.UI.Page
    {
        db_connection cn=new db_connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            grid_data();
        }
        void grid_data()
        {

            cn.cmd = new SqlCommand("select * from e_contents", cn.connect());
            cn.dr = cn.cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Columns.Add("#");
            dt.Columns.Add("Content Name");
            dt.Columns.Add("Content");
            dt.Columns.Add("Description");

            int cont = 1;
            while (cn.dr.Read())
            {
                DataRow row = dt.NewRow();
                row["#"] = cn.dr["e_id"];
                row["Content Name"] = cn.dr["name"];
                row["Content"] = cn.dr["content"];
                row["Description"] = cn.dr["description"];
                dt.Rows.Add(row);
                cont++;


            }
            rptautism.DataSource = dt;
            rptautism.DataBind();

        }
    }
}
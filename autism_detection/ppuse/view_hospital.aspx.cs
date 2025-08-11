using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using autism_detection.DB_conn;

namespace autism_detection.ppuse
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        db_connection cn=new db_connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            grid_data();
        }
        void grid_data()
        {

            cn.cmd = new SqlCommand("select * from hospital", cn.connect());
            cn.dr = cn.cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Columns.Add("#");
            dt.Columns.Add("Name");
            dt.Columns.Add("Address");
            dt.Columns.Add("Image");
            dt.Columns.Add("Contact");
            dt.Columns.Add("diagnosis");

            int cont = 1;
            while (cn.dr.Read())
            {
                DataRow row = dt.NewRow();
                row["#"] = cn.dr["ho_id"];
                row["Name"] = cn.dr["h_name"];
                row["Address"] = cn.dr["address"];
                row["Image"] = cn.dr["image"];
                row["Contact"] = cn.dr["contact"];
                row["diagnosis"] = cn.dr["d_id"];
                dt.Rows.Add(row);
                cont++;



            }
            rptautism.DataSource = dt;
            rptautism.DataBind();

        }
    }
}
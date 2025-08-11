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
    public partial class WebForm6 : System.Web.UI.Page
    {
        db_connection cn= new db_connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            grid_data();
            grid_data1();
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
        void grid_data1()
        {
            cn.cmd = new SqlCommand("SELECT f.feedback, r.re_name FROM feedback f JOIN registration r ON f.p_id = r.unq_name", cn.connect());
            cn.dr = cn.cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Columns.Add("#");
            dt.Columns.Add("feedback");
            dt.Columns.Add("name");

            int cont = 1;
            while (cn.dr.Read())
            {
                DataRow row = dt.NewRow();
                row["#"] = cont;
                row["feedback"] = cn.dr["feedback"];
                row["name"] = cn.dr["re_name"];
                dt.Rows.Add(row);
                cont++;
            }
            cn.dr.Close(); // Important: Close the DataReader

            // If no data found, add a default message
            if (dt.Rows.Count == 0)
            {
                DataRow defaultRow = dt.NewRow();
                defaultRow["#"] = 1;
                defaultRow["feedback"] = "No feedback available yet. Be the first to share your experience!";
                defaultRow["name"] = "The Autism Detection Team";
                dt.Rows.Add(defaultRow);
            }

            rptautism2.DataSource = dt;
            rptautism2.DataBind();
        }
    }
}
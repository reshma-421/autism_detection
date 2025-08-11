using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using autism_detection.DB_conn;

namespace autism_detection.ppuse
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        db_connection cn = new db_connection();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grid_data();
            }
        }

        void grid_data()
        {
            cn.cmd = new SqlCommand("SELECT f.feedback, ISNULL(r.re_name, f.p_id) AS name, r.gender FROM feedback f LEFT JOIN registration r ON f.p_id = r.unq_name", cn.connect());

            cn.dr = cn.cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Columns.Add("Feedback");
            dt.Columns.Add("Username");
            dt.Columns.Add("Gender");

            while (cn.dr.Read())
            {
                DataRow row = dt.NewRow();
                row["Feedback"] = cn.dr["feedback"];
                row["Username"] = cn.dr["name"];
                row["Gender"] = cn.dr["gender"];
                dt.Rows.Add(row);
            }

            cn.dr.Close();

            rptautism.DataSource = dt;
            rptautism.DataBind();

            // Show or hide the no-data label
            lblNoData.Visible = dt.Rows.Count == 0;
        }



    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using autism_detection.DB_conn;

namespace autism_detection.user
{
    public partial class WebForm24 : System.Web.UI.Page
    {
        db_connection cn=new db_connection();
        string ab;
        protected void Page_Load(object sender, EventArgs e)
        {
            ab = Session["uname"].ToString();
            if (!IsPostBack)
            {
                cn.cmd = new SqlCommand("SELECT r.r_id, r.category, r.total_mark, r.p_id, r.mark,r.date,r.time , d.impression, d.diagnosis FROM  result r JOIN  diagnosis d ON r.r_id = d.r_id where r.p_id=@p_id order by d.di_id desc", cn.connect());
                cn.cmd.Parameters.AddWithValue("@p_id", ab);
                cn.dr = cn.cmd.ExecuteReader();
                if (cn.dr.Read())
                {
                    l_dia.Text = cn.dr.GetString(8);
                    l_un.Text= cn.dr.GetString(3);

                }
            }

            grid_data();

        }
        void grid_data()
        {

            cn.cmd = new SqlCommand("select * from doctor", cn.connect());
            cn.dr = cn.cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Columns.Add("Image");
            dt.Columns.Add("Name");
            dt.Columns.Add("Category");
            dt.Columns.Add("Specification");
            dt.Columns.Add("Hospital");
            dt.Columns.Add("Phone");
            dt.Columns.Add("Guid");
            dt.Columns.Add("Email");
          

            int cont = 1;
            while (cn.dr.Read())
            {
                DataRow row = dt.NewRow();
                row["Image"] = cn.dr["image"];
                row["Name"] = cn.dr["d_name"];
                row["Category"] = cn.dr["category"];
                row["Specification"] = cn.dr["speci"];
                row["Hospital"] = cn.dr["ho_id"];
                row["Phone"] = cn.dr["phone"];
                row["Guid"] = cn.dr["g_id"];
                row["Email"] = cn.dr["email"];
                dt.Rows.Add(row);
                cont++;



            }
            rptautism.DataSource = dt;
            rptautism.DataBind();

        }
    }
}
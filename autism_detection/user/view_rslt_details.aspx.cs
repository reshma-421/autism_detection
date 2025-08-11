using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using autism_detection.DB_conn;

namespace autism_detection.user
{
    public partial class WebForm22 : System.Web.UI.Page
    {
        db_connection cn = new db_connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            int ab = 6;
            if (!IsPostBack)
            {
                cn.cmd = new SqlCommand("SELECT  r.r_id, r.category, r.total_mark, r.p_id,r.mark , d.impression, d.diagnosis FROM result r JOIN diagnosis d ON r.r_id = d.r_id", cn.connect());
                cn.cmd.Parameters.AddWithValue("@r_id", ab);
                cn.dr = cn.cmd.ExecuteReader();
                if (cn.dr.Read())
                {

                    txt_r.Text = cn.dr[0].ToString();
                    l_cat.Text = cn.dr.GetString(1);
                    l_tmark.Text = cn.dr.GetString(2);
                    l_un.Text = cn.dr.GetString(3);
                    l_mark.Text = cn.dr.GetString(4);
                    txt_imp.Text = cn.dr.GetString(5);
                    txt_dia.Text = cn.dr.GetString(6);


                    int mark = Convert.ToInt32(l_mark.Text);
                    int totalMark = Convert.ToInt32(l_tmark.Text);
                    double percentage = (double)mark / totalMark * 100;
                    txt_per.Text = percentage.ToString("");






                }

            }
        }
    }
}
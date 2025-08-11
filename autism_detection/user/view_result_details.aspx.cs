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
    public partial class WebForm7 : System.Web.UI.Page
    {
        db_connection cn=new db_connection();
        protected void Page_Load(object sender, EventArgs e)
        {
           string ab = Session["uname"].ToString();
            //int ab = 6;
            if (!IsPostBack)
            {
                cn.cmd = new SqlCommand("SELECT r.r_id, r.category, r.total_mark, r.p_id, r.mark,r.date,r.time , d.impression, d.diagnosis FROM  result r JOIN  diagnosis d ON r.r_id = d.r_id where r.p_id=@p_id order by d.di_id desc", cn.connect());
                cn.cmd.Parameters.AddWithValue("@p_id", ab);
                cn.dr = cn.cmd.ExecuteReader();
                if (cn.dr.Read())
                {
                   
                    txt_r.Text = cn.dr[0].ToString();
                    l_cat.Text = cn.dr.GetString(1);
                    l_tmark.Text = cn.dr.GetString(2);
                    l_un.Text = cn.dr.GetString(3);
                    l_mark.Text = cn.dr.GetString(4);
                    l_test_date.Text = cn.dr.GetString(5);
                    l_test_time.Text = cn.dr.GetString(6);
                    txt_imp.Text = cn.dr.GetString(7);
                    txt_dia.Text = cn.dr.GetString(8);

                    int mark = Convert.ToInt32(l_mark.Text);
                    int totalMark = Convert.ToInt32(l_tmark.Text);
                    double percentage = (double)mark / totalMark * 100;
                    txt_per.Text = percentage.ToString("");

                    bool condition = percentage < 30;

                    txt_re.Visible = condition;

                    if (condition)
                    {
                        DateTime testDateTime = DateTime.Parse(l_test_date.Text);
                        DateTime futureDate = testDateTime.AddDays(20);
                        txt_re.Text = "Please retake your test on " + futureDate.ToString("dd-MM-yyyy");

                        // Compare futureDate with today's date
                        if (DateTime.Today >= futureDate)
                        {
                            Button2.Visible = true; // Show button
                        }
                        else
                        {
                            Button2.Visible = false; // Hide button
                        }
                    }
                    else
                    {
                        Button2.Visible = false;
                    }



                }

            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("patient_dashboard.aspx");
        }
    }
}


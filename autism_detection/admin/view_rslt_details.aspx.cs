using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using autism_detection.DB_conn;
using BLL_autism.operations;
using DAL_autism.entities;

namespace autism_detection.admin
{
    public partial class WebForm28 : System.Web.UI.Page
    {
        db_connection cn=new db_connection();
        int ab;
        protected void Page_Load(object sender, EventArgs e)
        {
            ab = Convert.ToInt32(Request.QueryString[0]);
           
            if (!IsPostBack)
            {
                cn.cmd = new SqlCommand("select * from result where r_id=@r_id", cn.connect()); 
                cn.cmd.Parameters.AddWithValue("@r_id", ab);
                cn.dr = cn.cmd.ExecuteReader();
                if (cn.dr.Read())
                {
                    //txt_r.Text = cn.dr.GetString(0);
                    txt_r.Text = cn.dr[0].ToString();
                    l_mark.Text = cn.dr.GetString(1);
                    l_un.Text = cn.dr.GetString(4);
                    l_tmark.Text = cn.dr.GetString(5);
                    l_cat.Text = cn.dr.GetString(6);
                    l_test_date.Text = cn.dr.GetString(2);
                    l_test_time.Text = cn.dr.GetString(3);

                    int mark =Convert.ToInt32(l_mark.Text);
                    int totalMark = Convert.ToInt32(l_tmark.Text);
                    double percentage = (double)mark / totalMark * 100;
                    txt_per.Text = percentage.ToString("f2");

                    if (percentage < 30)
                    {
                        txt_dia.Text = "On the basis of your given answers you are most likely to have Not Autistic";
                        txt_imp.Text = "Please Retake exam after some period";
                    }
                    else if (percentage >= 30 && percentage < 60)  
                    {
                        txt_dia.Text = "On the basis of your given answers you are most likely to have Level 1 Autism (Mild)";
                        txt_imp.Text = " You  Needs minimal support and are Able to live independently with some social support.";
                    }
                    else if (percentage >= 60 && percentage < 80)  
                    {
                        txt_dia.Text = "On the basis of your given answers you are most likely to have Level 2 Autism (Moderate)";
                        txt_imp.Text = "You may Need moderate support. Difficulties in social interactions and daily activities.";
                    }
                    else
                    {
                        txt_dia.Text = "On the basis of your given answers you are most likely to have Level 3 Autism (Severe)";
                        txt_imp.Text = " You may Need substantial support. Major challenges in communication and behavior.";
                    }


                    bool condition = percentage <30;

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
            et_diagnosis d=new et_diagnosis();
            d.diagnosis=txt_dia.Text;
            d.impression=txt_imp.Text;
            d.r_id=txt_r.Text;
            op_diagnosis op = new op_diagnosis();
            op.add_diagnosis(d);
            Response.Write("<script>alert('successfull');</script");
        }
    }
}
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
    public partial class WebForm3 : System.Web.UI.Page
    {
        db_connection cn=new db_connection();
        string ab ;

        protected void Page_Load(object sender, EventArgs e)
        {
            //ab = Convert.ToInt32(Request.QueryString[0]);
            ab = Session["uname"].ToString();
           
            if (!IsPostBack)
            {
                cn.cmd = new SqlCommand("select patient.height,patient.weight,registration.re_name,registration.age,registration.gender,registration.contact,registration.email,registration.unq_name from patient inner join  registration on patient.unq_name=registration.unq_name where patient.unq_name=@unq_name", cn.connect());
                cn.cmd.Parameters.AddWithValue("@unq_name", ab);
                cn.dr = cn.cmd.ExecuteReader();
                if (cn.dr.Read())
                {
                   
                    txt_height.Text = cn.dr.GetString(0);
                    l_nm.Text = cn.dr.GetString(2);
                    txt_name.Text = cn.dr.GetString(2);
                    txt_weight.Text = cn.dr.GetString(1);
                    txt_age.Text = cn.dr.GetString(3);
                    txt_gender.Text = cn.dr.GetString(4);
                    txt_ph.Text = cn.dr.GetString(5);
                    txt_email.Text = cn.dr.GetString(6);
                    l_un.Text = cn.dr.GetString(7);

                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("upd_profile.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using autism_detection.DB_conn;

namespace autism_detection.ppuse
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        db_connection cn=new db_connection();
        string ab;
        protected void Page_Load(object sender, EventArgs e)
        {
            ab = Session["uname"].ToString();

            if (!IsPostBack)
            {
                cn.cmd = new SqlCommand("select patient.height,patient.weight,registration.re_name,registration.age,registration.gender,registration.contact,registration.email,registration.unq_name from patient inner join registration on patient.unq_name=registration.unq_name where patient.unq_name=@unq_name", cn.connect());
                cn.cmd.Parameters.AddWithValue("@unq_name", ab);
                cn.dr = cn.cmd.ExecuteReader();
                if (cn.dr.Read())
                {
                    l_hei.Text = cn.dr.GetString(0);
                    l_wei.Text = cn.dr.GetString(1);
                    l_nm.Text = cn.dr.GetString(2);
                    l_age.Text = cn.dr.GetString(3);
                    l_gndr.Text = cn.dr.GetString(4);
                    l_ph.Text = cn.dr.GetString(5);
                    l_em.Text = cn.dr.GetString(6);
                    l_un.Text = cn.dr.GetString(7);

                    // Set profile image based on gender
                    string gender = cn.dr.GetString(4).ToLower();
                    pro.ImageUrl = gender == "male" ? "assets/img/team/male.jpg" : "assets/img/team/female.jpg";
                }
                cn.dr.Close(); // Close the data reader
            }
        }
    }
}
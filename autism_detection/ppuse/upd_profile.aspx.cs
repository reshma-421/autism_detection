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

namespace autism_detection.ppuse
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        string ab;
        db_connection cn=new db_connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            ab = Session["uname"].ToString();


            if (!IsPostBack)
            {
                cn.cmd = new SqlCommand("select patient.height,patient.weight,registration.re_name,registration.age,registration.gender,registration.contact,registration.email,registration.unq_name from patient inner join  registration on patient.unq_name=registration.unq_name where patient.unq_name=@unq_name", cn.connect());
                cn.cmd.Parameters.AddWithValue("@unq_name", ab);
                cn.dr = cn.cmd.ExecuteReader();
                if (cn.dr.Read())
                {
                    txt_hei.Text = cn.dr.GetString(0);
                    txt_wei.Text = cn.dr.GetString(1);
                    txt_nm.Text = cn.dr.GetString(2);
                    txt_age.Text = cn.dr.GetString(3);
                    txt_gndr.Text = cn.dr.GetString(4);
                    txt_ph.Text = cn.dr.GetString(5);
                    txt_em.Text = cn.dr.GetString(6);
                    txt_un.Text = cn.dr.GetString(7);

                    string gender = cn.dr.GetString(4).ToLower();
                    pro.ImageUrl = gender == "male" ? "assets/img/team/male.jpg" : "assets/img/team/female.jpg";


                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            et_registration re = new et_registration();
            re.gender = txt_gndr.Text;
            re.email = txt_em.Text;
            re.contact = txt_ph.Text;
            re.age = txt_age.Text;
            re.re_name = txt_nm.Text;
            op_register op = new op_register();
            op.upd_register(re, ab);
            et_patient p = new et_patient();
            p.height = txt_hei.Text;
            p.weight = txt_wei.Text;
            op_patient opl = new op_patient();
            opl.edit_patient(p, ab);
            Response.Redirect("view_profile.aspx");
        }
    }
}
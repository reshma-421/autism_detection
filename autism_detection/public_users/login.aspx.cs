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

namespace autism_detection.public_users
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        db_connection cn = new db_connection();

        protected void Button1_Click(object sender, EventArgs e)
        {
            //et_login l = new et_login();
            //l.uname = txt_uname.Text;
            //l.pwd = txt_pass.Text;
            //op_login op = new op_login();
            //op.login_insert(l);
            //Response.Write("<script>alert('clicked');</script>");

            string role;
            cn.cmd = new SqlCommand("select * from login where uname=@uname and pwd=@pass", cn.connect());
            cn.cmd.Parameters.AddWithValue("@uname", txt_uname.Text);
            cn.cmd.Parameters.AddWithValue("@pass", txt_pass.Text);
            SqlDataReader rdr = cn.cmd.ExecuteReader();
            if (rdr.Read())
            {


                Session["uname"] = txt_uname.Text;
              

                role = rdr.GetString(3);

                if (role == "admin")
                {
                    Response.Redirect("../admin/admin_dashboard.aspx");
                }
                else if (role == "user")
                {
                    //cn.cmd = new SqlCommand("select pat_name from patient where puname=@pname", cn.connect());
                    //cn.cmd.Parameters.AddWithValue("@pname", txt_uname.Text);
                    //string pname = cn.cmd.ExecuteScalar().ToString();
                    //Session["pname"] = pname;
                    Response.Redirect("../ppuse/index2.aspx");

                }
                else if (role == "doctor")
                {
                    Response.Redirect("../Doctor/View_patient_appoint.aspx");
                }
                else
                {
                    //Response.Redirect("Login.aspx");
                    Response.Write("<script>alert('No user exist');</script>");
                }
            }
            else
            {
                // Response.Redirect("Login.aspx");
                Response.Write("<script>alert('Error in login details. please check it');</script>");
            }
        }
    }
}
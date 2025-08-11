using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL_autism.operations;
using DAL_autism.entities;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using autism_detection.DB_conn;

namespace autism_detection.public_users
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        db_connection cn=new db_connection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //avoid email repeatation

            //SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM registration WHERE email = @Email",cn.connect() );
            //cmd.Parameters.AddWithValue("@Email", txt_email.Text.Trim());
            //int count = (int)cmd.ExecuteScalar();
            

            //if (count > 0)
            //{
            //    Response.Write("<script>alert('This email is already registered.');</script>");
            //    return;
            //}



            // uniqu code creation

            string pname = txt_name.Text;
            string phno = txt_contact.Text;
            string uname = pname.Substring(0, 3) + phno.Substring(6, 3);
           


            //registration section

            et_registration r = new et_registration();
            r.re_name = txt_name.Text;
            r.age = txt_age.Text;
            r.gender = rdbt_g.Text;
            r.contact = txt_contact.Text;
            r.email = txt_email.Text;
            r.unq_name = uname;
            op_register op = new op_register();
            op.add_register(r);


            et_patient etp=new et_patient();
            etp.weight = "0";
            etp.height = "0";
            etp.unq_name = uname;



            //login section
            et_login l = new et_login();
            l.pwd = txt_pass.Text;
            l.uname=uname;
            l.role = "user";
            op_login opl = new op_login();
            opl.login_insert(l);


            //Mailing


            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("cloudservicemail@gmail.com");
            msg.To.Add(txt_email.Text);
            msg.Subject = "Autism Account Creation Mail";
            msg.Body = "You are successfully completed registration proccess.your login details are <br/>";
            msg.Body += "<h3>Username : " + uname + "<br/> Password :" + txt_pass.Text + "</h3>";



            SmtpClient smt = new SmtpClient();
            smt.Host = "smtp.gmail.com";
            System.Net.NetworkCredential ntwd = new NetworkCredential();
            ntwd.UserName = "cloudservicemail@gmail.com";
            ntwd.Password = "ffhaydgnffvbjplk";
            smt.UseDefaultCredentials = false;
            smt.Credentials = ntwd;
            smt.Port = 587;
            smt.EnableSsl = true;
            smt.Send(msg);


            Response.Write("<script>alert('registration successfull');</script");
        }
    }
}
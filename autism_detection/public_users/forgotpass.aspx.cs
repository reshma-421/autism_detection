using System;
using System.Data.SqlClient;
using System.Web.UI;
using autism_detection.DB_conn;

namespace autism_detection.public_users
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        db_connection cn = new db_connection();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ResetForm();
            }
        }

        protected void btnVerifyEmail_Click(object sender, EventArgs e)
        {
            string email = txt_em.Text.Trim();

            cn.cmd = new SqlCommand("SELECT COUNT(*) FROM registration WHERE email = @Email", cn.connect());
            cn.cmd.Parameters.AddWithValue("@Email", email);
            int count = (int)cn.cmd.ExecuteScalar();

            if (count > 0)
            {
                Session["UserEmail"] = email;

                // Proceed to reset password
                emailSection.Visible = false;
                passwordSection.Visible = true;
                confirmPassSection.Visible = true;
                btnVerifyEmail.Visible = false;
                btnResetPassword.Visible = true;
            }
            else
            {
                Response.Write("<script>alert('Email not found.');</script>");
            }
        }

        protected void btnResetPassword_Click(object sender, EventArgs e)
        {
            if (Session["UserEmail"] == null)
            {
                Response.Write("<script>alert('Session expired. Please try again.');</script>");
                ResetForm();
                return;
            }

            if (txt_newPass.Text != txt_confirmPass.Text)
            {
                Response.Write("<script>alert('Passwords do not match.');</script>");
                return;
            }

            string email = Session["UserEmail"].ToString();
            string newPassword = txt_newPass.Text;

            try
            {
                cn.cmd = new SqlCommand("SELECT unq_name FROM registration WHERE email = @Email", cn.connect());
                cn.cmd.Parameters.AddWithValue("@Email", email);
                string username = cn.cmd.ExecuteScalar()?.ToString();

                if (!string.IsNullOrEmpty(username))
                {
                    cn.cmd = new SqlCommand("UPDATE login SET pwd = @Password WHERE uname = @Username", cn.connect());
                    cn.cmd.Parameters.AddWithValue("@Password", newPassword);
                    cn.cmd.Parameters.AddWithValue("@Username", username);
                    int rowsAffected = cn.cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        Response.Write("<script>alert('Password reset successfully. Please login.'); window.location='login.aspx';</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Failed to reset password.');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('User not found.');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message.Replace("'", "") + "');</script>");
            }
            finally
            {
                ResetForm();
                Session.Remove("UserEmail");
            }
        }

        private void ResetForm()
        {
            txt_em.Text = "";
            txt_newPass.Text = "";
            txt_confirmPass.Text = "";
            emailSection.Visible = true;
            passwordSection.Visible = false;
            confirmPassSection.Visible = false;
            btnVerifyEmail.Visible = true;
            btnResetPassword.Visible = false;
        }
    }
}

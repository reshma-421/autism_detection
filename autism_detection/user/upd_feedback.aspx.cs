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

namespace autism_detection.user
{
    public partial class WebForm17 : System.Web.UI.Page
    {
        db_connection cn = new db_connection();
        string ab;
        protected void Page_Load(object sender, EventArgs e)
        {
            ab = Session["uname"].ToString();
            if (!IsPostBack)
            {
                cn.cmd = new SqlCommand("select * from feedback where p_id=@p_id", cn.connect());
                cn.cmd.Parameters.AddWithValue("@p_id", ab);
                cn.dr = cn.cmd.ExecuteReader();
                if (cn.dr.Read())
                {
                   
                    txt_fd.Text = cn.dr.GetString(1);
                    txt_p.Text= cn.dr.GetValue(2).ToString();


                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            et_feedback q = new et_feedback();
            q.feedback = txt_fd.Text;
            q.p_id= txt_p.Text;
          
            op_feedback op = new op_feedback();
            op.upd_feedback(q, ab);
            Response.Redirect("view_feedback.aspx");
        }
    }
}
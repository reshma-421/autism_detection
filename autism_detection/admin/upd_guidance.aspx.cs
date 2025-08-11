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
    public partial class WebForm18 : System.Web.UI.Page
    {

        db_connection cn = new db_connection();
        int ab = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            ab = Convert.ToInt32(Request.QueryString[0]);
            if (!IsPostBack)
            {
                cn.cmd = new SqlCommand("select * from guidance where g_id=@g_id", cn.connect());
                cn.cmd.Parameters.AddWithValue("@g_id", ab);
                cn.dr = cn.cmd.ExecuteReader();
                if (cn.dr.Read())
                {
                    txt_guid.Text = cn.dr.GetString(1);
                    txt_rid.Text = cn.dr.GetValue(2).ToString();
                   

                }
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            et_guidance guidance = new et_guidance();
            guidance.guidance=txt_guid.Text;
            guidance.r_id=txt_rid.Text;    
            op_guidance op=new op_guidance();
            op.upd_guidance(guidance,ab);
            Response.Redirect("view_guidance.aspx");
        }
    }
}
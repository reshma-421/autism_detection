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
    public partial class WebForm16 : System.Web.UI.Page
    {
        db_connection cn = new db_connection();
        int ab = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            ab = Convert.ToInt32(Request.QueryString[0]);
            if (!IsPostBack)
            {
                cn.cmd = new SqlCommand("select * from activity where a_id=@a_id", cn.connect());
                cn.cmd.Parameters.AddWithValue("@a_id", ab);
                cn.dr = cn.cmd.ExecuteReader();
                if (cn.dr.Read())
                {
                    txt_an.Text = cn.dr.GetString(1);
                    txt_des.Text = cn.dr.GetString(2);
                    txt_hnt.Text = cn.dr.GetString(3);
                    
                   
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            
            et_activity a= new et_activity();
            a.a_name=txt_an.Text;
            a.a_desc = txt_des.Text;
            a.hint=txt_hnt.Text;
            op_activity op= new op_activity();
            op.upd_activitty(a, ab);
            Response.Redirect("view_activity.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("view_activity.aspx" );
        }
    }
}
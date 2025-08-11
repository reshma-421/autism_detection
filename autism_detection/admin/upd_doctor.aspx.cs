using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using autism_detection.DB_conn;
using System.Data.SqlClient;
using DAL_autism.entities;
using BLL_autism.operations;

namespace autism_detection.admin
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        db_connection cn=new db_connection();
        int ab = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            ab = Convert.ToInt32(Request.QueryString[0]);
            if(!IsPostBack)
            {
                cn.cmd = new SqlCommand("select * from doctor where d_id=@d_id", cn.connect());
                cn.cmd.Parameters.AddWithValue("@d_id",ab);
                cn.dr=cn.cmd.ExecuteReader();
                if(cn.dr.Read())
                {
                    txt_n.Text = cn.dr.GetString(1);
                    txt_cat.Text = cn.dr.GetString(2);
                    txt_speci.Text = cn.dr.GetString(3);
                    txt_ph.Text = cn.dr.GetString(5);
                    txt_g.Text = cn.dr.GetValue(6).ToString();
                    txt_em.Text = cn.dr.GetValue(7).ToString();
                    txt_ho.Text=cn.dr.GetString(8);
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            et_doctor el= new et_doctor();
            el.d_name=txt_n.Text;
            el.category= txt_cat.Text;
            el.speci=txt_speci.Text;
            el.phone=txt_ph.Text;
            el.g_id=txt_g.Text;
            el.email=txt_em.Text;
            el.ho_id=txt_ho.Text;
            op_doctor op=new op_doctor();
            op.upd_doctor(el,ab);
            Response.Redirect("view_doctor.aspx");




        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("view_doctor.aspx");
        }
    }
}
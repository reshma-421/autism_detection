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
    public partial class WebForm10 : System.Web.UI.Page
    {

        db_connection cn = new db_connection();
        int ab = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            ab = Convert.ToInt32(Request.QueryString[0]);
            if (!IsPostBack)
            {
                cn.cmd = new SqlCommand("select * from hospital where ho_id=@ho_id", cn.connect());
                cn.cmd.Parameters.AddWithValue("@ho_id", ab);
                cn.dr = cn.cmd.ExecuteReader();
                if (cn.dr.Read())
                {
                    txt_name.Text = cn.dr.GetString(1);
                    txt_add.Text = cn.dr.GetString(2);
                    //himg.FileName = cn.dr.GetString(3);
                    txt_ph.Text = cn.dr.GetString(4);
                    txt_di_id.Text = cn.dr.GetValue(5).ToString();

                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            
                et_hospital el = new et_hospital();
                el.h_name = txt_name.Text;
                el.address = txt_add.Text;
                el.contact = txt_ph.Text;
                el.d_id = txt_di_id.Text;
                //el.image = himg.FileName.ToString();
                op_hospital op = new op_hospital();
                op.upd_hospital(el, ab);
                Response.Redirect("view_hospital.aspx");



            
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("view_hospital.aspx");
        }
    }
}
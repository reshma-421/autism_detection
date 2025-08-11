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
    public partial class WebForm29 : System.Web.UI.Page
    {
        db_connection cn=new db_connection();
       
        int ab = 0;
        protected void Page_Load(object sender, EventArgs e)
        {


            ab = Convert.ToInt32(Request.QueryString[0]);
            if (!IsPostBack)
            {
                cn.cmd = new SqlCommand("select * from result where r_id=@r_id", cn.connect());
                cn.cmd.Parameters.AddWithValue("@r_id", ab);
                cn.dr = cn.cmd.ExecuteReader();
                if (cn.dr.Read())
                {
                    txt_mrk.Text = cn.dr.GetString(1);
                    txt_dt.Text = cn.dr.GetString(2);
                   
                    txt_tm.Text = cn.dr.GetString(3);
                    //txt_di_id.Text = cn.dr.GetValue(5).ToString();
                    txt_pid.Text = cn.dr.GetString(4);
                    txt_tmark.Text = cn.dr.GetString(5);
                    txt_cat.Text = cn.dr.GetString(6);

                }
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            et_result r = new et_result();
            r.mark=txt_mrk.Text;
            r.date=txt_dt.Text;
            r.time=txt_tm.Text;
            r.p_id = txt_pid.Text;
            r.total_mark = txt_tmark.Text;
            r.category = txt_cat.Text;   
            op_result op = new op_result();
            op.upd_result(r, ab);
            Response.Redirect("view_result.aspx");
        }
    }
}
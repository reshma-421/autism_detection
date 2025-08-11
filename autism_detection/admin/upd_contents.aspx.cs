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
    public partial class WebForm22 : System.Web.UI.Page
    {
        db_connection cn = new db_connection();
        int ab = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            ab = Convert.ToInt32(Request.QueryString[0]);
            if (!IsPostBack)
            {
                cn.cmd = new SqlCommand("select * from e_contents where e_id=@e_id", cn.connect());
                cn.cmd.Parameters.AddWithValue("@e_id", ab);
                cn.dr = cn.cmd.ExecuteReader();
                if (cn.dr.Read())
                {
                    txt_n.Text=cn.dr.GetString(1);
                    txt_con.Text = cn.dr.GetString(2);
                    txt_desc.Text = cn.dr.GetString(3);
                    
                     
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            et_education ed= new et_education();
            ed.name =txt_n.Text;
            ed.content=txt_con.Text;
            ed.description =txt_desc.Text;
            
            op_e_contents op=new op_e_contents();
            op.upd_contents(ed, ab);
            Response.Redirect("view_contents.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("view_contents.aspx");
        }
    }
}
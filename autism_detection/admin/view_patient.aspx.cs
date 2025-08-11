using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using autism_detection.DB_conn;
using BLL_autism.operations;
using DAL_autism.entities;

namespace autism_detection.admin
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        db_connection cn=new db_connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            grid_data();
        }
        void grid_data()
        {
            //cn.da = new SqlDataAdapter("select * from patient", cn.connect());
            //DataTable dt = new DataTable();
            //cn.da.Fill(dt);
            //GridView1.DataSource = dt;
            //GridView1.DataBind();
            cn.cmd = new SqlCommand("select patient.height,patient.weight,registration.re_name,registration.age,registration.gender,registration.contact,registration.email,registration.unq_name from patient inner join  registration on patient.unq_name=registration.unq_name", cn.connect());
            cn.dr = cn.cmd.ExecuteReader();
            DataTable dt = new DataTable();
            //dt.Columns.Add("#");
           
            dt.Columns.Add("Name");
            dt.Columns.Add("Username");
            dt.Columns.Add("Height");
            dt.Columns.Add("Weight");
            dt.Columns.Add("Age");
            dt.Columns.Add("Gender");
            dt.Columns.Add("Contact");
            dt.Columns.Add("Email");
           
        
            int cont = 1;
            while (cn.dr.Read())
            {
                DataRow row = dt.NewRow();
                //row["#"] = cn.dr["p_id"];
                row["Name"] = cn.dr["re_name"];
                row["Username"] = cn.dr["unq_name"];
                row["Height"] = cn.dr["height"];
                row["Weight"] = cn.dr["weight"];
                row["Age"] = cn.dr["age"];
                row["Gender"] = cn.dr["gender"];
                row["Contact"] = cn.dr["contact"];
                row["Email"] = cn.dr["email"];
                
                
                dt.Rows.Add(row);
                cont++;



            }
            rptrautism.DataSource = dt;
            rptrautism.DataBind();

        }
    }
}
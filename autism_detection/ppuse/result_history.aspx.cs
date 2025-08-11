using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using autism_detection.DB_conn;

namespace autism_detection.ppuse
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        string ab;
        db_connection cn=new db_connection();
        protected void Page_Load(object sender, EventArgs e)
        {
             ab = Session["uname"].ToString();
            grid_data();
            
        }
        void grid_data()
        {
            cn.cmd = new SqlCommand(@" WITH RankedResults AS (  SELECT 
                                               
                                                    r.category, 
                                                    r.p_id, 
                                                    r.mark, 
                                                    r.date, 
                                                    r.time, 
                                                    d.diagnosis, 
                                                    reg.re_name ,
                                                    ROW_NUMBER() OVER (
                                                        PARTITION BY r.category 
                                                        ORDER BY d.di_id DESC
                                                    ) AS rn
                                                FROM result r
                                                JOIN diagnosis d ON r.r_id = d.r_id
                                                JOIN registration reg ON r.p_id = reg.unq_name
                                                WHERE r.p_id = @p_id
                                            )
                                            SELECT * FROM RankedResults WHERE rn = 1", cn.connect()
            );
            cn.cmd.Parameters.AddWithValue("@p_id", ab);
            cn.dr = cn.cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Columns.Add("#");
            dt.Columns.Add("cat");
            dt.Columns.Add("mark");
            dt.Columns.Add("date");
            dt.Columns.Add("time");
            dt.Columns.Add("diagnosis");
            dt.Columns.Add("name");

            int cont = 1;
            while (cn.dr.Read())
            {
                DataRow row = dt.NewRow();
                
                row["cat"] = cn.dr["category"];
                row["mark"] = cn.dr["mark"];
                row["date"] = cn.dr["date"];
                row["time"] = cn.dr["time"];
                row["diagnosis"] = cn.dr["diagnosis"];
                row["name"] = cn.dr["re_name"];
                dt.Rows.Add(row);
                cont++;



            }
            rptautism.DataSource = dt;
            rptautism.DataBind();
        }
        
    }

}
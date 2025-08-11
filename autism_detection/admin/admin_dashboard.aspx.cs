using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using autism_detection.DB_conn;

namespace autism_detection.admin
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        db_connection cn =new db_connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grid_data();
                grid_data1();
                hos();
                feed();
                LoadTopCategories();
                LoadGenderStats();

            }
        }
        void grid_data()
        {

            cn.cmd = new SqlCommand("SELECT TOP 4 * FROM doctor", cn.connect());
            cn.dr = cn.cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Columns.Add("#");
            dt.Columns.Add("Name");
            dt.Columns.Add("Category");
            dt.Columns.Add("Speci");
            dt.Columns.Add("Image");
            dt.Columns.Add("Phone");
            dt.Columns.Add("Email");
            dt.Columns.Add("Hospital");

            int cont = 1;
            while (cn.dr.Read())
            {
                DataRow row = dt.NewRow();
                row["#"] = cn.dr["ho_id"];
                row["Name"] = cn.dr["d_name"];
                row["Category"] = cn.dr["category"];
                row["Speci"] = cn.dr["speci"];
                row["Image"] = cn.dr["image"];
                row["Phone"] = cn.dr["phone"];
                row["Email"] = cn.dr["email"];
                row["Hospital"] = cn.dr["ho_id"];
                dt.Rows.Add(row);
                cont++;



            }
            rptautism.DataSource = dt;
            rptautism.DataBind();

        }
        void grid_data1()
        {

            cn.cmd = new SqlCommand("select TOP 5 patient.height,patient.weight,registration.re_name,registration.age,registration.gender,registration.contact,registration.email,registration.unq_name from patient inner join  registration on patient.unq_name=registration.unq_name", cn.connect());
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
            rptrautism1.DataSource = dt;
            rptrautism1.DataBind();

        }
        void hos()
        {

            cn.cmd = new SqlCommand("select top 4 * from hospital", cn.connect());
            cn.dr = cn.cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Columns.Add("#");
            dt.Columns.Add("Name");
            dt.Columns.Add("Address");
            dt.Columns.Add("Image");
            dt.Columns.Add("Contact");
            dt.Columns.Add("diagnosis");

            int cont = 1;
            while (cn.dr.Read())
            {
                DataRow row = dt.NewRow();
                row["#"] = cn.dr["ho_id"];
                row["Name"] = cn.dr["h_name"];
                row["Address"] = cn.dr["address"];
                row["Image"] = cn.dr["image"];
                row["Contact"] = cn.dr["contact"];
                row["diagnosis"] = cn.dr["d_id"];
                dt.Rows.Add(row);
                cont++;



            }
            rptautism2.DataSource = dt;
            rptautism2.DataBind();
        }
        void feed()
        {

            cn.cmd = new SqlCommand("select * from feedback", cn.connect());
            cn.dr = cn.cmd.ExecuteReader();
            DataTable dt = new DataTable();
            //dt.Columns.Add("#");
            dt.Columns.Add("Feedback");
            dt.Columns.Add("Username");

            int cont = 1;
            while (cn.dr.Read())
            {
                DataRow row = dt.NewRow();
                //row["#"] = cn.dr["f_id"];
                row["Feedback"] = cn.dr["feedback"];
                row["Username"] = cn.dr["p_id"];
                dt.Rows.Add(row);
                cont++;



            }
            rptautism3.DataSource = dt;
            rptautism3.DataBind();

        }
        void LoadTopCategories()
        {
            cn.cmd = new SqlCommand("SELECT category, COUNT(*) as count FROM result WHERE category IS NOT NULL AND category <> '' GROUP BY category ORDER BY count DESC", cn.connect());
            cn.dr = cn.cmd.ExecuteReader();

            DataTable dt = new DataTable();
            dt.Columns.Add("Category");
            dt.Columns.Add("Percentage");

            // Optional: Calculate total for percentage
            List<KeyValuePair<string, int>> categoryCounts = new List<KeyValuePair<string, int>>();
            int total = 0;

            while (cn.dr.Read())
            {
                string category = cn.dr["category"].ToString();
                int count = Convert.ToInt32(cn.dr["count"]);
                total += count;
                categoryCounts.Add(new KeyValuePair<string, int>(category, count));
            }

            foreach (var item in categoryCounts)
            {
                DataRow row = dt.NewRow();
                row["Category"] = item.Key;
                double percent = (double)item.Value / total * 100;
                row["Percentage"] = percent.ToString("0.##") + "%";
                dt.Rows.Add(row);
            }

            rptTopCategories.DataSource = dt;
            rptTopCategories.DataBind();
        }
        void LoadGenderStats()
        {
            cn.cmd = new SqlCommand(@"
        SELECT 
            LOWER(LTRIM(RTRIM(reg.gender))) as gender, 
            COUNT(*) as count 
        FROM result r
        INNER JOIN registration reg ON r.p_id = reg.unq_name
        WHERE reg.gender IS NOT NULL AND reg.gender <> ''
        GROUP BY LOWER(LTRIM(RTRIM(reg.gender)))", cn.connect());

            cn.dr = cn.cmd.ExecuteReader();

            int maleCount = 0;
            int femaleCount = 0;
            int total = 0;

            while (cn.dr.Read())
            {
                string gender = cn.dr["gender"].ToString().Trim().ToLower();
                int count = Convert.ToInt32(cn.dr["count"]);
                total += count;

                if (gender == "male")
                    maleCount = count;
                else if (gender == "female")
                    femaleCount = count;
            }
            cn.dr.Close();

            double malePercent = total > 0 ? (maleCount * 100.0 / total) : 0;
            double femalePercent = total > 0 ? (femaleCount * 100.0 / total) : 0;

            lblMale.Text = $"{malePercent:0.#}%";
            lblFemale.Text = $"{femalePercent:0.#}%";
        }




    }
}
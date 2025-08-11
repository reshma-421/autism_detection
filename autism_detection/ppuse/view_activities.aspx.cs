using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using autism_detection.DB_conn;

namespace autism_detection.ppuse
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        db_connection cn=new db_connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            grid_data();
        }
        void grid_data()
        {

            cn.cmd = new SqlCommand("select * from activity", cn.connect());
            cn.dr = cn.cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Columns.Add("#");
            dt.Columns.Add("Activity name");
            dt.Columns.Add("Details");
            dt.Columns.Add("Hint");

            int cont = 1;
            while (cn.dr.Read())
            {
                DataRow row = dt.NewRow();
                row["#"] = cn.dr["a_id"];
                row["Activity name"] = cn.dr["a_name"];
                row["Details"] = cn.dr["a_desc"];
                row["Hint"] = cn.dr["hint"];
                dt.Rows.Add(row);
                cont++;


            }
            rptautism.DataSource = dt;
            rptautism.DataBind();

        }

       
        public string getYouTubeThumbnail(string YoutubeUrl)
        {
            string youTubeThumb = string.Empty;
            if (YoutubeUrl == "")
                return "";

            if (YoutubeUrl.IndexOf("=") > 0)
            {
                youTubeThumb = YoutubeUrl.Split('=')[1];
            }
            else if (YoutubeUrl.IndexOf("/v/") > 0)
            {
                string strVideoCode = YoutubeUrl.Substring(YoutubeUrl.IndexOf("/v/") + 3);
                int ind = strVideoCode.IndexOf("?");
                youTubeThumb = strVideoCode.Substring(0, ind == -1 ? strVideoCode.Length : ind);
            }
            else if (YoutubeUrl.IndexOf('/') < 6)
            {
                youTubeThumb = YoutubeUrl.Split('/')[3];
            }
            else if (YoutubeUrl.IndexOf('/') > 6)
            {
                youTubeThumb = YoutubeUrl.Split('/')[1];
            }

            return "http://img.youtube.com/vi/" + youTubeThumb + "/mqdefault.jpg";
        }
        private string LimitedChar(string s)
        {
            string Limitedwords = string.Empty;
            string[] words = s.Split();
            int wordCount = words.Length;
            if (wordCount > 20)
            {
                return Limitedwords = string.Join(" ", words.Take(10)) + "....";
            }
            else
            {
                return Limitedwords = s;
            }
        }

    }
}
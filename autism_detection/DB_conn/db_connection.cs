using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


namespace autism_detection.DB_conn
{
    public class db_connection
    {
        public SqlConnection conn;
        public SqlCommand cmd;
        public SqlDataReader dr;
        public SqlDataAdapter da;

        public SqlConnection connect()
        {
            conn = new SqlConnection(@"Data Source=DESKTOP-I1PE2TE;Initial Catalog=autism_detection;Integrated Security=True;");
            conn.Open();
            return conn;
        }
    }

}
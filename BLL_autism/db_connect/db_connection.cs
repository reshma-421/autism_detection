using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL_autism.DB_conn
{
    internal class db_connection
    {
        public SqlConnection conn;
        public SqlCommand cmd;
        public SqlConnection connect()
        {
            conn = new SqlConnection(@"Data Source=DESKTOP-I1PE2TE;Initial Catalog=autism_detection;Integrated Security=True;");
            conn.Open();
            return conn;
        }
    }
}

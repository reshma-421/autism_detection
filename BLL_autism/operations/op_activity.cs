using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BLL_autism.DB_conn;
using DAL_autism.entities;
using System.Security.Cryptography;

namespace BLL_autism.operations
{
    public class op_activity
    {
        db_connection cn = new db_connection();
        public void add_activity(et_activity etn)
        {
            cn.cmd = new SqlCommand("sp_activity", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@a_name", etn.a_name);
            cn.cmd.Parameters.AddWithValue("@a_desc", etn.a_desc);
            cn.cmd.Parameters.AddWithValue("@hint", etn.hint);
            cn.cmd.Parameters.AddWithValue("@flag", 1);
            cn.cmd.Parameters.AddWithValue("@a_id", 1);
            cn.cmd.ExecuteNonQuery();

        }
        public void delete_activity(int did)
        {
            cn.cmd = new SqlCommand("sp_activity", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@a_name", "");
            cn.cmd.Parameters.AddWithValue("@a_desc", "");
            cn.cmd.Parameters.AddWithValue("@hint", "");
            cn.cmd.Parameters.AddWithValue("@flag", 3);
            cn.cmd.Parameters.AddWithValue("@a_id", did);
            cn.cmd.ExecuteNonQuery();
        }
        public void upd_activitty(et_activity etn, int id)
        {
            cn.cmd = new SqlCommand("sp_activity", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@a_name", etn.a_name);
            cn.cmd.Parameters.AddWithValue("@a_desc", etn.a_desc);
            cn.cmd.Parameters.AddWithValue("@hint", etn.hint);
            cn.cmd.Parameters.AddWithValue("@flag", 4);
            cn.cmd.Parameters.AddWithValue("@a_id", id);
            cn.cmd.ExecuteNonQuery();
        }
        public void select_activity(int id)
        {
            cn.cmd = new SqlCommand("sp_activity", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@a_name", "");
            cn.cmd.Parameters.AddWithValue("@a_desc", "");
            cn.cmd.Parameters.AddWithValue("@hint", "");
            cn.cmd.Parameters.AddWithValue("@flag", 2);
            cn.cmd.Parameters.AddWithValue("@a_id", id);
            cn.cmd.ExecuteNonQuery();

        }
    }
}

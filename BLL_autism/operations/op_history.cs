using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BLL_autism.DB_conn;
using DAL_autism.entities;

namespace BLL_autism.operations
{
    public class op_history
    {
        db_connection cn = new db_connection();
        public void add_activity(et_history etn)
        {
            cn.cmd = new SqlCommand("sp_history", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@date", etn.date);
            cn.cmd.Parameters.AddWithValue("@time", etn.time);
            cn.cmd.Parameters.AddWithValue("@di_id", etn.di_id);
            cn.cmd.Parameters.AddWithValue("@flag", 1);
            cn.cmd.Parameters.AddWithValue("@his_id", 1);
            cn.cmd.ExecuteNonQuery();

        }
        public void delete_activity(int did)
        {
            cn.cmd = new SqlCommand("sp_history", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@date", "");
            cn.cmd.Parameters.AddWithValue("@time", "");
            cn.cmd.Parameters.AddWithValue("@di_id", "");
            cn.cmd.Parameters.AddWithValue("@flag", 3);
            cn.cmd.Parameters.AddWithValue("@his_id", did);
            cn.cmd.ExecuteNonQuery();
        }
       
        public void select_activity(int id)
        {
            cn.cmd = new SqlCommand("sp_history", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@date", "");
            cn.cmd.Parameters.AddWithValue("@time", "");
            cn.cmd.Parameters.AddWithValue("@di_id", "");
            cn.cmd.Parameters.AddWithValue("@flag", 2);
            cn.cmd.Parameters.AddWithValue("@his_id", id);
            cn.cmd.ExecuteNonQuery();

        }
    }
}

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
    public class op_feedback
    {
        db_connection cn = new db_connection();
        public void add_feedback(et_feedback etn)
        {
            cn.cmd = new SqlCommand("sp_feedback", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@feedback", etn.feedback);
            cn.cmd.Parameters.AddWithValue("@p_id", etn.p_id);
            cn.cmd.Parameters.AddWithValue("@flag", 1);
            cn.cmd.Parameters.AddWithValue("@f_id", 1);
            cn.cmd.ExecuteNonQuery();

        }
        public void delete_feedback(int did)
        {
            cn.cmd = new SqlCommand("sp_feedback", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@feedback", "");
            cn.cmd.Parameters.AddWithValue("@p_id", "");
            cn.cmd.Parameters.AddWithValue("@flag", 3);
            cn.cmd.Parameters.AddWithValue("@f_id", did);
            cn.cmd.ExecuteNonQuery();
        }
        public void upd_feedback(et_feedback etn, string id)
        {
            cn.cmd = new SqlCommand("sp_feedback", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@f_id", id);
            cn.cmd.Parameters.AddWithValue("@feedback", etn.feedback);
            cn.cmd.Parameters.AddWithValue("@p_id", etn.p_id);
            cn.cmd.Parameters.AddWithValue("@flag", 4);
            
            cn.cmd.ExecuteNonQuery();
        }
        public void select_feedback(int id)
        {
            cn.cmd = new SqlCommand("sp_feedback", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@feedback", "");
            cn.cmd.Parameters.AddWithValue("@p_id", "");
            cn.cmd.Parameters.AddWithValue("@flag", 2);
            cn.cmd.Parameters.AddWithValue("@f_id", id);
            cn.cmd.ExecuteNonQuery();

        }
    }
}

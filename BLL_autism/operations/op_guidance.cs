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
    public class op_guidance
    {

        db_connection cn = new db_connection();
        public void add_guidance(et_guidance etn)
        {
            cn.cmd = new SqlCommand("sp_guidance", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@guidance", etn.guidance);
            cn.cmd.Parameters.AddWithValue("@r_id", etn.r_id);
            cn.cmd.Parameters.AddWithValue("@flag", 1);
            cn.cmd.Parameters.AddWithValue("@g_id", 1);
            cn.cmd.ExecuteNonQuery();

        }
        public void delete_guidance(int did)
        {
            cn.cmd = new SqlCommand("sp_guidance", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@guidance", "");
            cn.cmd.Parameters.AddWithValue("@r_id", "");
            cn.cmd.Parameters.AddWithValue("@flag", 3);
            cn.cmd.Parameters.AddWithValue("@g_id", did);
            cn.cmd.ExecuteNonQuery();
        }
        public void upd_guidance(et_guidance etn, int id)
        {
            cn.cmd = new SqlCommand("sp_guidance", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@guidance", etn.guidance);
            cn.cmd.Parameters.AddWithValue("@r_id", etn.r_id);
            cn.cmd.Parameters.AddWithValue("@flag", 4);
            cn.cmd.Parameters.AddWithValue("@g_id", id);
            cn.cmd.ExecuteNonQuery();
        }
        public void select_guidance(int id)
        {
            cn.cmd = new SqlCommand("sp_guidance", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@guidance", "");
            cn.cmd.Parameters.AddWithValue("@r_id", "");
            cn.cmd.Parameters.AddWithValue("@flag", 2);
            cn.cmd.Parameters.AddWithValue("@g_id", id);
            cn.cmd.ExecuteNonQuery();

        }
    }
}

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
    public class op_result
    {
        db_connection cn = new db_connection();
        public void add_result(et_result etn)
        {
            cn.cmd = new SqlCommand("sp_result", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@mark", etn.mark);
            cn.cmd.Parameters.AddWithValue("@date", etn.date);
            cn.cmd.Parameters.AddWithValue("@time", etn.time);
            cn.cmd.Parameters.AddWithValue("@p_id", etn.p_id);
            cn.cmd.Parameters.AddWithValue("@tmark",etn.total_mark);
            cn.cmd.Parameters.AddWithValue("@cat", etn.category);
            
            cn.cmd.Parameters.AddWithValue("@flag", 1);
            cn.cmd.Parameters.AddWithValue("@r_id", 1);
            cn.cmd.ExecuteNonQuery();

        }
        public void delete_result(int did)
        {
            cn.cmd = new SqlCommand("sp_result", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@mark", "");
            cn.cmd.Parameters.AddWithValue("@date", "");
            cn.cmd.Parameters.AddWithValue("@time", "");
            cn.cmd.Parameters.AddWithValue("@p_id", "");
            cn.cmd.Parameters.AddWithValue("@tmark", "");
            cn.cmd.Parameters.AddWithValue("@cat","");
            cn.cmd.Parameters.AddWithValue("@flag", 3);
            cn.cmd.Parameters.AddWithValue("@r_id", did);
            cn.cmd.ExecuteNonQuery();
        }
        public void upd_result(et_result etn, int id)
        {
            cn.cmd = new SqlCommand("sp_result", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@mark", etn.mark);
            cn.cmd.Parameters.AddWithValue("@date", etn.date);
            cn.cmd.Parameters.AddWithValue("@time", etn.time);
            cn.cmd.Parameters.AddWithValue("@p_id", etn.p_id);
            cn.cmd.Parameters.AddWithValue("@tmark", etn.total_mark);
            cn.cmd.Parameters.AddWithValue("@cat", etn.category);
            cn.cmd.Parameters.AddWithValue("@flag", 4);
            cn.cmd.Parameters.AddWithValue("@r_id", id);
            cn.cmd.ExecuteNonQuery();
        }
        public void select_result(int id)
        {
            cn.cmd = new SqlCommand("sp_result", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@mark", "");
            cn.cmd.Parameters.AddWithValue("@date", "");
            cn.cmd.Parameters.AddWithValue("@time", "");
            cn.cmd.Parameters.AddWithValue("@p_id", "");
            cn.cmd.Parameters.AddWithValue("@tmark", "");
            cn.cmd.Parameters.AddWithValue("@cat", "");
            cn.cmd.Parameters.AddWithValue("@dia", "");
            cn.cmd.Parameters.AddWithValue("@flag", 2);
            cn.cmd.Parameters.AddWithValue("@d_id", id);
            cn.cmd.ExecuteNonQuery();

        }

        public void view_result(int id)
        {
            cn.cmd = new SqlCommand("sp_result", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@mark", "");
            cn.cmd.Parameters.AddWithValue("@date", "");
            cn.cmd.Parameters.AddWithValue("@time", "");
            cn.cmd.Parameters.AddWithValue("@d_id", "");
            cn.cmd.Parameters.AddWithValue("@tmark", "");
            cn.cmd.Parameters.AddWithValue("@cat", "");
            cn.cmd.Parameters.AddWithValue("@dia", "");
            cn.cmd.Parameters.AddWithValue("@flag", 5);
            cn.cmd.Parameters.AddWithValue("@p_id", id);
            cn.cmd.ExecuteNonQuery();

        }
    }
}

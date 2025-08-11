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
    public class op_response
    {

        db_connection cn = new db_connection();
        public void add_response(et_response etn)
        {
            cn.cmd = new SqlCommand("sp_response", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@p_answe", etn.p_answer);
            cn.cmd.Parameters.AddWithValue("@q_id", etn.q_id);
            cn.cmd.Parameters.AddWithValue("@flag", 1);
            cn.cmd.Parameters.AddWithValue("@res_id", 1);
            cn.cmd.ExecuteNonQuery();

        }
        public void delete_response(int did)
        {
            cn.cmd = new SqlCommand("sp_response", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@p_answer", "");
            cn.cmd.Parameters.AddWithValue("@q_id", "");
            cn.cmd.Parameters.AddWithValue("@flag", 3);
            cn.cmd.Parameters.AddWithValue("@res_id", did);
            cn.cmd.ExecuteNonQuery();
        }
        //public void upd_response(et_response etn, int id)
        //{
        //    cn.cmd = new SqlCommand("sp_response", cn.connect());
        //    cn.cmd.Parameters.AddWithValue("@p_answe", etn.p_answer);
        //    cn.cmd.Parameters.AddWithValue("@q_id", etn.q_id);
        //    cn.cmd.Parameters.AddWithValue("@flag", 4);
        //    cn.cmd.Parameters.AddWithValue("@res_id", id);
        //    cn.cmd.ExecuteNonQuery();
        //}
        //public void select_response(int id)
        //{
        //    cn.cmd = new SqlCommand("sp_response", cn.connect());
        //    cn.cmd.CommandType = CommandType.StoredProcedure;
        //    cn.cmd.Parameters.AddWithValue("@p_answer", "");
        //    cn.cmd.Parameters.AddWithValue("@q_id", "");
        //    cn.cmd.Parameters.AddWithValue("@flag", 2);
        //    cn.cmd.Parameters.AddWithValue("@res_id", id);
        //    cn.cmd.ExecuteNonQuery();

        //}
    }
}

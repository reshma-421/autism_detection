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
    public class op_question
    {
        db_connection cn = new db_connection();
        public void add_question(et_question etn)
        {
            cn.cmd = new SqlCommand("sp_question", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@q_no", etn.q_no);
            cn.cmd.Parameters.AddWithValue("@category", etn.category);
            cn.cmd.Parameters.AddWithValue("@q_answer", etn.q_answer);
            cn.cmd.Parameters.AddWithValue("@question", etn.question);
            cn.cmd.Parameters.AddWithValue("@option1", etn.option1);
            cn.cmd.Parameters.AddWithValue("@option2",etn.option2);
            cn.cmd.Parameters.AddWithValue("@flag", 1);
            cn.cmd.Parameters.AddWithValue("@q_id", 1);
            cn.cmd.ExecuteNonQuery();

        }
        public void delete_question(int did)
        {
            cn.cmd = new SqlCommand("sp_question", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@q_no", "");
            cn.cmd.Parameters.AddWithValue("@category", "");
            cn.cmd.Parameters.AddWithValue("@q_answer", "");
            cn.cmd.Parameters.AddWithValue("@question", "");
            cn.cmd.Parameters.AddWithValue("@option1", "");
            cn.cmd.Parameters.AddWithValue("@option2", "");
            cn.cmd.Parameters.AddWithValue("@flag", 3);
            cn.cmd.Parameters.AddWithValue("@q_id", did);
            cn.cmd.ExecuteNonQuery();
        }
        public void upd_question(et_question etn, int id)
        {
            cn.cmd = new SqlCommand("sp_question", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@q_id", id);
            cn.cmd.Parameters.AddWithValue("@q_no", etn.q_no);
            cn.cmd.Parameters.AddWithValue("@category", etn.category);
            cn.cmd.Parameters.AddWithValue("@q_answer", etn.q_answer);
            cn.cmd.Parameters.AddWithValue("@question", etn.question);
            cn.cmd.Parameters.AddWithValue("@option1", etn.option1);
            cn.cmd.Parameters.AddWithValue("@option2", etn.option2);
            cn.cmd.Parameters.AddWithValue("@flag", 4);
           
            cn.cmd.ExecuteNonQuery();
        }
        public void select_question(int id)
        {
            cn.cmd = new SqlCommand("sp_question", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@q_no", "");
            cn.cmd.Parameters.AddWithValue("@category", "");
            cn.cmd.Parameters.AddWithValue("@q_answer", "");
            cn.cmd.Parameters.AddWithValue("@question", "");
            cn.cmd.Parameters.AddWithValue("@option1", "");
            cn.cmd.Parameters.AddWithValue("@option2", "");
            cn.cmd.Parameters.AddWithValue("@flag", 2);
            cn.cmd.Parameters.AddWithValue("@q_id", id);
            cn.cmd.ExecuteNonQuery();

        }
    }
}

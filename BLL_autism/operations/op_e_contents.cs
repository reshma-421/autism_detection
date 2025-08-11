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
    public class op_e_contents
    {
        db_connection cn = new db_connection();
        public void add_contents(et_education etn)
        {
            cn.cmd = new SqlCommand("sp_e_contents", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@name", etn.name);
            cn.cmd.Parameters.AddWithValue("@content", etn.content);
            cn.cmd.Parameters.AddWithValue("@description", etn.description);
            cn.cmd.Parameters.AddWithValue("@flag", 1);
            cn.cmd.Parameters.AddWithValue("@e_id", 1);
            cn.cmd.ExecuteNonQuery();

        }
        public void delete_contents(int did)
        {
            cn.cmd = new SqlCommand("sp_e_contents", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@name", "");
            cn.cmd.Parameters.AddWithValue("@content", "");
            cn.cmd.Parameters.AddWithValue("@description", "");
            cn.cmd.Parameters.AddWithValue("@flag", 3);
            cn.cmd.Parameters.AddWithValue("@e_id", did);
            cn.cmd.ExecuteNonQuery();
        }
        public void upd_contents(et_education etn, int id)
        {
            cn.cmd = new SqlCommand("sp_e_contents", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@name", etn.name);
            cn.cmd.Parameters.AddWithValue("@content", etn.content);
            cn.cmd.Parameters.AddWithValue("@description", etn.description);
            cn.cmd.Parameters.AddWithValue("@flag", 4);
            cn.cmd.Parameters.AddWithValue("@e_id", id);
            cn.cmd.ExecuteNonQuery();
        }
        public void select_contects(int id)
        {
            cn.cmd = new SqlCommand("sp_e_contents", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@name", "");
            cn.cmd.Parameters.AddWithValue("@content", "");
            cn.cmd.Parameters.AddWithValue("@description", "");
            cn.cmd.Parameters.AddWithValue("@flag", 2);
            cn.cmd.Parameters.AddWithValue("@e_id", id);
            cn.cmd.ExecuteNonQuery();

        }
    }
}

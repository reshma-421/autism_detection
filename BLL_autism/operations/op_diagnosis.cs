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
    public class op_diagnosis
    {
        db_connection cn = new db_connection();
        public void add_diagnosis(et_diagnosis etn)
        {
            cn.cmd = new SqlCommand("sp_diagnosis", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@diagnosis", etn.diagnosis);
            cn.cmd.Parameters.AddWithValue("@impression", etn.impression);
            cn.cmd.Parameters.AddWithValue("@r_id", etn.r_id);
            cn.cmd.Parameters.AddWithValue("@flag", 1);
            cn.cmd.Parameters.AddWithValue("@di_id", 1);
            cn.cmd.ExecuteNonQuery();

        }
        public void delete_diagnosis(int did)
        {
            cn.cmd = new SqlCommand("sp_diagnosis", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@diagnosis", "");
            cn.cmd.Parameters.AddWithValue("@impression", "");
            cn.cmd.Parameters.AddWithValue("@r_id", "");
            cn.cmd.Parameters.AddWithValue("@flag", 3);
            cn.cmd.Parameters.AddWithValue("@di_id", did);
            cn.cmd.ExecuteNonQuery();
        }
        public void upd_diagnosis(et_diagnosis etn, int id)
        {
            cn.cmd = new SqlCommand("sp_diagnosis", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@diagnosis", etn.diagnosis);
            cn.cmd.Parameters.AddWithValue("@impression", etn.impression);
            cn.cmd.Parameters.AddWithValue("@r_id", etn.r_id);
            cn.cmd.Parameters.AddWithValue("@flag", 4);
            cn.cmd.Parameters.AddWithValue("@di_id", id);
            cn.cmd.ExecuteNonQuery();
        }
        public void select_activity(int id)
        {
            cn.cmd = new SqlCommand("SP_doctor2", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@diagnosis", "");
            cn.cmd.Parameters.AddWithValue("@impression", "");
            cn.cmd.Parameters.AddWithValue("@r_id", "");
            cn.cmd.Parameters.AddWithValue("@flag", 2);
            cn.cmd.Parameters.AddWithValue("@di_id", id);
            cn.cmd.ExecuteNonQuery();

        }
    }
}

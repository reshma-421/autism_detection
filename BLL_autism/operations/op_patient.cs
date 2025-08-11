using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using DAL_autism.entities;
using BLL_autism.DB_conn;
using System.Data;
using static System.Net.WebRequestMethods;

namespace BLL_autism.operations
{
    public class op_patient
    {
        db_connection cn= new db_connection();
        public void add_patient(et_patient etp)
        {
            cn.cmd=new SqlCommand("sp_patient",cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@p_id", 1);
            
            //cn.cmd.Parameters.AddWithValue("@log_id",etp.log_id);
            cn.cmd.Parameters.AddWithValue("@unq_name", etp.unq_name);
            cn.cmd.Parameters.AddWithValue("@height",etp.height);
            cn.cmd.Parameters.AddWithValue("@weight",etp.weight);
            cn.cmd.Parameters.AddWithValue("@flag", 1);
            cn.cmd.ExecuteNonQuery();
        }
        public void edit_patient(et_patient etp, string id)
        {
            cn.cmd = new SqlCommand("sp_patient", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@p_id", "");
            //cn.cmd.Parameters.AddWithValue("@log_id", "");
            cn.cmd.Parameters.AddWithValue("@unq_name", id);
            cn.cmd.Parameters.AddWithValue("@height", etp.height);
            cn.cmd.Parameters.AddWithValue("@weight", etp.weight);
            cn.cmd.Parameters.AddWithValue("@flag", 4);
            cn.cmd.ExecuteNonQuery();

        }
        public void delete_patent(int did)
        {
           
            cn.cmd = new SqlCommand("sp_patient", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@p_id", did);
           
            //cn.cmd.Parameters.AddWithValue("@log_id", "");
            cn.cmd.Parameters.AddWithValue("@unq_name", "");
            cn.cmd.Parameters.AddWithValue("@height", "");
            cn.cmd.Parameters.AddWithValue("@flag", 3);
            cn.cmd.ExecuteNonQuery();

        }
    }
}

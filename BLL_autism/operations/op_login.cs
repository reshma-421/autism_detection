using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using DAL_autism.entities;
using BLL_autism.DB_conn;
using System.Data;

namespace BLL_autism.operations
{
    
    public class op_login
    {
        db_connection cn=new db_connection();
        public void login_insert(et_login etn)
        {
            cn.cmd = new SqlCommand("sp_login", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@uname",etn.uname);
            cn.cmd.Parameters.AddWithValue("@pwd", etn.pwd);
            cn.cmd.Parameters.AddWithValue("@flag", 1);
            cn.cmd.Parameters.AddWithValue("@log_id", 2);
            cn.cmd.Parameters.AddWithValue("@role", etn.role);
            cn.cmd.ExecuteNonQuery();
        }
        public void select_login(int id)
        {
            cn.cmd = new SqlCommand("sp_login", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@uname", "");
            cn.cmd.Parameters.AddWithValue("@pwd", "");
            cn.cmd.Parameters.AddWithValue("@flag", 2);
            cn.cmd.Parameters.AddWithValue("@log_id", id);
            cn.cmd.ExecuteNonQuery();

        }

    }
}

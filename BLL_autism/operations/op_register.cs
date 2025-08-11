using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BLL_autism.DB_conn;
using System.Data.SqlClient;
using DAL_autism.entities;
using System.Data;

namespace BLL_autism.operations
{
    public class op_register
    {
        db_connection cn=new db_connection();
        public void add_register(et_registration etn)
        {
            cn.cmd = new SqlCommand("sp_registration", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@re_name", etn.re_name);
            cn.cmd.Parameters.AddWithValue("@age", etn.age);
            cn.cmd.Parameters.AddWithValue("@gender", etn.gender);
            cn.cmd.Parameters.AddWithValue("@contact", etn.contact);
            cn.cmd.Parameters.AddWithValue("@email", etn.email);
            cn.cmd.Parameters.AddWithValue("@unq_name", etn.unq_name);
            cn.cmd.Parameters.AddWithValue("@flag", 1);
            cn.cmd.Parameters.AddWithValue("@re_id",2);
            cn.cmd.ExecuteNonQuery();

        }

       

        public void upd_register(et_registration etn, string  di)
        {
            cn.cmd = new SqlCommand("sp_registration", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@re_id", "");
            cn.cmd.Parameters.AddWithValue("@re_name", etn.re_name);
            cn.cmd.Parameters.AddWithValue("@age", etn.age);
            cn.cmd.Parameters.AddWithValue("@gender", etn.gender);
            cn.cmd.Parameters.AddWithValue("@contact", etn.contact);
            cn.cmd.Parameters.AddWithValue("@email", etn.email);
            cn.cmd.Parameters.AddWithValue("@unq_name",di );
            cn.cmd.Parameters.AddWithValue("@flag", 4);
           
            cn.cmd.ExecuteNonQuery();

        }
    }
}

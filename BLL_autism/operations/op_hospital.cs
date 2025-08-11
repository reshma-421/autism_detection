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
    public class op_hospital
    {
        db_connection cn = new db_connection();
        public void add_hospital(et_hospital etn)
        {
            cn.cmd = new SqlCommand("sp_hospital", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@ho_id", 1);
            cn.cmd.Parameters.AddWithValue("@h_name", etn.h_name);
            cn.cmd.Parameters.AddWithValue("@address", etn.address);
            cn.cmd.Parameters.AddWithValue("@image", etn.image);
            cn.cmd.Parameters.AddWithValue("@contact", etn.contact);
            cn.cmd.Parameters.AddWithValue("@d_id", etn.d_id);
            cn.cmd.Parameters.AddWithValue("@flag", 1);
           
            cn.cmd.ExecuteNonQuery();

        }
        public void delete_hospital(int did)
        {
            cn.cmd = new SqlCommand("sp_hospital", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@h_name", "");
            cn.cmd.Parameters.AddWithValue("@address", "");
            cn.cmd.Parameters.AddWithValue("@image", "");
            cn.cmd.Parameters.AddWithValue("@contact", "");
            cn.cmd.Parameters.AddWithValue("@d_id", "");
            cn.cmd.Parameters.AddWithValue("@flag", 3);
            cn.cmd.Parameters.AddWithValue("@ho_id", did);
            cn.cmd.ExecuteNonQuery();
        }
        public void upd_hospital(et_hospital etn, int id)
        {
            cn.cmd = new SqlCommand("sp_hospital", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@h_name", etn.h_name);
            cn.cmd.Parameters.AddWithValue("@address", etn.address);
            cn.cmd.Parameters.AddWithValue("@image", "");
            cn.cmd.Parameters.AddWithValue("@contact", etn.contact);
            cn.cmd.Parameters.AddWithValue("@d_id", etn.d_id);
            cn.cmd.Parameters.AddWithValue("@flag", 4);
            cn.cmd.Parameters.AddWithValue("@ho_id", id);
            cn.cmd.ExecuteNonQuery();
        }
        public void select_hospital(int id)
        {
            cn.cmd = new SqlCommand("sp_hospital", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@h_name", "");
            cn.cmd.Parameters.AddWithValue("@address", "");
            cn.cmd.Parameters.AddWithValue("@image", "");
            cn.cmd.Parameters.AddWithValue("@contact", "");
            cn.cmd.Parameters.AddWithValue("@d_id", "");
            cn.cmd.Parameters.AddWithValue("@flag", 2);
            cn.cmd.Parameters.AddWithValue("@ho_id", id);
            cn.cmd.ExecuteNonQuery();

        }
    }
}

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
    public class op_doctor
    {
        db_connection cn = new db_connection();
        public void add_doctor(et_doctor etn)
        {
            cn.cmd = new SqlCommand("SP_doctor2", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@name", etn.d_name);
            cn.cmd.Parameters.AddWithValue("@cat", etn.category);
            cn.cmd.Parameters.AddWithValue("@speci", etn.speci);
            cn.cmd.Parameters.AddWithValue("@image", etn.image);

            cn.cmd.Parameters.AddWithValue("@ph", etn.phone);
            cn.cmd.Parameters.AddWithValue("@g", etn.g_id);
            cn.cmd.Parameters.AddWithValue("@email", etn.email);
            cn.cmd.Parameters.AddWithValue("@ho_id",etn.ho_id);
            cn.cmd.Parameters.AddWithValue("@flag", 1);
            cn.cmd.Parameters.AddWithValue("@d_id", 1);

            cn.cmd.ExecuteNonQuery();

        }
        public void delete_doctor(int did)
        {
            cn.cmd = new SqlCommand("SP_doctor2", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@d_id", did);
            cn.cmd.Parameters.AddWithValue("@name", "");
            cn.cmd.Parameters.AddWithValue("@cat", "");
            cn.cmd.Parameters.AddWithValue("@speci", "");
            cn.cmd.Parameters.AddWithValue("@image", "");
            cn.cmd.Parameters.AddWithValue("@ph", "");
            cn.cmd.Parameters.AddWithValue("@g", 1);
            cn.cmd.Parameters.AddWithValue("@email", "");
            cn.cmd.Parameters.AddWithValue("@ho_id", "");
            cn.cmd.Parameters.AddWithValue("@flag", 3);
           


            cn.cmd.ExecuteNonQuery();

        }
        public void upd_doctor(et_doctor etn, int di)
        {
            cn.cmd = new SqlCommand("SP_doctor2", cn.connect());
            cn.cmd.CommandType = CommandType.StoredProcedure;
            cn.cmd.Parameters.AddWithValue("@name", etn.d_name);
            cn.cmd.Parameters.AddWithValue("@cat", etn.category);
            cn.cmd.Parameters.AddWithValue("@speci", etn.speci);
            cn.cmd.Parameters.AddWithValue("@image", "");

            cn.cmd.Parameters.AddWithValue("@ph", etn.phone);
            cn.cmd.Parameters.AddWithValue("@g", etn.g_id);
            cn.cmd.Parameters.AddWithValue("@email", etn.email);
            cn.cmd.Parameters.AddWithValue("@ho_id", etn.ho_id);
            cn.cmd.Parameters.AddWithValue("@flag", 4);
            cn.cmd.Parameters.AddWithValue("@d_id", di);
            cn.cmd.ExecuteNonQuery();
        }




    }
}

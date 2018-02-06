using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace msp.Models
{
    public class DAO
    {

        string cnx = System.Configuration.ConfigurationManager.ConnectionStrings["MSP"].ConnectionString;

        public DataTable AbreTbl(string sql)
        {
            var cnsql = new SqlConnection(cnx);
            try
            {
                cnsql.Open();
                var dst = new DataSet();
                var adp = new SqlDataAdapter(sql, cnsql);
                adp.Fill(dst);
                return dst.Tables[0];
            }
            finally
            {
                cnsql.Close();
            }
        }

    }
}
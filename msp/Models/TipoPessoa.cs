using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace msp.Models
{
    public class TipoPessoa
    {

        public int GetCodigoPessoa()
        {
            var tbl = new DAO().AbreTbl("SELECT ISNULL(MAX(PES_ISN),0)+1 AS CODIGOCLI FROM PESSOA");
            return int.Parse(tbl.Rows[0][0].ToString());
        }

        
        public int GetCodigoTipoPessoa(string tipo)
        {
            var tbl = new DAO().AbreTbl(string.Format("SELECT ISNULL(MAX(PES_TIP_SEQ), 0) + 1 AS CODIGOCLITIPSEQ FROM PESSOA WHERE PES_TIP = '{0}'",tipo));
            return int.Parse(tbl.Rows[0][0].ToString());
        }

    }
}
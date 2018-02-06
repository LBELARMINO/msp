using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace msp.Models
{
    public class Listas
    {
        public Dictionary<int, string> ListaSimNao()
        {
            Dictionary<int, string> myDic = new Dictionary<int, string>();
            //myDic.Add(System.DBNull.Value.ToString(), "Selecione");
            myDic.Add(-1, "Selecione");
            myDic.Add(0, "Não");
            myDic.Add(1, "Sim");
            return myDic;
        }
        public Dictionary<string, string> ListaTipoPessoaChar()
        {
            Dictionary<string, string> myDic = new Dictionary<string, string>();
            myDic.Add("S", "Selecione");
            myDic.Add("F", "Física");
            myDic.Add("J", "Jurídica");
            return myDic;
        }
        public Dictionary<int, string> ListaTipoPessoaInt()
        {
            Dictionary<int, string> myDic = new Dictionary<int, string>();
            myDic.Add(-1, "Selecione");
            myDic.Add(0, "Física");
            myDic.Add(1, "Jurídica");
            return myDic;
        }
        public Dictionary<int, string> ListaPerfil()
        {
            Dictionary<int, string> myDic = new Dictionary<int, string>();
            //myDic.Add(System.DBNull.Value.ToString(), "Selecione");
            myDic.Add(-1, "Selecione");
            myDic.Add(9, "Master");
            myDic.Add(1, "Consulta");
            myDic.Add(2, "Setor");
            myDic.Add(3, "SubSetor");
            return myDic;
        }
    }
}
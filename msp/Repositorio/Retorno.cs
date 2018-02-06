using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace msp.Repositorio
{
    public class Retorno
    {
        public Retorno()
        {
            Codigo = -1;
            Mensagem = "Erro, sem retorno.";
        }
        public Retorno(string _msg)
        {
            Codigo = 1;
            Mensagem = _msg;
        }
        public Retorno(Exception _msg_erro)
        {
            Codigo = -1;
            Mensagem = "Erro, " + _msg_erro;
            MensagemErro = _msg_erro.InnerException.InnerException.Message;
        }
        public int Codigo { get; set; }
        public string Mensagem { get; set; }
        public string MensagemErro { get; set; }
        public void Erro(string _msg) => Mensagem = _msg; 
    }
}
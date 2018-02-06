using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using msp.Models;
using System.Data.Entity;

namespace msp.Repositorio
{
    public class Cliente
    {
        
        public Retorno Incluir(PESSOA pes)
        {
            var ctx = new BANCOMSPEntities();
            try
            {
                ctx.PESSOA.Add(pes);
                ctx.SaveChanges();
                return new Retorno("Cliente gravado com sucesso.");
            }
            catch (Exception erx)
            {
                return new Retorno(erx);
            }
        }

        public Retorno Alterar(PESSOA pes)
        {
            var ctx = new BANCOMSPEntities();
            try
            {
                ctx.Entry(pes).State = System.Data.EntityState.Modified;
                ctx.SaveChanges();
                return new Retorno("Cliente gravado com sucesso.");
            }
            catch (Exception erx)
            {
                return new Retorno(erx);
            }
        }

        public Retorno Excluir(int id)
        {
            var ctx = new BANCOMSPEntities();
            try
            {
                var pes = ctx.PESSOA.FirstOrDefault(p => p.PES_ISN == id);
                pes.PES_STS = "EXC";
                ctx.Entry(pes).State = System.Data.EntityState.Modified;
                ctx.SaveChanges();
                return new Retorno("Excluido.");
            }
            catch (Exception erx)
            {
                return new Retorno(erx);
            }
        }
       

        public List<PESSOA> ListarTodos()
        {
            var ctx = new BANCOMSPEntities();
            return ctx.PESSOA.Where(p => p.PES_STS.Contains("ATV")).ToList();
        }
        public PESSOA GetCliente(int id)
        {
            var ctx = new BANCOMSPEntities();
            return ctx.PESSOA.FirstOrDefault(p => p.PES_ISN == id);
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using msp.Models;
using msp.Repositorio;

namespace msp.Controllers
{
    public class ClienteController : Controller
    {
        static class PessoaTipo
        {
            public const string Cliente = "CLI";
            public const string Fornecedor = "FOR";
            public const string Funcionario = "FUN";
        }
        private BANCOMSPEntities db = new BANCOMSPEntities();
        //
        // GET: /Cliente/

        public ActionResult Index()
        {
            return View(new Cliente().ListarTodos());
        }
        public ActionResult Create(string pestip)
        {
            TempData["TipoPessoa"] = PesssoaTipo(pestip);
            CarregarListas();
            var pes = new PESSOA() { PES_TIP = pestip }; //TODO: Ja recebendo o Tipo de Pessoa nesse caso "CLI" para pessoa Cliente
            return View(pes);
        }
        [HttpPost]
        public ActionResult Create(PESSOA pes)
        {
            try
            {
                var ret = new Retorno();
                if (ModelState.IsValid)
                {
                    var ctx = new BANCOMSPEntities();
                    pes.PES_ISN = new TipoPessoa().GetCodigoPessoa();
                    pes.PES_TIP_SEQ = new TipoPessoa().GetCodigoTipoPessoa(pes.PES_TIP);
                    pes.PES_STS = "ATV";
                    //pes.PES_TIP_SEQ = new TipoPessoa().GetCodigoTipoPessoa("CLI");
                    //pes.PES_TIP = "CLI";
                    //ctx.PESSOA.Add(pes);
                    //ctx.SaveChanges();
                    ret = new Cliente().Incluir(pes);
                    TempData["Msg"] = ret.Mensagem;
                    return RedirectToAction("Index");
                }
                else
                {
                    TempData["Erro"] = ret.Mensagem;
                    //return View("Create", pes);
                    return RedirectToAction("Create", pes);
                }
            }
            catch(Exception erx)
            {
                TempData["Erro"] = erx.Message+" "+erx.InnerException.InnerException;
                return RedirectToAction("Create", pes);
            }
        }

        public ActionResult Listar()
        {
            var ctx = new BANCOMSPEntities();
            return View("Index", ctx.PESSOA.Where(p => p.PES_STS.Contains("ATV")).ToList());
        }

        public ActionResult Excluir(int id)
        {
            try
            {
                var ret = new Retorno();
                
                    ret = new Cliente().Excluir(id);
                    TempData["Msg"] = ret.Mensagem;
                    return RedirectToAction("Listar");
            }
            catch (Exception erx)
            {
                TempData["Erro"] = erx.Message + " " + erx.InnerException.InnerException;
                return RedirectToAction("Listar");
            }
        }
        //
        // GET: /Cliente/Create

        void CarregarListas()
        {
            ViewBag.ListaTipoPessoa = new Listas().ListaTipoPessoaChar();
            ViewBag.ListaEstadoCivil = new SelectList
              (
                   db.ESTADOCIVIL.ToList().OrderBy(x => x.ESC_DSC),
                   "ESC_ISN",
                   "ESC_DSC"
               );
            ViewBag.ListaReligiao = new SelectList
              (
                   db.RELIGIAO.ToList().OrderBy(x => x.REL_DSC),
                   "REL_ISN",
                   "REL_DSC"
               );
            ViewBag.ListaProfissao = new SelectList
              (
                   db.PROFISSAO.ToList().OrderBy(x => x.PRO_NOM),
                   "PRO_ISN",
                   "PRO_NOM"
               );
            ViewBag.ListaSexo = new SelectList
              (
                   db.SEXO.ToList().OrderBy(x => x.SEX_DSC),
                   "SEX_ISN",
                   "SEX_DSC"
               );
            ViewBag.EstadoCivil = new SelectList
              (
                   db.ESTADOCIVIL.ToList().OrderBy(x => x.ESC_DSC),
                   "ESC_ISN",
                   "ESC_DSC"
               );
            ViewBag.Religiao = new SelectList
             (
                  db.RELIGIAO.ToList().OrderBy(x => x.REL_DSC),
                  "REL_ISN",
                  "REL_DSC"
              );
            ViewBag.Profissao = new SelectList
            (
                 db.PROFISSAO.ToList().OrderBy(x => x.PRO_NOM),
                 "PRO_ISN",
                 "PRO_NOM"
             );
           
        }
        //
        // POST: /Cliente/Create

        string PesssoaTipo(string pestip)
        {
            if (pestip=="CLI") return "Cliente";
            return "NÃO DEFINIDA";
        }

        //
        // GET: /Cliente/Edit/5

        public ActionResult Edit(int id)
        {
            CarregarListas();
            return View(new Cliente().GetCliente(id));
        }

        //
        // POST: /Cliente/Edit/5

        [HttpPost]
        public ActionResult Edit(PESSOA pes)
        {
            try
            {
                var ret = new Retorno();
                if (ModelState.IsValid)
                {
                    var ctx = new BANCOMSPEntities();
                    ret = new Cliente().Alterar(pes);
                    TempData["Msg"] = ret.Mensagem;
                    return RedirectToAction("Index");
                }
                else
                {
                    TempData["Erro"] = ret.Mensagem;
                    //return View("Create", pes);
                    return RedirectToAction("Index");
                }
            }
            catch (Exception erx)
            {
                TempData["Erro"] = erx.Message + " " + erx.InnerException.InnerException;
                return RedirectToAction("Create", pes);
            }
        }

        //
        // GET: /Cliente/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Cliente/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}

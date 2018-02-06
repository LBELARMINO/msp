using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace msp.MeusHtmlHelpers
{
    public static class HtmlHelpers
    {
        public static MvcHtmlString CampoPadrao(this HtmlHelper helper, string id_nome, bool required = false, string placeholder = "")
        {
            string txt_html;
            if (required)
                txt_html = string.Format("<input type='text' id='{0}' name='{1}' class='form-control required' placeholder='{2}'/>", id_nome, id_nome, placeholder);
            else
                txt_html = string.Format("<input type='text' id='{0}' name='{1}' class='form-control' placeholder='{2}'/>", id_nome, id_nome, placeholder);

            return MvcHtmlString.Create(txt_html);
        }
        public static MvcHtmlString LinkVoltar(this HtmlHelper html, string idLink, string textoLink = "Voltar")
        {
            string strLink = String.Format("<a class='btn btn-default' id=\"{0}\" href=\"javascript:history.go(-1);\">{1}</a>", idLink, textoLink);
            return new MvcHtmlString(strLink);
        }
        public static MvcHtmlString CampoBotao(this HtmlHelper html, string idnome, string classicon, string nmclass = "form-control", string valor="")
        {
            string txthtml = "<label>Email</label><div class='input-group'><span class='input-group-addon' id='basic-{0}'><i class='{1}'></i></span>" +
                "<input id='{2}' name='{3}' class='{4}' value='{4}'/></div>";
            string strLink = String.Format(txthtml, idnome,classicon,idnome,idnome,nmclass,valor);
            return new MvcHtmlString(strLink);
        }

                        
                                
                                
    }
}
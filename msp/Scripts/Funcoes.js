function zero_esquerda(meucampo, size) {
    var campo = $("#" + meucampo.id);
    num = campo.val();
    var s = "0000000000" + num;
    var ret = s.substr(s.length - size);
    campo.val(ret);
}
function zeroesquerda(num, size) {
    var s = "0000000000" + num;
    return s.substr(s.length - size);
}
function FormataData(campo) {
    var data = $("#" + campo).val();
    data = data.substr(6, 2) + '/' + data.substr(4, 2) + '/' + data.substr(0, 4)
    $("#" + campo).val(data);
}
function FormataDataRef(campo) {
    var data = $("#" + campo).val();
    data = data.substr(4, 2) + '/' + data.substr(0, 4)
    $("#" + campo).val(data);
}

function exibirmsgmodal(msg) {
    $("#ModalAtencao").modal('show');
    $("#msgatencao").html(msg);
}

function exibirmsg(txtmsg) {
    $('#_msg').html("<i class='glyphicon glyphicon-ok'></i>&nbsp;" + txtmsg + "<button type='button' id='btnfechar' class='close' aria-label='Close'><span >&times;</span></button>").slideDown(1000);
    $('#btnfechar').click(function () {
        $('#_msg').slideUp(1000);
    });
}

function exibirmsgatencao(txtmsg) {
    $('#_msgatencao').html("<i class='glyphicon glyphicon-ok'></i>&nbsp;<strong>Atenção,&nbsp;</strong>" + txtmsg + "<button type='button' id='btnfecharatencao' class='close' aria-label='Close'><span >&times;</span></button>").slideDown(1000);
    $('#btnfecharatencao').click(function () {
        $('#_msgatencao').slideUp(1000);
    });
}
function exibirmsgatencao(txtmsg, campo) {
    var cmp = $('#' + campo);
    $('#_msgatencao').html("<i class='glyphicon glyphicon-ok'></i>&nbsp;<strong>Atenção,&nbsp;</strong>" + txtmsg + "<button type='button' id='btnfecharatencao' class='close' aria-label='Close'><span >&times;</span></button>").slideDown(1000);
      cmp.css('border-color', 'red');
    setTimeout(function () {
      cmp.css('border-color', '');
    }, 3000);
    
    $('#btnfecharatencao').click(function () {
        $('#_msgatencao').slideUp(1000);
        cmp.css('border-color', '');
    });
}

function selectobrigatorio(campo) {
    var cmp = $('#' + campo);
    cmp.css('border-color', 'red');
    setTimeout(function () {
        cmp.css('border-color', '');
    }, 3000);
}

function validar(campo, msg) {
    var cmp = $('#' + campo);
    
        $('form').submit(function () {
            if (cmp.val() == '') {
                cmp.after("<span class='msgvalida text-danger'><i class='fa fa-exclamation-circle'></i>&nbsp;" + msg + "</span>").slideDown(8800);
                //$('form').after("<div class='divcentro'><div class='row'>" + msg + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i id='btn_fechar' class='fa fa-close'></i></div></div>").slideDown(8800);
                cmp.css('border-color', 'red');
                setTimeout(function () {
                    $('.divcentro').remove();
                    $('.msgvalida').remove();
                    cmp.css('border-color', '');
                }, 3000);
                $("#btn_fechar").click(function () {
                    $('.divcentro').remove();
                    $('.msgvalida').remove();
                    cmp.focus();
                });

                return false;
            } else {
                cmp.css('border-color', '');
            }
            return true;
        });
    
}

function validar_select(campo, msg) {
    var cmp = $('#' + campo);

    $('form').submit(function () {
        if (cmp.val() == '-1') {
            cmp.after("<span class='msgvalida text-danger'><i class='fa fa-exclamation-circle'></i>&nbsp;" + msg + "</span>").slideDown(8800);
            //$('form').after("<div class='divcentro'><div class='row'>" + msg + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i id='btn_fechar' class='fa fa-close'></i></div></div>").slideDown(8800);
            cmp.css('border-color', 'red');
            setTimeout(function () {
                $('.divcentro').remove();
                $('.msgvalida').remove();
                cmp.css('border-color', '');
            }, 3000);
            $("#btn_fechar").click(function () {
                $('.divcentro').remove();
                $('.msgvalida').remove();
                cmp.focus();
            });

            return false;
        } else {
            cmp.css('border-color', '');
        }
        return true;
    });

}

function tam(campo, tam) {
    var tmp = $('#' + campo).val().length;
    var v_campo = $('#' + campo);

    if (tmp > 5) {
        $('#msg').html('Maior que ' + tam).slideDown(1000);
        this.find('#' + campo).focus();
        $('#' + campo).css('color', 'white');
        $('#' + campo).css('background-color', 'red');
    } else {
        $('#msg').slideUp(500);
    }
    $('#' + campo).focus();
}

function tam2(campo, tam, sonum) {
    $('.row').append("<div id='msg2' style='display:none; border:1px solid red;'>TESTE MSG</div>");
    var tmp = $('#' + campo).val().length;
    var v_campo = $('#' + campo);
    if (sonum) {
        sonumeros(v_campo); //Somente numeros para este campo
    }
    v_campo.keypress(function () {
        if (v_campo.val().length > 5) {
            //$('#msg').html('Maior que '+tam).slideDown(1000);
            v_campo.focus;
            return false;
        } else {
            $('#msg').slideUp(500);
        }
    });
}

function frmcpfcnpj(cpfcnpj) {
    var campo = $("#" + cpfcnpj);
    campo.attr('maxlength', "18");
    campo.keyup(function () {
        $(this).val(this.value.replace(/\D/g, ''));
        try{
            if (campo.val().length > 18) { throw new Error('Maior que 18'); console.log('maior que 18');}
        } catch (e) {

        }
    });

    campo.on('focusout',function () {
        try {
            campo.unmask();
        } catch (e) { }

        var tamanho = campo.val().length;

        if (tamanho == 11) {
            campo.mask('999.999.999-99');
            console.log('aplicou 11');
        } else if (tamanho == 14) {
            campo.mask("99.999.999/9999-99");
            console.log('aplicou 14');
        }
    });
}



function ntam(campo, tam, sonum, naonulo) {
    //Deixa o usuário digitar somente o tamanho passado por parametro 'tam'
    //var tam = $('#' + campo).val().length;
    var v_campo = $('#' + campo);

    if(naonulo) {
        if (v_campo.val() == '') {
            //v_campo.attr('placeholder', '* digite aqui campo obrigatório');
            v_campo.css('border-color', 'red');
        }
    }


    if (sonum) {
        sonumeros(v_campo); //Se 'true' Somente numeros são permitidos para este campo
    }
    v_campo.keypress(function () {
        if (v_campo.val().length === tam) {
            v_campo.focus;
            return false;
        } else {
            //...
        }
        if (v_campo.val() == '') {
            v_campo.css('border-color', 'red');
        }
        else {
            v_campo.css('border-color', 'green');
        }
    });
}

//ntam('nome', 10, false);

function sonumeros(campo) {
    campo.keypress(function (event) {
        var tecla = (window.event) ? event.keyCode : event.which;
        if ((tecla > 47 && tecla < 58)) return true;
        else {
            if (tecla != 8) return false;
            else return true;
        }
    });
}

function validar_tam(campo, tam, sonum, naonulo, msg) {
    //Deixa o usuário digitar somente o tamanho passado por parametro 'tam'
    //var tam = $('#' + campo).val().length;
    var v_campo = $('#' + campo);
    var cmp = $('#' + campo);

    if(naonulo) {
        if (v_campo.val() == '') {
            //v_campo.attr('placeholder', '* digite aqui campo obrigatório');
            v_campo.css('border-color', 'red');
        }
    }


    if (sonum) {
        sonumeros(v_campo); //Se 'true' Somente numeros são permitidos para este campo
    }
    v_campo.keypress(function () {
        if (v_campo.val().length === tam) {
            v_campo.focus;
            return false;
        } else {
            //...
        }
        if (v_campo.val() == '') {
            
            $('.divcentro').remove();
            $('.msgvalida').remove();
            v_campo.css('border-color', 'red');
            cmp.after("<span class='msgvalida text-danger'><i class='fa fa-exclamation-circle'></i>&nbsp;" + msg + "</span>").slideDown(6000);
            
            setTimeout(function () {
                $('.divcentro').remove();
                $('.msgvalida').remove();
                cmp.css('border-color', '');
            }, 3000);
            $("#btn_fechar").click(function () {
                $('.divcentro').remove();
                $('.msgvalida').remove();
                cmp.focus();
            });
        }
        else {
            v_campo.css('border-color', 'green');
            cmp.css('border-color', '');
        }
    });
}

/*$('#nome').keydown(function(event){
    if(event.which===13){
        alert($('#nome').val());
        if($('#nome').val().length>5){
            alert('marior que 5');
        }
    }
});*/

/**
 *
 *
 * all js actions
 *
 *
 * */


/*

 $( document ).bind( "mobileinit", function() {
 // Make your jQuery Mobile framework configuration changes here!

 $.support.cors = true;
 $.mobile.allowCrossDomainPages = true;
 });

 */

/**loading modal -- spinner*/
$body = $("body");

$(document).on({
    ajaxStart: function() {
        $body.addClass("loading");    },
    ajaxStop: function() { $body.removeClass("loading"); }
});


$( document ).ready(function() {
    //LOADING DATA FOR THE HOME PAGE
    //loads header.html from includes
    /*$.ajax({
     type:'GET',
     url: "./includes/header.html",
     }).success(function(result){
     $("#header").html(result);
     });*/

    //loads home main
    $.ajax({
        type:'GET',
        dataType: 'json',
        url: "http://hypermedia.francescobuonocore.it/api/home.php",
        crossDomain: true,
    }).success(function(result){
        var prod = home(result);
        $("#main").html(prod);
    });

    //loads footer
    $.ajax({
        type:'GET',
        url: "http://hypermedia.francescobuonocore.it/api/footer.php",
        crossDomain: true,
    }).success(function(result){
        $("#footer").html(result);
    });

    //closes the navbar menu on click (for mobile)
    $("#navbar").on("click","a", null,function(){
        $("#navbar").collapse('hide');
    });



    $( "body" ).on( "click", "#btnProdotti",function(e){
        $.ajax({
            type:'GET',
            dataType: 'json',
            url: "http://hypermedia.francescobuonocore.it/api/prodotti.php",
            crossDomain: true,
        }).success(function(result){
            var prod = products_category(result);
            $("#main").html(prod);
        });
        window.location.hash = "prodotti";
        e.preventDefault();
    });

    $( "body" ).on( "click", "#btnSmartLife",function(e){
        $.ajax({
            type:'GET',
            dataType: 'json',
            url: "http://hypermedia.francescobuonocore.it/api/smartlife.php",
            crossDomain: true,
        }).success(function(result){
            var prod = sl_services_category(result);
            $("#main").html(prod);
        });
        window.location.hash = "smartlife";
        e.preventDefault();
    });

    $( "body" ).on( "click", ".sl",function(p){
        idcompl= $(this).attr("id");
        idcategoria = $(this).attr("id").replace('sl','');
        nomecategoria = $(this).attr("data-sl-title");
        $.ajax({
            type:'GET',
            dataType:'json',
            url: "http://hypermedia.francescobuonocore.it/api/smartlife.php?idcategoria="+idcategoria,
            crossDomain: true,
        }).success(function(result){
            var prod = smartlife(result, nomecategoria, idcategoria, "");
            $("#main").html(prod);
        });
        window.location.hash = nomecategoria;
        p.preventDefault();
    });

    $( "body" ).on( "click", ".sl_det",function(p){
        id = $(this).attr("id").replace('sl_det','');
        if(id==2 || id==6 || id==8){
            nomeprodotto = $(this).attr("data-smart-title");
            nomecategoria = $(this).data("prod-nome");
            midname = $(this).data("mid-name");
            midid = "sl"+$(this).data("mid-id");
            from =  $(this).data("mid-name");
            fromid =midid;
            prodid = id;
            $.ajax({
                type:'GET',
                dataType:'json',
                url: "http://hypermedia.francescobuonocore.it/api/sl_esempio.php?idservizio="+id,
                crossDomain: true,
            }).success(function(result){
                var ret = sl_esempio(result, from, nomeprodotto, fromid, prodid, midid, midname);
                $("#main").html(ret);
            });
            window.location.hash = nomeprodotto;
            p.preventDefault();
        }
    });

    $( "body" ).on( "click", "#btn_sl_desc",function(p){
        $("#sl_att").hide();
        $("#sl_faq").hide();
        $("#acquista").hide();
        $("#prodotto").hide();
        $("#btn_sl_desc").removeClass("cliccabile");
        $("#btn_sl_att").removeClass("active");
        $("#btn_sl_faq").removeClass("active");
        $("#sl_desc").show();
        $("#btn_sl_desc").addClass("active");
        $("#btn_sl_att").addClass("cliccabile");
        $("#btn_sl_faq").addClass("cliccabile");
    });

    $( "body" ).on( "click", "#btn_sl_att",function(p){
        $("#sl_desc").hide();
        $("#sl_faq").hide();
        $("#btn_sl_desc").removeClass("active");
        $("#btn_sl_faq").removeClass("active");
        $("#btn_sl_att").removeClass("cliccabile");
        $("#sl_att").show();
        $("#acquista").show();
        $("#prodotto").show();
        $("#btn_sl_att").addClass("active");
        $("#btn_sl_desc").addClass("cliccabile");
        $("#btn_sl_faq").addClass("cliccabile");
    });

    $( "body" ).on( "click", "#btn_sl_faq",function(p){
        $("#sl_desc").hide();
        $("#sl_att").hide();
        $("#acquista").hide();
        $("#prodotto").hide();
        $("#btn_sl_att").removeClass("active");
        $("#btn_sl_desc").removeClass("active");
        $("#btn_sl_faq").removeClass("cliccabile");
        $("#sl_faq").show();
        $("#btn_sl_faq").addClass("active");
        $("#btn_sl_desc").addClass("cliccabile");
        $("#btn_sl_att").addClass("cliccabile");
    });

    $("#btnPromozioni").click(function(e){
        $.ajax({
            type:'GET',
            dataType: 'json',
            url: "http://hypermedia.francescobuonocore.it/api/promozioni.php",
            crossDomain: true,
        }).success(function(result){
            var prod = vprod(result, "Promozioni","","");
            $("#main").html(prod);
        });
        window.location.hash = "promozioni";
        e.preventDefault();
    });

    $( "body" ).on( "click", "#btnAssServ",(function(e){
        $.ajax({
            type:'GET',
            dataType: 'json',
            url: "http://hypermedia.francescobuonocore.it/api/ass_serv.php",
            crossDomain: true,
        }).success(function(result){
            var ass = ass_services_category(result);
            $("#main").html(ass);
        });
        window.location.hash = "ass_serv";
        e.preventDefault();
    }));

    $("#btnHighlights").click(function(e){
        $.ajax({
            type:'GET',
            dataType: 'json',
            url: "http://hypermedia.francescobuonocore.it/api/highlights.php",
            crossDomain: true,
        }).success(function(result){
            var ret = highlights(result);
            $("#main").html(ret);
        });
        window.location.hash = "highlights";
        e.preventDefault();
    });

    $("#btnLogo").click(function(e){
        $.ajax({
            type:'GET',
            dataType: 'json',
            url: "http://hypermedia.francescobuonocore.it/api/home.php",
            crossDomain: true,
        }).success(function(result){
            var ret = home(result);
            $("#main").html(ret);
        });
    });

    $("#testimonials").click(function(e){
        $.ajax({
            type:'GET',
            dataType: 'json',
            url: "http://hypermedia.francescobuonocore.it/api/chisiamo.php?chi=testimonials",
            crossDomain: true,
        }).success(function(result){
            var ret = testimonials(result);
            $("#main").html(ret);
        });
        window.location.hash = "testimonials";
        e.preventDefault();
    });

    $("#innovazione").click(function(e){
        $.ajax({
            type:'GET',
            dataType: 'json',
            url: "http://hypermedia.francescobuonocore.it/api/chisiamo.php?chi=innovazione",
            crossDomain: true,
        }).success(function(result){
            var ret = innovazione(result);
            $("#main").html(ret);
        });
        window.location.hash = "innovazione";
        e.preventDefault();
    });

    $("#progetti").click(function(e){
        $.ajax({
            type:'GET',
            dataType: 'json',
            url: "http://hypermedia.francescobuonocore.it/api/chisiamo.php?chi=progetti",
            crossDomain: true,
        }).success(function(result){
            var ret = progetti(result);
            $("#main").html(ret);
        });
        window.location.hash = "progetti";
        e.preventDefault();
    });

    $( "body" ).on( "click", ".prod",function(p){
        idcategoria = $(this).attr("id").replace('prod','');
        nomecategoria = $(this).attr("data-prod-title");
        //alert(idcategoria);
        $.ajax({
            type:'GET',
            dataType:'json',
            url: "http://hypermedia.francescobuonocore.it/api/prodotti.php?idcategoria="+idcategoria,
            crossDomain: true,
        }).success(function(result){
            var prod = vprod(result, "Prodotti", nomecategoria,"btnProdotti",idcategoria);
            $("#main").html(prod);
        });
        window.location.hash = nomecategoria;
        p.preventDefault();
    });

    $( "body" ).on( "click", ".prod_det",function(p){
        id = $(this).attr("id").replace('prod','');
        nomeprodotto = $(this).data("prod-nome");
        midname = $(this).data("mid-name");
        midid = "prod"+$(this).data("mid-id");
        //$coso = $(this);
        //alert(idcategoria);
        $.ajax({
            type:'GET',
            dataType:'json',
            url: "http://hypermedia.francescobuonocore.it/api/prodotto.php?id="+id,
            crossDomain: true,
        }).success(function(result){
            fromid = result[0].idcategoria;//$coso.attr("data-from-id");
            from = result[0].titolo; //$coso.attr("data-from-name");
            midid=result[0].id_categoria;
            midname=result[0].nome_categoria;

            var prod = prodotto(result,from, nomeprodotto, fromid,id, midid,midname);
            $("#main").html(prod);
        });
        window.location.hash = nomeprodotto;
        p.preventDefault();
    });


    $( "body" ).on( "click", ".ass",function(p){
        idcategoria = $(this).attr("id").replace('ass','');
        nomecategoria = $(this).attr("data-ass-title");
        $.ajax({
            type:'GET',
            dataType:'json',
            url: "http://hypermedia.francescobuonocore.it/api/ass_serv.php?idcategoria="+idcategoria,
            crossDomain: true,
        }).success(function(result){
            var ass = ass_servizi(result,"Servizi di Assistenza", nomecategoria,"btnAssServ");
            $("#main").html(ass);
        });
        window.location.hash = nomecategoria;
        p.preventDefault();
    });


    $("body").on( "click", ".att", function(p){
        $.ajax({
            type:'GET',
            dataType:'json',
            url:"http://hypermedia.francescobuonocore.it/api/attivazione.php",
            crossDomain: true,
        }).success(function(result){
            var ret = attivazione(result);
            $("#main").html(ret);
        });
        window.location.hash = "attivazione linea di casa";
        p.preventDefault();
    });

    $("body").on( "click", ".guid", function(p){
        $.ajax({
            type:'GET',
            dataType:'json',
            url:"http://hypermedia.francescobuonocore.it/api/guida.php",
            crossDomain: true,
        }).success(function(result){
            var ret = guida(result);
            $("#main").html(ret);
        });
        window.location.hash = "guida all'acquisto online";
        p.preventDefault();
    });

    $("#descr_gruppo").click(function(e){
        $.ajax({
            type:'GET',
            dataType: 'json',
            url: "http://hypermedia.francescobuonocore.it/api/ilgruppo.php?cosa=descr_gruppo",
            crossDomain: true,
        }).success(function(result){
            var ret = descr_gruppo(result);
            $("#main").html(ret);
        });
        window.location.hash = "descr_gruppo";
        e.preventDefault();
    });

    $("#novita").click(function(e){
        $.ajax({
            type:'GET',
            dataType: 'json',
            url: "http://hypermedia.francescobuonocore.it/api/ilgruppo.php?cosa=novita",
            crossDomain: true,
        }).success(function(result){
            var ret = novita(result);
            $("#main").html(ret);
        });
        window.location.hash = "novità";
        e.preventDefault();
    });

    $("#amministrazione").click(function(e){
        $.ajax({
            type:'GET',
            dataType: 'json',
            url: "http://hypermedia.francescobuonocore.it/api/ilgruppo.php?cosa=amministrazione",
            crossDomain: true,
        }).success(function(result){
            var ret = amministrazione(result);
            $("#main").html(ret);
        });
        window.location.hash = "amministrazione";
        e.preventDefault();
    });

    $("#business_market").click(function(e){
        $.ajax({
            type:'GET',
            dataType: 'json',
            url: "http://hypermedia.francescobuonocore.it/api/ilgruppo.php?cosa=business_market",
            crossDomain: true,
        }).success(function(result){
            var ret = business_market(result);
            $("#main").html(ret);
        });
        window.location.hash = "business_market";
        e.preventDefault();
    });

    $("#investitori").click(function(e){
        $.ajax({
            type:'GET',
            dataType: 'json',
            url: "http://hypermedia.francescobuonocore.it/api/ilgruppo.php?cosa=investitori",
            crossDomain: true,
        }).success(function(result){
            var ret = investitori(result);
            $("#main").html(ret);
        });
        window.location.hash = "investitori";
        e.preventDefault();
    });

    $( "body" ).on( "click", "#btn_prod_pres",function(p){
        $("#prod_car").hide();
        $("#btn_prod_car").removeClass("active");
        $("#btn_prod_pres").removeClass("cliccabile");
        $("#prod_pres").show();
        $("#btn_prod_pres").addClass("active");
        $("#btn_prod_car").addClass("cliccabile");
    });

    $( "body" ).on( "click", "#btn_prod_car",function(p){
        $("#prod_pres").hide();
        $("#btn_prod_pres").removeClass("active");
        $("#btn_prod_car").removeClass("cliccabile");
        $("#prod_car").show();
        $("#btn_prod_car").addClass("active");
        $("#btn_prod_pres").addClass("cliccabile");
    });
});




/*
 http://hypermedia.francescobuonocore.it/includes
 http://www.localhost/uni/hypermedia_tim/WEBSITE/includes
 */
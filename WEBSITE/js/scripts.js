/*home*/
function home(data) {
    var r = "";
    r+= '<div class="col-md-1"></div>';
    r += '<h1 style = "color:red; font-weight:bold; font-size:2em;">' + 'Nuovi prodotti' + '</h1>\n';
    r += "<div class='container'>\n<div class=\"row\">";
    r+='<div class="thumbnail text-center">\n';
    r+='<div class="caption">\n';
    r+='<div class="row">';
    data.forEach(function (d) {
        r+= '<div style="cursor:pointer;" class="col-md-3 prod_det" data-prod-nome="'+d['nome']+'" id="prod'+d['id']+'">';
        r += '<img style="max-height:200px;" src="img/'+d['immagine']+'" alt="Immagine'+d['immagine']+'">';
        r += '<h5><a class="cliccabile">' + d['nome'] + '</a></h5>\n';
        r+= '</div>';
     });
    r+= '</div>';
    r+= '</div>';
    r+= '</div>';
    r+= "</div>\n</div>";
    r += "<div class='container'>\n<div class=\"row\">";
    r+= '<div class="col-md-6">';
    r+='<div class="thumbnail">\n';
    r+='<div class="caption">\n';
    r+='<div class="row">';
    r+= '<div class="col-md-6">'; 
    r += '<h1 style = "color:red; font-weight:bold; font-size:2em; text-align:center">' + 'Porta un<br> amico in TIM' + '</h1>\n';
    r += '<h4 style="text-align:center">' + '<br>Per te e per loro 2 GIGA gratis.<br>Fino a 8 GIGA GRATIS!' + '</h4>\n';
    r+= '</div>';
    r+= '<div class="col-md-6">';
    r+='<img class="pull-right" style="max-height:190px;" src="img/thumb_IMG_1607_1024.jpg">';
    r+= '</div>';
    r+= '</div>';
    r+= '</div>';
    r+= '</div>';
    r+= '</div>';
    r+= '<div class="col-md-6">';
    r+='<div class="thumbnail">\n';
    r+='<div class="caption">\n';
    r += '<h1 style = "color:red; font-weight:bold; font-size:2em; text-align:center;">TIMtag</h1>\n';
    r += '<h4 class="text-center">Traccia e rintraccia tutto quello che ami!<br>Rilevatore GPS con un anno di servizio incluso.</h4><br>\n';
    r+='<div class="text-center cliccabile"><a href="#" class="btn-lg btn-primary sl_det" role="button" id="sl_det8">Scopri di più</a></div><br>';
    r+= '</div>';
    r+= '</div>';
    r+= '</div>';
    r+= '</div>';
    r+= '</div>';
    return r;
}

/*products categories with 5 elements */
function products_category(data) {
    var r = "";
    r += "<div class='container'>\n<div class=\"row\">";
    r += '<h1 style = "color:red; font-weight:bold; text-align:center; font-size:3.5em;">' + 'PRODOTTI' + '</h1><br>\n';
    data.forEach(function (d) {
        var offset='';
        if(d['id']==4)
        {
            offset = "col-md-offset-2";
        }
        r+= '<a href="#" class="prod" id="prod'+d['id']+'" data-prod-title="'+d['titolo']+'">' ;
        r+= '<div class="col-md-4 ' + offset +'">';
        r+= '<div class="col-md-10 col-md-offset-1 well text-center">';
        var icon = d['icona'];
        r+= '<span class="fa fa-5x ' + icon + '"></span>';
        r+= '<br>';
        r+= '<strong class="cliccabile">' + d['titolo'] + '</strong>\n';
        r+= '</div>';
        r+= '</div>';
        r+= '</a>';
    });
    r+= "</div>\n</div><br><br>";
    return r;
}


/*sl services categories with 4 elements */
function sl_services_category(data)
{
    var r="";
    r += "<div class='container'>\n<div class=\"row\">";
    r+= '<div class="col-md-10 col-md-offset-1">';
    r+= '<div class="row">';
    r += '<h1 style = "color:red; font-weight:bold; text-align:center; font-size:3.5em;">' + 'SERVIZI SMART LIFE' + '</h1><br>\n';
    data.forEach(function(d){
        r+= '<a href="#" class="sl" id="sl'+d['id']+'"data-sl-title="'+d['titolo']+'">' ;
        r+= '<div class="col-md-6">';
        r+= '<div class="col-md-10 col-md-offset-1 well text-center">';
        var icon = d['icona'];
        r+= '<span class="fa fa-5x ' + icon + '"></span>';
        r+= '<br>';
        r+= '<strong class="cliccabile">' + d['titolo'] + '</strong>\n';
        r+= '</div>';
        r+= '</div>';
        r+= '</a>';
    });
    r+= '</div>';
    r+= '</div>';
    r+= "</div>\n</div><br><br>";
    return r;
}

/*assistant services categories with 4 elements */
function ass_services_category(data)
{
    var r="";
    r += "<div class='container'>\n<div class=\"row\">";
    r+= '<div class="col-md-10 col-md-offset-1">';
    r+= '<div class="row">';
    r += '<h1 style = "color:red; font-weight:bold; text-align:center; font-size:3.5em;">' + 'SERVIZI DI ASSISTENZA' + '</h1><br>\n';
    data.forEach(function(d){
        r+= '<a href="#" class="ass" id="ass'+d['id']+'"data-ass-title="'+d['titolo']+'">' ;
        r+= '<div class="col-md-6">';
        r+= '<div class="col-md-10 col-md-offset-1 well text-center">';
        var icon = d['icona'];
        r+= '<span class="fa fa-5x ' + icon + '"></span>';
        r+= '<br>';
        r+= '<strong class="cliccabile">' + d['titolo'] + '</strong>\n';
        r+= '</div>';
        r+= '</div>';
        r+= '</a>';
    });
    r+= '</div>';
    r+= '</div>';
    r+= "</div>\n</div>\n<br><br>";
    return r;
}

function ass_servizi(data, from, cat, theid)
{
    var r="";
    /*breadcrumbs*/
    r+='<ol class="breadcrumb">';
    r+='<li';
    if(cat=="")
        r+= ' class="active" ';
    else
        r+= ' id="'+ theid+'" ';
    r+= '><a href="#' + from + '">' +from+' </a></li>\n';
    if(cat!="")
        r+='<li class="active">'+cat+'</li>\n';
    r+='</ol>';


    r += '<h1 style = "color:red; font-weight:bold; text-align:center; font-size:3.5em;">' + data['maintitle'] + '</h1><br>\n';
    r +='<div class="row">\n';
    var count = 0;
    data['serv'].forEach(function(d) {
        if(data.serv.length==3 || (data.serv.length>4 && count<3))
            r+= '<div class="col-md-4">\n';
        else
            r +='<div class="col-md-3">\n';
        r +='<div class="thumbnail" style="min-height:260px">\n';
        r +='<div class="caption">\n';
        r += '<h2 style = "color:red;  text-align:center; font-size:2em;">' + d['title'] + '</h2>\n';
        count++;
        d['cols'].forEach(function(dd){
            r += "<div>";
            if(dd['id']==1){
                 r += '<h4 style = "color:#2b78e4; text-align:center; font-size:1.1em;"><a href="#" class="att cliccabile">' + dd['title'] + ' &raquo;' + '</a>'+ '</h4>\n';
            }
            else if(dd['id']==51){
                 r += '<h4 style = "color:#2b78e4; text-align:center; font-size:1.1em;"><a href="#" class="guid cliccabile">' + dd['title'] + ' &raquo;' + '</a>'+ '</h4>\n';
            }
            else{
                r += '<h4 style = "color:#2b78e4;  text-align:center; font-size:1.1em;">' + dd['title'] + ' &raquo;' + '</h4>\n';
            }
            r += "</div>";
        });
        //todo completare
        r +='</div>\n';
        r +='</div>\n';
        r +='</div>\n';
    });

    r+='</div></div><br><br>';

    return r;
}

function guida(data)
{
    var r="";
    r += "<div class='container'>\n<div class=\"col\">";
    data['desc'].forEach(function(d){ 
        r += '<div class="thumbnail">\n';
        r += '<div class="caption">\n';
        r += '<h3 style = "color:red; text-align:left; font-size:2.5em;">' + 'GUIDA ALL\'ACQUISTO ONLINE' + '</h3>\n';
        r+='<h4>'+d['descrizione']+'</h4>\n';
        r+='</div>';
        r+='</div>';
        r += '<div class="thumbnail">\n';
        r += '<div class="caption">\n';
        r +='<h3 style = "color:red; text-align:left; font-size:2.5em;">' + 'FAQ' + '</h3>\n';
        
        r+= '<div class="btn-group-vertical btn-block" role="group">';
        r+='<div class="btn-group" role="group"><button style=" background-color:#f0f0f0; border-color:#000000;" type="button" class="btn btn-lg dropdown-toggle cliccabile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">'+d['faq1']+' <span class="caret"></span></button>';
        r+='<ul class="dropdown-menu">';
        r+='<li><a href="#" style=" background-color:#cce5ff; border-color:#000000;">'+d['desc1']+'</a></li>';
        r+='</ul>';
        r+='</div>';
        r+='<button href="#" style=" background-color:#f0f0f0; border-color:#000000;" class="btn btn-lg dropdown-toggle" aria-haspopup="true" aria-expanded="false">'+d['faq2']+' <span class="caret"></span></button>';
        r+='<button href="#" style=" background-color:#f0f0f0; border-color:#000000;" class="btn  btn-lg dropdown-toggle" aria-haspopup="true" aria-expanded="false">'+d['faq3']+' <span class="caret"></span></button>';
        r+='<button href="#" style=" background-color:#f0f0f0; border-color:#000000;" class="btn btn-lg dropdown-toggle"aria-haspopup="true" aria-expanded="false">'+d['faq4']+' <span class="caret"></span></button>';
        r+='</div>';
        
        r+='</div>';
        r+='</div>';
       
    });
    r += '<br><h3 style = "color:red; text-align:left; font-size:2.5em;">' + 'PRODOTTI ASSOCIATI' + '</h3><br>\n';
    data['prod'].forEach(function(d){
        r+='<div class="col-sm-6 col-md-4">\n';
        r+='<div class="thumbnail text-center" style="min-height:400px;">\n';
        r+='<div style="cursor:pointer;" class="caption prod_det" data-prod-nome="'+d['nome']+'" id="prod'+d['id']+'">';
        r += '<img src="img/'+d['immagine']+'" alt="Immagine'+d['immagine']+'" class="img-responsive">';
        r += '<h5><a class="cliccabile">' + d['nome'] + '</a></h5>\n';
        r+='</div>';
        r+='</div>';
        r+='</div>';
    });    
     r+="</div></div>";
    return r;
}

function highlights(data)
{
    var r="";
    var primo=1;
    r += "<div class='container' style='max-width:800px;'>\n<div class=\"col\">";
    r += '<h1 style = "color:red; font-weight:bold; text-align:center; font-size:3.5em;">' + 'HIGHLIGHTS' + '</h1><br>\n';
    r += '<div class="thumbnail">\n';
    r += '<div class="caption">\n';
    data.forEach(function(d){
        if(primo==1){
        r+='<h4 style="color:#2b78e4;" class="cliccabile"><a href="#" class="att">'+d['titolo']+ ' &raquo;' + '</a>'+'</h4>\n';
        primo++;
        }
        else{
            r+='<h4 style="color:#2b78e4;">'+d['titolo']+ ' &raquo;' + '</h4>\n';
        }
    });
    r+='</div>';
    r+='</div>';
    r+="</div></div>";
    
    return r;
}

function attivazione(data)
{
    var r="";
    r += "<div class='container'>\n<div class=\"col\">";
    r += '<div class="thumbnail">\n';
    r += '<div class="caption">\n';
    data.forEach(function(d){
        r += '<div class="thumbnail">\n';
        r += '<div class="caption">\n';
        r += '<h3 style = "color:red; text-align:left; font-size:2.5em;">' + 'ATTIVAZIONE LINEA DI CASA' + '</h3>\n';
        r+='<h4>'+d['descrizione']+'</h4>\n';
        r+='</div>';
        r+='</div>';
        r += '<div class="thumbnail">\n';
        r += '<div class="caption">\n';
        r +='<h3 style = "color:red; text-align:left; font-size:2.5em;">' + 'FAQ' + '</h3>\n';
        r+= '<div class="btn-group-vertical btn-block" role="group">';
        r+='<div class="btn-group" role="group"><button style=" background-color:#f0f0f0; border-color:#000000;" type="button" class="btn btn-lg dropdown-toggle cliccabile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">'+d['faq1']+' <span class="caret"></span></button>';
        r+='<ul class="dropdown-menu">';
        r+='<li><a href="#" style=" background-color:#cce5ff; border-color:#000000;">'+d['desc1']+'</a></li>';
        r+='</ul>';
        r+='</div>';
        r+='<button href="#" style=" background-color:#f0f0f0; border-color:#000000;" class="btn btn-lg dropdown-toggle" aria-haspopup="true" aria-expanded="false">'+d['faq2']+' <span class="caret"></span></button>';
        r+='<button href="#" style=" background-color:#f0f0f0; border-color:#000000;" class="btn  btn-lg dropdown-toggle" aria-haspopup="true" aria-expanded="false">'+d['faq3']+' <span class="caret"></span></button>';
        r+='<button href="#" style=" background-color:#f0f0f0; border-color:#000000;" class="btn btn-lg dropdown-toggle" aria-haspopup="true" aria-expanded="false">'+d['faq4']+' <span class="caret"></span></button>';
        r+='</div>';
        r+='</div>';
        r+='</div>';
    });
    r+="</div></div>";
    
    return r;
}


/*products*/
function vprod(data, from, cat, theid,catid)
{
    if(theid=='undefined')
        theid='';

    var r="";

    r+="<div class='container'>";
    if(cat!='') {
        /*breadcrumbs*/
        /*
        r += '<ol class="breadcrumb">';
        r += '<li';
        if (cat == "")
            r += ' class="active" ';
        else
            r += ' id="' + theid + '" ';
        r += '><a href="#' + from + '">' + from + ' </a></li>\n';
        if (cat != "")
            r += '<li class="active">' + cat + '</li>\n';
        r += '</ol>';
        */
        r += '<ol class="breadcrumb">';
        r += '<li';
        if (cat == "")
            r += ' class="active" ';
        else
            r += ' id="btnProdotti" ';
        r += '><a href="#Prodotti">Prodotti</a></li>\n';
        if (cat != "")
            r += '<li class="active">' + data['nome_categoria'] + '</li>\n';
        r += '</ol>';
    }

    //'data-mid-name="'+cat+'" data-mid-id="'+catid+'" + 'data-from-id="'+theid+'" " data-from-name="'+from+'"
    r+="\n<div class=\"row\">";
    data[0].forEach(function(d){
        r+='<div class="col-sm-6 col-md-4">\n';
        r+='<div class="thumbnail text-center" style="min-height:440px;">\n';
        r+='<div class="caption">\n';
        r+='<div><h3>'+d['nome']+'</h3>';
        if(d['promozione']!=0){
            r += '<a class="btn-sm btn-success">Promo</a><br><br>';
        }
        if(d['outlet']!=0){
            r += '<a class="btn-sm" style="background-color:#FFFF00">Outlet</a><br><br>';
        }
        r+='</div>';
        r+='<img style="max-height:200px; max-width:100%" src="img/'+d['immagine']+'" alt="Immagine'+d['immagine']+'">';
        r+='<h2 style="color:red;">'+d['prezzo']+'</h2>';
        r+='<div><a href="#" class="btn btn-primary prod_det cliccabile" data-prod-nome="'+d['nome']+'" role="button" id="prod'+d['id']+'">Dettagli</a>' +
            ' <a href="#" class="btn btn-danger" role="button">Acquista</a></div>';
        r+='</div>';
        r+='</div>';
        r+='</div>';
    });
    r+="</div></div>";
    r+='<hr class="rigabella" />';
    
    r+='<nav class="pull-right">';
    r+='<ul class="pagination pull-right">';
    r+='<li><a href="#">1</a></li>';
    r+='<li><a href="#">2</a></li>';
    r+='<li><a href="#">3</a></li>';
    r+='<li>';
    r+='<a href="#" aria-label="Next">';
    r+='<span aria-hidden="true">&raquo;</span>';
    r+='</a>';
    r+='</li>';
    r+='</ul>';
    r+='</nav>';
    return r;
}

function innovazione(data)
{
    var r="";
    var count=1;
    r += '<h1 style = "color:red; font-weight:bold; text-align:center; font-size:3.5em;">' + 'VIVERE L\'INNOVAZIONE' + '</h1><br>\n';
    r+="<div class='container'>\n<div class=\"col\">";
    data.forEach(function(d){
        r+='<div class="thumbnail">\n';
        r+='<div class="caption">\n';
        r+='<div>';
        if(count%2!=0){
            r+='<div style="margin:6px; padding:5px; min-height:380px; background-image: url(\'img/'+ d.immagine  +'\'); background-repeat:no-repeat; background-size:cover;">';
            r+='<div class="row"><div class="col-md-7"><h2 style="color:white;">'+ d['titolo'] + '</h2></div></div>\n';
            r+='<div class="row"><div class="col-md-6"><h4 style="color:white;">'+d['testo']+'</h4></div></div>\n';
            r+='</div>';
        }
        else{
            r+='<div style="margin:6px; padding:5px; min-height:380px; background-image: url(\'img/'+ d.immagine  +'\'); background-repeat:no-repeat; background-size:cover;">';
            r+='<div class="row"><div class="col-md-6 col-md-offset-6"><h2 style="color:white;">'+d['titolo']+ '</h2></div></div>\n';
            r+='<div class="row"><div class="col-md-6 col-md-offset-6"><h4 style="color:white;">'+d['testo']+'</h4></div></div>\n';
            r+='</div>';
        }
        r+='</div>';
        r+='</div>';
        r+='</div>';
        count++;
    });
    r+="</div></div>";
    
    
    return r;
}

function testimonials(data)
{
     var r="";
    r+="<div class='container'>\n<div class=\"row\">";
    data.forEach(function(d){
        r+='<div class="col-sm-6 col-md-4">\n';
        r+='<div class="thumbnail">\n';
        r+='<img style="max-height:280px;" src="img/'+d['immagine']+'" alt="Immagine'+d['immagine']+'">';
        r+='<div class="caption">\n';
        r+='<h2>&ldquo;'+d['testo']+'&rdquo;</h2>\n';
        r+='<h5>'+d['titolo']+'</h5>\n';
        r+='</div>';
        r+='</div>';
        r+='</div>';
    });
    r+="</div></div><br>";
    
    return r;
}

function progetti(data)
{
    var r="";
    var count=1;
    r+="<div class='container'>\n<div class=\"col\">";
    data.forEach(function(d){
        r+='<div class="thumbnail">\n';
        r+='<div class="caption">\n';
        r+='<div class="row">';
        r+='<div class="col-md-6">';
        if(count%2!=0){
            r+='<img style="width:100%; padding-left:1%; padding-right:1%; padding-bottom:2%;"src="img/'+d['immagine']+'" alt="Immagine'+d['immagine']+'" class="img-responsive">' ;
            r+='</div>';
            r+='<div class="col-md-6">';
            r+='<h2 style="color:red;">'+d['titolo']+ '<br>' + '</h2>\n';
            r+='<h4>'+d['testo']+'</h4>\n';
            r+='</div>';
            r+='</div>';
            r+='</div>';
            r+='</div>';
        }
        else{
            r+='<h2 style="color:red;">'+d['titolo']+ '<br>' + '</h2>\n';
            r+='<h4>'+d['testo']+'</h4>\n';
            r+='</div>';
            r+='<div class="col-md-6">';
            r+='<img style="width:100%; padding-left:1%; padding-right:1%; padding-bottom:2%;" src="img/'+d['immagine']+'" alt="Immagine'+d['immagine']+'" class="img-responsive">' ;
            r+='</div>';
            r+='</div>';
            r+='</div>';
            r+='</div>';
        }
        count++;
    });
    r+="</div></div>";
    
    return r;
}

function descr_gruppo(data)
{
    var r="";
    r+="<div class='container'>\n<div class=\"row\">";
    data.forEach(function(d){
        r += '<h1 style = "color:red; font-weight:bold; text-align:center; font-size:3em;">' + d['titolo'] + '</h1><br>\n';
        r += '<div class="col-md-6">';
        r += '<h4 style = "font-size:1.4em;">' + d['text'] + '</h4>';
        r += '</div>';
        r += '<div class="col-md-1"></div>';
        r += '<div class="col-md-5">';
        r += '<img style="width:100%; padding-left:1%; padding-right:1%; padding-bottom:2%;" ; src="img/'+d['immagine']+'" alt="Immagine'+d['immagine']+'">';
        r += '<div class="row-md-1"><br></div>';
        r += '<img style="width:100%; padding-left:1%; padding-right:1%; padding-bottom:2%;" src="img/'+d['immagine2']+'" alt="Immagine'+d['immagine2']+'">';
        r += '<div class="row-md-1"><br></div>';
        r += '</div>';       
    });
    r+="</div></div>";
    return r;
}

function novita(data)
{
    var r="";
    r+="<div class='container'>\n<div class=\"row\">";
    data.forEach(function(d){
        r += '<h1 style = "color:red; font-weight:bold; text-align:center; font-size:3em;">' + d['titolo'] + '</h1><br>\n';
        r += '<div class="col-md-6">';
        r += '<h4 style = "font-size:1.4em;">' + d['text'] + '</h4>';
        r += '<div class="row-md-1"><br></div>';
        r += '</div>';
        r += '<div class="col-md-6">';
        r += '<img class="pull-right" style="max-height:260px; padding:5px;" src="img/'+d['immagine']+'" alt="Immagine'+d['immagine']+'"><br><br>';
        r += '<img class="pull-right" style="min-height:270px; padding:5px;" src="img/'+d['immagine2']+'" alt="Immagine'+d['immagine2']+'"><br><br>';
        r += '<img class="pull-right" style="max-height:270px; padding:5px;" src="img/'+d['immagine3']+'" alt="Immagine'+d['immagine3']+'"><br><br>';
        r += '</div>';       
    });
    r+="</div></div>";
    return r;
}

function amministrazione(data)
{
    var r="";
    r+="<div class='container'>\n<div class=\"row\">";
    data.forEach(function(d){
        r += '<h1 style = "color:red; font-weight:bold; text-align:center; font-size:3em;">' + d['titolo'] + '</h1><br>\n';
        r += '<h4 style = "font-size:1.4em;">' + d['text'] + '</h4>';
        r += '<div class="col-md-1"></div>';
        r += '<div class="col-md-10">';
        r += '<img  src="img/'+d['immagine']+'" alt="Immagine'+d['immagine']+'">';
        r += '</div>';
        r += '<div class="col-md-1"></div>';
    });
    r+="</div></div>";
    return r;
}

function business_market(data)
{
    var r="";
    r+="<div class='container'>\n<div class=\"row\">";
    data.forEach(function(d){
        r += '<h1 style = "color:red; font-weight:bold; text-align:center; font-size:3em;">' + d['titolo'] + '</h1><br>\n';
        r += '<div class="col-md-6">';
        r += '<h4 style = "font-size:1.4em;">' + d['text'] + '</h4>';
        r += '</div>';
        r += '<div class="col-md-1"></div>';
        r += '<div class="col-md-5">';
        r += '<img style="width:100%; padding-left:1%; padding-right:1%; padding-bottom:2%;" ; src="img/'+d['immagine']+'" alt="Immagine'+d['immagine']+'">';
        r += '<div class="row-md-1"><br><br></div>';
        r += '<img style="width:100%; padding-left:1%; padding-right:1%; padding-bottom:2%;" src="img/'+d['immagine2']+'" alt="Immagine'+d['immagine2']+'">';
        r += '<div class="row-md-1"><br></div>';
        r += '</div>';       
    });
    r+="</div></div><br>";
    return r;
}
function investitori(data)
{
    var r="";
    r+="<div class='container'>\n<div class=\"row\">";
    var count = 0;
    data.forEach(function(d){

        count+=1;
        if(count==1){
            r += '<div class="col-sm-6 col-md-4"><div class="row">';
        }
        r += '<div class="col-md-12">';
        r +='<div class="thumbnail">';
        r +='<div class="caption">';
        r += '<h1 style = "color:red; text-align:center; font-size:1.3em;">' + d['titolo'] + '</h1><br>\n';
        r += '<img class="img-responsive" src="img/'+d['immagine']+'" alt="Immagine'+d['immagine']+'">';
        r += '<h4 style = "font-size:1em;">' + d['text'] + '</h4>';
        r +='</div>';
        r +='</div>';
        r +='</div>';
        if(count==2){
            count=0;
            r+='</div></div>';
        }
         
    });
    r+="</div></div><br>";
    return r;
}

function prodotto(data, from, nomeprodotto, fromid, prodid, midid, midname)
{
    var r="";
    r+="<div class='container'>\n";

    /*breadcrumbs*/
    r+='<ol class="breadcrumb">';
    r+='<li';
    r+= ' id="btnProdotti" ';
    r+= '><a href="#Prodotti">Prodotti</a></li>\n';
    r+='<li';
    r+= ' id="'+ midid+'" ';
    r+= '><a class="prod" data-prod-title="'+midname+'" id="'+midid+'" href="#' + midname + '">' +midname+' </a></li>\n';
    if(prodid!="")
        r+='<li class="active">'+nomeprodotto+'</li>\n';
    r+='</ol>';


    r+="<div class=\"row\">";
    //r+="<pre>"+data[0]+"</pre>";
    data.forEach(function(d){
        r+='<div class="col-md-6">';
        r+='<div class="thumbnail">\n';
        r+='<div class="caption">\n';
        r+='<div class="row" style="padding:1%;">';

        if(d['immagine4']==null && d['immagine2']==null && d['immagine3']==null){
            r+='<div class="col-md-12">';
            r+='<img style="max-width:540px; min-width:540px;" src="img/'+d['immagine']+'" alt="Immagine'+d['immagine']+'">';
            r+='</div>';
        }
        else {
            r+='<div class="col-md-6">';
            r += '<img class="img-responsive" src="img/' + d['immagine'] + '" alt="Immagine' + d['immagine'] + '">';
            r+='</div>';
        }
        if(d['immagine2']!=null){
            r+='<div class="col-md-6">';
            r+='<img class="img-responsive"  src="img/'+d['immagine2']+'" alt="Immagine'+d['immagine2']+'">';
            r+='</div>';
        }
        if(d['immagine3']!=null){
            r+='<div class="col-md-6">';
            r+='<img class="img-responsive" src="img/'+d['immagine3']+'" alt="Immagine'+d['immagine3']+'">';
            r+='</div>';
        }
        if(d['immagine4']!=null){
            r+='<div class="col-md-6">';
            r+='<img class="img-responsive"  src="img/'+d['immagine4']+'" alt="Immagine'+d['immagine4']+'">';
            r+='</div>';
        }
        r+='</div>';
        r+='</div>';
        r+='</div>';
        r+='</div>';
        r+='<div class="col-md-6">';
        r+='<h1 style="color:red; font-weight:bold; text-align:center;">'+d['nome']+'</h1>\n';
        r+='<h6><br></h6>';
        r+= '<ul class="nav nav-tabs">';
        r+= '<li id="btn_prod_pres" role="presentation" class="active"><a href="#btn_prod_pres">Presentazione</a></li>';
        r+= '<li id="btn_prod_car" role="presentation"><a href="#btn_prod_car">Caratteristiche</a></li>';
        r+= '</ul>';
        r+= '<div class="col-md-1"></div>';
        
        r+= '<div id="prod_pres" class="col-md-11">';
        r+= '<br>'+d['presentazione'];
        r+='<div><h4 style="color:red;">Colore:';
        if(d['colore1']=='#FFFFFF'){
            r+='<a style="margin:8px; background-color:'+d['colore1']+';" href="#" class="btn btn-primary btn-circle-sm active" role="button"></a>';
        }
        else
            r+='<a style="margin:8px; background-color:'+d['colore1']+';" href="#" class="btn btn-circle-sm active" role="button"></a>';
        if(d['colore2']!=0){
            if(d['colore2']=='#FFFFFF'){
                r+='<a style="background-color:'+d['colore2']+';" href="#" class="btn btn-primary btn-circle-sm" role="button"></a>';
            }
            else
                r+='<a style="background-color:'+d['colore2']+';" href="#" class="btn btn-circle-sm" role="button"></a>';
        }
        if(d['colore3']!=0){
            r+='<a style="margin:8px; background-color:'+d['colore3']+';" href="#" class="btn btn-circle-sm" role="button"></a>';
        }
        if(d['colore4']!=0){
            r+='<a style="background-color:'+d['colore4']+';" href="#" class="btn btn-circle-sm" role="button"></a>';
        }
        r+='</h4></div>\n';

        r+='<div class="text-center">';

        r+='<h2 style="color:red; font-weight:bold;">'+ d['prezzo'] +'</h2>\n';
        if(d['prezzo_mese']!=0){
            r+='<p>oppure</p>';
            r+='<h2 style="color:red; font-weight:bold;">' + d['prezzo_mese'] + '</h2>\n';
            r+='<p>in 36 rate senza interessi se hai una linea di casa TIM</p><br>\n';
        }
        else {
            r += '<br>';
        }

        r+= '</div>'; //closes the text-center
        r+= '</div>';
        
        r+= '<div id="prod_car" style="display:none;" class="col-md-11">';
        r+= '<br>'+d['caratteristiche_tecniche']+'<br>';
        //r+='<div class="text-center"><a href="#" class="btn-lg btn-danger" role="button">Acquista</a><br></div>';
        //r+='<div class="text-center"><a style="margin-right:30px;" href="#" class="btn-lg btn-primary" role="button">Servizio di Assistenza</a>';
        //r+='<a href="#" class="btn-lg btn-success" role="button">Servizio SmartLife</a></div>';
        r+= '</div>';

        r+='<div class="text-center">';
        r+= '<div class="row">';
        r+= '<div class="col-md-12" style="min-height:50px;"><a href="#" class="btn-lg btn-danger" role="button">Acquista</a><br></div>';
        r+= '</div>';
        if(d['smartlife']!=0){
            r+= '<div class="row">';
            r+= '<div class="col-md-6" style="min-height:50px;"><a href="#" class="btn-lg btn-primary guid cliccabile" role="button">Servizio di Assistenza</a></div>' +
            '<div class="col-md-6" style="min-height:50px;"><a href="#" class="btn-lg btn-success cliccabile sl_det" data-prod-nome="'+d.smartlife+'" role="button" id="sl_det'+ d['smartlife']+'">Servizio SmartLife</a></div>';
        }
        else{
            r+= '<div class="row">';
            r+= '<div class="col-md-6" style="min-height:50px;"><a href="#" class="btn-lg btn-primary guid cliccabile" role="button">Servizio di Assistenza</a></div>' +
            '<div class="col-md-6" style="min-height:50px;"><a href="#" class="btn-lg btn-success sl_det" role="button">Servizio SmartLife</a></div>';
        }
        r+= '</div>';
        r+= '</div>';



    });
    r+="</div></div><br><br>";
    return r;
}

/*smartlife products*/
function smartlife(data)
{
    var r="";
    var count=0;
    data['slimg'].forEach(function(d){
        r+='<div class="text-center"><img style="width:100%; padding-left:1%; padding-right:1%; padding-bottom:2%;" src="img/'+d['immagine']+'" alt="Immagine'+d['immagine']+'"></div>';
    });
    r+="<div class='container'>\n<div class=\"row\">";
    data['slserv'].forEach(function(d){
        r+='<div class="thumbnail">\n';
        r+='<div class="caption">\n';
        r+='<div class="row">';
        r+='<div class="col-md-6">';
        if(count%2==0){
            r+='<img class="img-responsive" style="max-height:300px;" src="img/'+d['immagine']+'" alt="Immagine'+d['immagine']+'">';
            r+='</div>';
            r+='<div class="col-md-6">';
            r+='<h1 style="color:red; text-align:center;">'+d['titolo'];
            if(d['promozione']!=0){
                r += '<a class="btn-sm btn-success pull-right">Promo</a></h1>';
            }
            else{
                 r+='</h1>';
            }
            r+='<h4>'+d['descrizione']+'<br><br>'+'</h4>\n';
            if(d['id']==2 || d['id']==6 || d['id']==8){
                r+='<div class="text-center"><a href="#" class="btn-lg btn-primary sl_det cliccabile" role="button" id="sl_det'+d['id']+'"data-smart-title="'+d['titolo']+'">Scopri di piu</a><br></div><br>';
            }
            else {
                r+='<div class="text-center"><a href="#" class="btn-lg btn-primary sl_det" role="button" id="sl_det'+d['id']+'"data-smart-title="'+d['titolo']+'">Scopri di piu</a><br></div><br>';
            }
        }
        else{
            r+='<h1 style="color:red; text-align:center;">'+d['titolo'];
            if(d['promozione']!=0){
                r += '<a class="btn-sm btn-success pull-left">Promo</a></h1>';
            }
            else{
                 r+='</h1>';
            }
            r+='<h4>'+d['descrizione']+'<br><br>'+'</h4>\n';
            if(d['id']==2 || d['id']==6 || d['id']==8){
                r+='<div class="text-center"><a href="#" class="btn-lg btn-primary sl_det cliccabile" role="button" id="sl_det'+d['id']+'"data-smart-title="'+d['titolo']+'">Scopri di piu</a><br></div><br>';
            }
            else {
            r+='<div class="text-center"><a href="#" class="btn-lg btn-primary sl_det" role="button" id="sl_det'+d['id']+'"data-smart-title="'+d['titolo']+'">Scopri di piu</a><br></div>';
            }
            r+='</div>';
            r+='<div class="col-md-6">';
            r+='<br><div class="pull-right"><img class="img-responsive" style="max-height:300px;" src="img/'+d['immagine']+'" alt="Immagine'+d['immagine']+'"></div>';
        }
        r+='</div>';
        r+='</div>';
        r+='</div>';
        r+='</div>';
        count++;
    });
    r+="</div></div><br><br>";
    return r;
}

function sl_esempio(data){
    var r="";
    data.forEach(function(d){
        if(d['id']==3){
            r+= '<div class="col-md-6">';
            r+= '<ul class="nav nav-tabs">';
            r+= '<li id="btn_sl_desc" role="presentation" class="active cliccabile"><a href="#sl_desc">Descrizione</a></li>';
            r+= '<li id="btn_sl_att" role="presentation" class="cliccabile"><a href="#sl_att">Attivazione e Regole</a></li>';
            r+= '<li id="btn_sl_faq" role="presentation" class="cliccabile"><a href="#sl_faq">FAQ</a></li>';
            r+= '</ul>';
            r+='<div id="sl_desc"><h4>'+d['descrizione']+'</h4></div><br>\n';
            r+='<div id="sl_att" style="display:none;"><h4>'+d['attivazione']+'</h4><br><br></div><br>\n';
            r+='<div id="acquista" class="text-center" style="display:none;"><a href="#" class="btn-lg btn-danger" role="button">Acquista</a><br><br><br></div>';
            r+='<div id="prodotto" class="text-center" style="display:none;"><a href="#" class="btn-lg btn-success prod_det" role="button" id="prod'+d['prod_ass']+'">Prodotto associato</a><br><br><br></div>';
            r+= '<div id="sl_faq" class="btn-group-vertical btn-block" role="group" style="display:none;">';
            r+='<div class="btn-group" role="group"><button style=" background-color:#f0f0f0; border-color:#000000;" type="button" class="btn btn-lg dropdown-toggle cliccabile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">'+d['faq1']+' <span class="caret"></span></button>';
            r+='<ul class="dropdown-menu">';
            r+='<li><a href="#" style=" background-color:#cce5ff; border-color:#000000;">'+d['desc1']+'</a></li>';
            r+='</ul>';
            r+='</div>';
            r+='<button href="#" style=" background-color:#f0f0f0; border-color:#000000;" class="btn btn-lg dropdown-toggle" aria-haspopup="true" aria-expanded="false">'+d['faq2']+' <span class="caret"></span></button>';
            r+='<button href="#" style=" background-color:#f0f0f0; border-color:#000000;" class="btn  btn-lg dropdown-toggle" aria-haspopup="true" aria-expanded="false">'+d['faq3']+' <span class="caret"></span></button>';
            r+='<button href="#" style=" background-color:#f0f0f0; border-color:#000000;" class="btn btn-lg dropdown-toggle"aria-haspopup="true" aria-expanded="false">'+d['faq4']+' <span class="caret"></span></button>';
            r+='</div>';
            r+='</div>';
            r+= '<div class="col-md-6">';
            r+='<img style="width:100%; padding-left:1%; padding-right:1%; padding-bottom:10%;" src="img/'+d['immagine']+'" alt="Immagine'+d['immagine']+'">';
            r+='</div>';
        }
        else {
            r+='<img style="width:100%; padding-left:1%; padding-right:1%; padding-bottom:2%;" src="img/'+d['immagine']+'" alt="Immagine'+d['immagine']+'">';
            r+= '<ul class="nav nav-tabs">';
            r+= '<li id="btn_sl_desc" role="presentation" class="active cliccabile"><a href="#sl_desc">Descrizione</a></li>';
            r+= '<li id="btn_sl_att" role="presentation" class="cliccabile"><a href="#sl_att"">Attivazione e Regole</a></li>';
            r+= '<li id="btn_sl_faq" role="presentation" class="cliccabile"><a href="#">FAQ</a></li>';
            r+= '</ul>';
            r+= '<div class="col-md-1"></div>';
            r+= '<div class="col-md-10">';
            r+='<div id="sl_desc"><h4>'+d['descrizione']+'</h4></div><br>\n';
            r+='<div id="sl_att" style="display:none;"><h4>'+d['attivazione']+'</h4><br><br></div><br>\n';
            r+="<div class=\"row\">";
            r+='<div class="col-md-3 col-md-offset-3">';
            r+='<div id="acquista" class="text-center" style="display:none;"><a href="#"  class="btn-lg btn-danger" role="button">Acquista</a></div>';
            r+='</div>';
            r+= '<div class="col-md-3">';
            r+='<div id="prodotto" style="display:none; margin-left:30px;"><a href="#" class="btn-lg btn-success prod_det" role="button" id="prod'+d['prod_ass']+'" >Prodotto associato</a><br><br><br></div>';
            r+='</div>';
            r+= '<div id="sl_faq" class="btn-group-vertical btn-block" role="group" style="display:none;">';
            r+='<div class="btn-group" role="group"><button style=" background-color:#f0f0f0; border-color:#000000;" type="button" class="btn btn-lg dropdown-toggle cliccabile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">'+d['faq1']+' <span class="caret"></span></button>';
            r+='<ul class="dropdown-menu">';
            r+='<li><a href="#" style=" background-color:#cce5ff; border-color:#000000;">'+d['desc1']+'</a></li>';
            r+='</ul>';
            r+='</div>';
            r+='<button href="#" style=" background-color:#f0f0f0; border-color:#000000;" class="btn btn-lg dropdown-toggle" aria-haspopup="true" aria-expanded="false">'+d['faq2']+' <span class="caret"></span></button>';
            r+='<button href="#" style=" background-color:#f0f0f0; border-color:#000000;" class="btn  btn-lg dropdown-toggle" aria-haspopup="true" aria-expanded="false">'+d['faq3']+' <span class="caret"></span></button>';
            r+='<button href="#" style=" background-color:#f0f0f0; border-color:#000000;" class="btn btn-lg dropdown-toggle"aria-haspopup="true" aria-expanded="false">'+d['faq4']+' <span class="caret"></span></button>';
            r+='</div>';
            r+='</div>';
        }
    });
    return r;
}
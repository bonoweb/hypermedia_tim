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
        r+= '<div style="cursor:pointer;" class="col-md-3 prod_det" id="prod'+d['id']+'">';
        r += '<img style="max-height:200px;" src="img/'+d['immagine']+'" alt="Immagine'+d['immagine']+'">'
        r += '<h5><a>' + d['nome'] + '</a></h5>\n';
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
    r+='<div class="text-center"><a href="#" class="btn-lg btn-primary sl_det" role="button" id="sl_det8">Scopri di più</a></div><br>';
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
        r+= '<strong>' + d['titolo'] + '</strong>\n';
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
        r+= '<strong>' + d['titolo'] + '</strong>\n';
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
        r+= '<strong>' + d['titolo'] + '</strong>\n';
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
    data['serv'].forEach(function(d) {
        if(data.serv.length<=3)
            r+= '<div class="col-md-4">\n';
        else
            r +='<div class="col-md-3">\n';
        r +='<div class="thumbnail">\n';
        r +='<div class="caption">\n';
        r += '<h2 style = "color:red;  text-align:center;">' + d['title'] + '</h2>\n';
        d['cols'].forEach(function(dd){
            r += "<div>";
            if(dd['id']==51){
                 r += '<h4 style = "color:blue;  text-align:center;"><a href="#" class="guid">' + dd['title'] + ' &raquo;' + '</a>'+ '</h4>\n';
            }
            else{
                r += '<h4 style = "color:blue;  text-align:center;">' + dd['title'] + ' &raquo;' + '</h4>\n';
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
    r += '<div class="thumbnail">\n';
    r += '<div class="caption">\n';
    data.forEach(function(d){
        r += '<h3 style = "color:red; text-align:left; font-size:2.5em;">' + 'GUIDA ALL\'ACQUISTO ONLINE' + '</h3>\n';
        r+='<h4>'+d['descrizione']+'</h4>\n';
    });
    r+='</div>';
    r+='</div>';
    r+="</div></div>";
    
    return r;
}

/*function ass_servizi_1(data)
{
    var r="";
    var count=1;
    var primo=1;
    r+='<div class="col-md-3">\n';
    r+='<div class="thumbnail">\n';
    r+='<div class="caption">\n';
    data.forEach(function(d){
       if(d['id']==count){
           if(primo==1){
               r+='<h2 style = "color:red;  text-align:center;">'+d['titolo']+ '<br><br>'+ '</h2>\n';
               primo++;
           }
           else{
               r+='<h4 style = "color:blue;">'+d['titolo']+ ' &raquo;' + '</h4>\n';
           }
       }
    });
    r+='</div>';
    r+='</div>';
    r+='</div>';
    count++;
    primo=1;
    r+='<div class="col-md-3">\n';
    r+='<div class="thumbnail">\n';
    r+='<div class="caption">\n'
    data.forEach(function(d){
       if(d['id']==count){
           if(primo==1){
               r+='<h2 style = "color:red;  text-align:center;">'+d['titolo']+ '<br><br>' + '</h2>\n';
               primo++;
           }
           else{
               r+='<h4 style = "color:blue;">'+d['titolo']+ ' &raquo;' + '</h4>\n';
           }
       }
    });
    r+='</div>';
    r+='</div>';
    r+='</div>';
    count++;
    primo=1;
    r+='<div class="col-md-3">\n';
    r+='<div class="thumbnail">\n';
    r+='<div class="caption">\n'
    data.forEach(function(d){
       if(d['id']==count){
           if(primo==1){
               r+='<h2 style = "color:red;  text-align:center;">'+d['titolo']+ '</h2>\n';
               primo++;
           }
           else{
               r+='<h4 style = "color:blue;">'+d['titolo']+ ' &raquo;' + '</h4>\n';
           }
       }
    });
    r+='</div>';
    r+='</div>';
    r+='</div>';
    count++;
    primo=1;
    r+='<div class="col-md-3">\n';
    r+='<div class="thumbnail">\n';
    r+='<div class="caption">\n'
    data.forEach(function(d){
       if(d['id']==count){
           if(primo==1){
               r+='<h2 style = "color:red;  text-align:center;">'+d['titolo'] +'</h2>\n';
               primo++;
           }
           else{
               r+='<h4 style = "color:blue;">'+d['titolo']+ ' &raquo;' + '</h4>\n';
           }
       }
    });
    r+='</div>';
    r+='</div>';
    r+='</div>';
    return r;
}
*/

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
        r+='<h4 style="color:blue;"><a href="#" class="att">'+d['titolo']+ ' &raquo;' + '</a>'+'</h4>\n';
        primo++;
        }
        else{
            r+='<h4 style="color:blue;">'+d['titolo']+ ' &raquo;' + '</h4>\n';
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
        r += '<h3 style = "color:red; text-align:left; font-size:2.5em;">' + 'ATTIVAZIONE LINEA DI CASA' + '</h3>\n';
        r+='<h4>'+d['descrizione']+'</h4>\n';
    });
    r+='</div>';
    r+='</div>';
    r+="</div></div>";
    
    return r;
}


/*products*/
function vprod(data, from, cat, theid)
{
    if(theid=='undefined')
        theid='';

    var r="";

    r+="<div class='container'>";

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


    r+="\n<div class=\"row\">";
    data.forEach(function(d){
        r+='<div class="col-sm-6 col-md-4">\n';
        r+='<div class="thumbnail text-center" style="min-height:400px;">\n';
        r+='<div class="caption">\n';
        r+='<h3>'+d['nome']+'</h3>\n';
        r+='<img style="max-height:200px;" src="img/'+d['immagine']+'" alt="Immagine'+d['immagine']+'">';
        r+='<h4 style="color:red;">'+d['prezzo']+'</h4>';
        r+='<div><a href="#" class="btn btn-primary prod_det" role="button" id="prod'+d['id']+'">Dettagli</a>' +
            ' <a href="#" class="btn btn-danger" role="button">Acquista</a></div>';
        r+='</div>';
        r+='</div>';
        r+='</div>';
    });
    r+="</div></div>";
    r+='<hr class="rigabella"></hr>';
    
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
    r+="</div></div>";
    
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
            r+='<img style="max-height:320px ; "src="img/'+d['immagine']+'" alt="Immagine'+d['immagine']+'" class="img-responsive">' ;
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
            r+='<img style="max-height:320px; "src="img/'+d['immagine']+'" alt="Immagine'+d['immagine']+'" class="img-responsive">' ;
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
        r += '<img style="max-height:250px;" ; src="img/'+d['immagine']+'" alt="Immagine'+d['immagine']+'">';
        r += '<div class="row-md-1"><br></div>';
        r += '<img style="max-height:250px;" src="img/'+d['immagine2']+'" alt="Immagine'+d['immagine2']+'">';
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
        r += '<img style="max-height:280px;" ; src="img/'+d['immagine']+'" alt="Immagine'+d['immagine']+'">';
        r += '<div class="row-md-1"><br><br></div>';
        r += '<img style="max-height:330px;" src="img/'+d['immagine2']+'" alt="Immagine'+d['immagine2']+'">';
        r += '<div class="row-md-1"><br></div>';
        r += '</div>';       
    });
    r+="</div></div>";
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

function prodotto(data)
{
    var r="";
    r+="<div class='container'>\n<div class=\"row\">";
    //r+="<pre>"+data[0]+"</pre>";
    data.forEach(function(d){
        r+='<div class="col-md-6">';
        r+='<div class="thumbnail">\n';
        r+='<div class="caption">\n';
        r+='<div class="row">';
        if(d['immagine4']==null && d['immagine2']==null && d['immagine3']==null){
            r+='<img style="max-width:540px; min-width:540px;" src="img/'+d['immagine']+'" alt="Immagine'+d['immagine']+'">';
        }
        else
            r+='<img style="max-width:270px;" src="img/'+d['immagine']+'" alt="Immagine'+d['immagine']+'">';
        if(d['immagine2']!=null){
            r+='<img style="max-width:270px;" src="img/'+d['immagine2']+'" alt="Immagine'+d['immagine2']+'">';
        }
        if(d['immagine3']!=null){
            r+='<img style="max-width:270px;" src="img/'+d['immagine3']+'" alt="Immagine'+d['immagine3']+'">';
        }
        if(d['immagine4']!=null){
            r+='<img style="max-width:270px;" src="img/'+d['immagine4']+'" alt="Immagine'+d['immagine4']+'">';
        }
        r+='</div>';
        r+='</div>';
        r+='</div>';
        r+='</div>';
        r+='<div class="col-md-6">';
        r+='<h1 style="color:red; font-weight:bold; text-align:center;">'+d['nome']+'</h1>\n';
        r+='<h6><br></h6>';
        r+= '<ul class="nav nav-tabs">';
        r+= '<li id="btn_prod_pres" role="presentation" class="active"><a href="#">Presentazione</a></li>';
        r+= '<li id="btn_prod_car" role="presentation"><a href="#">Caratteristiche</a></li>';
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
        r+='<h2 style="color:red; text-align:center; font-weight:bold;">'+ d['prezzo'] +'</h2>\n';
        if(d['prezzo_mese']!=0){
            r+='<div style="text-align:center;">oppure</div>';
            r+='<h2 style="color:red; text-align:center; font-weight:bold;">' + d['prezzo_mese'] + '</h2>\n';
            r+='<div style="text-align:center;">in 36 rate senza interessi se hai una linea di casa TIM<br><br></div>\n';
        }
        else {
            r += '<br>';
        }
        r+='<div class="text-center"><a href="#" class="btn-lg btn-danger" role="button">Acquista</a><br><br><br></div>';
        r+='<div class="text-center"><a style="margin-right:30px;" href="#" class="btn-lg btn-primary" role="button">Servizio di Assistenza</a>';
        r+='<a href="#" class="btn-lg btn-success" role="button">Servizio SmartLife</a></div>';
        r+= '</div>';
        
        r+= '<div id="prod_car" style="display:none;" class="col-md-11">';
        r+= '<br>'+d['caratteristiche_tecniche']+'<br>';
        r+='<div class="text-center"><a href="#" class="btn-lg btn-danger" role="button">Acquista</a><br><br><br></div>';
        r+='<div class="text-center"><a style="margin-right:30px;" href="#" class="btn-lg btn-primary" role="button">Servizio di Assistenza</a>';
        r+='<a href="#" class="btn-lg btn-success" role="button">Servizio SmartLife</a></div>';
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
        }
        else{
            r+='<h1 style="color:red; text-align:center;">'+d['titolo']+'</h1>\n';
            r+='<h4>'+d['descrizione']+'<br><br>'+'</h4>\n';
            
            r+='<div class="text-center"><a href="#" class="btn-lg btn-primary sl_det" role="button" id="sl_det'+d['id']+'"data-smart-title="'+d['titolo']+'">Scopri di piu</a><br></div>';
        }
        r+='</div>';
        r+='<div class="col-md-6">';
        if(count%2!=0){
            r+='<br><div class="pull-right"><img class="img-responsive" style="max-height:300px;" src="img/'+d['immagine']+'" alt="Immagine'+d['immagine']+'"></div>';
        }
        else{
            r+='<h1 style="color:red; text-align:center;">'+d['titolo']+'</h1>\n';
            r+='<h4>'+d['descrizione']+'<br><br>'+'</h4>\n';
            
            r+='<div class="text-center"><a href="#" class="btn-lg btn-primary sl_det" role="button" id="sl_det'+d['id']+'"data-smart-title="'+d['titolo']+'">Scopri di piu</a><br></div><br>';
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
            r+= '<li id="btn_sl_desc" role="presentation" class="active"><a href="#sl_desc">Descrizione</a></li>';
            r+= '<li id="btn_sl_att" role="presentation"><a href="#sl_att">Attivazione e Regole</a></li>';
            r+= '<li id="btn_sl_faq" role="presentation"><a href="#">FAQ</a></li>';
            r+= '</ul>';
            r+='<div id="sl_desc"><h4>'+d['descrizione']+'</h4></div>\n';
            r+='<div id="sl_att" style="display:none;"><h4>'+d['attivazione']+'</h4></div>\n';
            r+='</div>';
            r+= '<div class="col-md-6">';
            r+='<img style="min-width:700px; padding:20px;" src="img/'+d['immagine']+'" alt="Immagine'+d['immagine']+'">';
            r+='</div>';
        }
        else{
            r+='<img style="min-width:1250px; padding:20px;" src="img/'+d['immagine']+'" alt="Immagine'+d['immagine']+'">';
            r+= '<ul class="nav nav-tabs">';
            r+= '<li id="btn_sl_desc" role="presentation" class="active"><a href="#sl_desc">Descrizione</a></li>';
            r+= '<li id="btn_sl_att" role="presentation"><a href="#sl_att"">Attivazione e Regole</a></li>';
            r+= '<li id="btn_sl_faq" role="presentation"><a href="#">FAQ</a></li>';
            r+= '</ul>';
            r+= '<div class="col-md-1"></div>';
            r+= '<div class="col-md-10">';
            r+='<div id="sl_desc"><h4>'+d['descrizione']+'</h4></div>\n';
            r+='<div id="sl_att" style="display:none;"><h4>'+d['attivazione']+'</h4></div>\n';
            r+='</div>';
        }
    });
    return r;
}
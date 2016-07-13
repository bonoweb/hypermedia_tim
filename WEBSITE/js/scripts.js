
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
        r+= '<a href="#" class="prod" id="prod'+d['id']+'">' ;
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
    r+= "</div>\n</div>";
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
        r+= '<a href="#">' ;
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
    r+= "</div>\n</div>";
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
        r+= '<a href="#"class="ass" id="ass'+d['id']+'">' ;
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
    r+= "</div>\n</div>";
    return r;
}

function ass_servizi_1(data)
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

function highlights(data)
{
    var r="";
    r += "<div class='container' style='max-width:800px;'>\n<div class=\"col\">";
    r += '<h1 style = "color:red; font-weight:bold; text-align:center; font-size:3.5em;">' + 'HIGHLIGHTS' + '</h1><br>\n';
    r += '<div class="thumbnail">\n';
    r += '<div class="caption">\n';
    data.forEach(function(d){
        r+='<h4 style="color:blue;">'+d['titolo']+ ' &raquo;' + '</h4>\n';
    });
    r+='</div>';
    r+='</div>';
    r+="</div></div>";
    
    return r;
}


/*products*/
function vprod(data)
{
    var r="";
    r+="<div class='container'>\n<div class=\"row\">";
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

    return r;
}

function innovazione(data)
{
     var r="";
    r+="<div class='container'>\n<div class=\"row\">";
    data.forEach(function(d){
        r+='<div class="thumbnail">\n';
        r+='<div class="caption">\n';
        r+='<div class="row">';
        r+='<div class="col-md-6">';
        r+='<img style="max-width:100%;" src="img/'+d['immagine']+'" alt="Immagine'+d['immagine']+'" class="img-responsive text-center">' ;
        r+='</div>';
        r+='<div class="col-md-6">';
        r+='<h2>'+d['titolo']+'</h2>\n';
        r+='<h4>'+d['testo']+'</h4>\n';
        r+='</div>';
        r+='</div>';
        r+='</div>';
        r+='</div>';
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
        r+='<h2>'+d['testo']+'</h2>\n';
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
            r+='<h2 style="color:red;">'+d['titolo']+ '<br><br>' + '</h2>\n';
            r+='<h4>'+d['testo']+'</h4>\n';
            r+='</div>';
            r+='</div>';
            r+='</div>';
            r+='</div>';
        }
        else{
            r+='<h2 style="color:red;">'+d['titolo']+ '<br><br>' + '</h2>\n';
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
        r += '<div class="row-md-1"><br></div>';
        r += '<img style="max-height:260px;" src="img/'+d['immagine']+'" alt="Immagine'+d['immagine']+'">';
        r += '<div class="row-md-1"><br></div>';
        r += '<img style="max-height:270px;" src="img/'+d['immagine2']+'" alt="Immagine'+d['immagine2']+'">';
        r += '<div class="row-md-1"><br></div>';
        r += '<img style="max-height:250px;" src="img/'+d['immagine3']+'" alt="Immagine'+d['immagine3']+'">';
        r += '<div class="row-md-1"><br></div>';
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
    data.forEach(function(d){
              
    });
    r+="</div></div>";
    return r;
}

function prodotto(data)
{
    var r="";
    r+="<div class='container'>\n<div class=\"row\">";
    r+="<pre>"+data[0]+"</pre>";
    /*data.forEach(function(d){

    });*/
    r+="</div></div>";
    return r;
}
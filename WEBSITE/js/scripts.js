
/*products categories with 5 elements */
function products_category(data)
{
    var r="";
    r += "<div class='container'>\n<div class=\"row\">";
    data.forEach(function(d){
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


/*products categories with 4 elements */
function fproducts_category(data)
{
    var r="";
    r += "<div class='container'>\n<div class=\"row\">";
    r+= '<div class="col-md-10 col-md-offset-1">';
    r+= '<div class="row">';
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

/*products*/
function vprod(data)
{
    r='';
    r+="<div class='container'>\n<div class=\"row\">";
    data.forEach(function(d){
        r+='<div class="col-sm-6 col-md-4">\n';
        r+='<div class="thumbnail text-center" style="min-height:400px;">\n';
        r+='<div class="caption">\n';
        r+='<h3>'+d['nome']+'</h3>\n';
        r+='<img style="max-height:200px;" src="img/'+d['immagine']+'" alt="Immagine'+d['immagine']+'">';
        r+='<h4 style="color:red;">'+d['prezzo']+'</h4>';
        r+='<div><a href="#" class="btn btn-primary" role="button">Dettagli</a> <a href="#" class="btn btn-danger" role="button">Acquista</a></div>';
        r+='</div>';
        r+='</div>';
        r+='</div>';
    });

    return r;
}

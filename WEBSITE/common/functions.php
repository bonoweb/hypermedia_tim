<?php

/*FUNCTIONS*/
require_once("constants.php");

/*DATABASE CONNECTION*/
try {
    global $DBH;
    /** DBH=DATABASE HANDLE **/
    /** STH=STATEMENT HANDLE **/
    $DBH = new PDO("mysql:host=$DB_servername;dbname=$DB_name;charset=utf8", $DB_username, $DB_password,
        array(
            PDO::ATTR_TIMEOUT => "30",
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
        ));
    // set the PDO error mode to exception
    $DBH->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch(PDOException $e) {
    echo "Errore di connessione al database!<br>";
    echo $e->getMessage();
    exit;
}


function get_products_categories()
{
    global $DBH;
    $query="SELECT * FROM prodotti_categorie";
    $STH=$DBH->prepare($query);
    $STH->execute();
    $res = $STH->fetchAll();
    return $res;
}

function get_smartlife_categories()
{
    global $DBH;
    $query="SELECT * FROM sl_categorie";
    $STH=$DBH->prepare($query);
    $STH->execute();
    $res = $STH->fetchAll();
    return $res;
}

function get_ass_serv_categories()
{
    global $DBH;
    $query="SELECT * FROM assistenza_categorie";
    $STH=$DBH->prepare($query);
    $STH->execute();
    $res = $STH->fetchAll();
    return $res;
}


function get_products_by_category($idcategory){
    global $DBH;

    if($idcategory==5)
    {
        //prodotti in outlet
        $query = "SELECT * FROM prodotti WHERE outlet = 1";
        $STH = $DBH->prepare($query);
    }
    else
    {
        $query = "SELECT * FROM prodotti WHERE id_categoria= :idcategory";
        $STH = $DBH->prepare($query);
        $STH->bindParam(":idcategory", $idcategory);
    }

    $STH->execute();
    $rowcount = $STH->rowCount();
    if ($rowcount == 0) {
        return null;
    } else {
        return $STH->fetchAll();
    }
}
function OOOOOOOOOO_get_products_categories()
{
    global $DBH;
    $query="SELECT * FROM prodotti_categorie";
    $STH=$DBH->prepare($query);
    $STH->execute();
    $res = $STH->fetchAll();
    echo "<div class='container'>\n<div class=\"row\">";
    foreach ($res as $cat)
    {
        $offset='';
        if($cat['id']==4)
        {
            $offset = "col-md-offset-2";
        }
        echo "<a href=\"prodotti.php?idcategoria=".$cat['id']."\">";
        echo "<div class=\"col-md-4 $offset \">\n";
        echo "<div class='col-md-10 col-md-offset-1 well text-center'>";
        $icon = $cat['icona'];
        echo "<span class=\"fa fa-5x $icon \"></span>\n";
        echo '<br>';
        echo "<strong>".$cat['titolo']."</strong>\n";
        echo '</div>';
        echo '</div>';
        echo '</a>';
    }
    echo "</div>\n</div>";
    
}

function OOOOOOOOOO_get_products_by_category($idcategory)
{
    global $DBH;

    if($idcategory==5)
    {
        //prodotti in outlet
        $query = "SELECT * FROM prodotti WHERE outlet = 1";
        $STH = $DBH->prepare($query);
    }
    else
    {
        $query = "SELECT * FROM prodotti WHERE id_categoria= :idcategory";
        $STH = $DBH->prepare($query);
        $STH->bindParam(":idcategory", $idcategory);
    }

    $STH->execute();
    $rowcount = $STH->rowCount();
    if ($rowcount == 0) {
        echo "<div class=\"alert alert-danger\">Nessun prodotto disponibile nella categoria scelta.</div>";
    } else {
        $res = $STH->fetchAll();
        echo "<div class='container'>\n<div class=\"row\">";
        foreach ($res as $prod) {
            ?>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail text-center" style="min-height:400px;">

                    <div class="caption">
                        <h3><?php echo $prod['nome']; ?></h3>
                        <img style="max-height:200px;" src="img/<?php echo $prod['immagine']; ?>" alt="Immagine<?php echo $prod['nome']; ?>">
                        <h4 style="color:red;"><?php echo $prod['prezzo']; ?></h4>
                        <div style="/*position: absolute; bottom: 0;*/"><a href="#" class="btn btn-primary" role="button">Dettagli</a> <a href="#"
                                                                                           class="btn btn-danger"
                                                                                           role="button">Acquista</a></div>
                    </div>
                </div>
            </div>

            <?php
        }
    }

    echo "</div>\n</div>";
}

?>
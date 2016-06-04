<?php

/*FUNCTIONS*/
require_once("constants.php");

/*DATABASE CONNECTION*/
try {
    global $DBH;
    /** DBH=DATABASE HANDLE **/
    /** STH=STATEMENT HANDLE **/
    $DBH = new PDO("mysql:host=$DB_servername;dbname=$DB_name", $DB_username, $DB_password,
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
    echo "<div class='container'>\n<div class=\"row\">";
    foreach ($res as $cat)
    {
        $offset='';
        if($cat['id']==4)
        {
            $offset = "col-md-offset-2";
        }
        echo "<div class=\"col-md-4 $offset \">\n";
        echo "<div class='col-md-10 col-md-offset-1 well text-center'>";
        $icon = $cat['icona'];
        echo "<span class=\"fa fa-5x $icon \"></span>\n";
        echo '<br>';
        echo "<strong>".$cat['titolo']."</strong>\n";
        echo '</div>';
        echo '</div>';
    }
    echo "</div>\n</div>";
    
}
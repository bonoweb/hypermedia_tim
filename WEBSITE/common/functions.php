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

function get_nuovi_prod() {
    global $DBH;
    $query="SELECT nome, immagine FROM prodotti WHERE promozione =1";
    $STH=$DBH->prepare($query);
    $STH->execute();
    $res = $STH->fetchAll();
    return $res;
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

/*
SELECT assistenza_categorie.titolo as titolo_categoria,
assistenza_sottocategorie.titolo as titolo_sottocategoria,
assistenza_sottocategorie.id as id_sottocategoria,
assistenza_servizi_esempio.titolo as tit,
assistenza_servizi_esempio.id as tid
FROM assistenza_categorie
join assistenza_sottocategorie on assistenza_categorie.id=assistenza_sottocategorie.id_categoria
join assistenza_servizi_esempio on assistenza_sottocategorie.id = assistenza_servizi_esempio.id_sottocategoria
where assistenza_categorie.id = 2

*/



/**
 * @param $idcategory
 * @return title of the category chosen
 */
function get_ass_serv_category_name($idcategory)
{
    global $DBH;
    $query="SELECT titolo FROM assistenza_categorie WHERE id = :idcategory";
    $STH=$DBH->prepare($query);
    $STH->bindParam(':idcategory',$idcategory);
    $STH->execute();
    $res = $STH->fetchAll();
    return $res[0]['titolo'];
}

/**
 * returns title and ids on ass serv of the category chosed
 * @param $idcategory
 */
function get_ass_serv_subcategory_by_category($idcategory)
{
    global $DBH;
    $query =" SELECT * FROM `assistenza_sottocategorie` WHERE id_categoria= :idcategory ";
    $STH = $DBH->prepare($query);
    $STH->bindParam(":idcategory", $idcategory);
    $STH->execute();
    $res = $STH->fetchAll();
    return $res;
}

function get_ass_serv_by_subcategory_id($idsubcategory)
{
    global $DBH;
    $query = "SELECT * FROM assistenza_servizi_esempio WHERE id_sottocategoria = :ids";
    $STH = $DBH->prepare($query);
    $STH->bindParam(":ids", $idsubcategory);
    $STH->execute();
    $res = $STH->fetchAll();
    return $res;
}

function get_attivazione(){
    global $DBH;
    $query="SELECT descrizione FROM assistenza_servizi_esempio WHERE id=1";
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

function get_smartlife_img($idcategory){
    global $DBH;
    $query = "SELECT immagine FROM sl_categorie WHERE id= :idcategory";
    $STH = $DBH->prepare($query);
    $STH->bindParam(":idcategory", $idcategory);
    $STH->execute();
    $res = $STH->fetchAll();
    return $res;
}

function get_smartlife_by_category($idcategory){
    global $DBH;
    $query = "SELECT titolo, immagine, descrizione FROM sl_servizi WHERE id_categoria= :idcategory";
    $STH = $DBH->prepare($query);
    $STH->bindParam(":idcategory", $idcategory);
    $STH->execute();
    $res = $STH->fetchAll();
    return $res;
}

function get_promotions(){
    global $DBH;
    //prodotti in promozione + sl services in promozione
    //nome, immagine, e prezzo

    $query = "SELECT nome, immagine, prezzo FROM prodotti WHERE promozione = 1
              UNION 
              SELECT titolo as nome, immagine, '' as prezzo FROM sl_servizi WHERE promozione =1";
    $STH = $DBH->prepare($query);
    $STH->execute();
    $res = $STH->fetchAll();
    return $res;
}

function get_chisiamo($id)
{
    global $DBH;
    $query="SELECT * FROM chi_siamo WHERE id_categoria= :id";
    $STH=$DBH->prepare($query);
    $STH->bindParam(':id',$id);
    $STH->execute();
    $res = $STH->fetchAll();
    return $res;
}

function get_highlights(){
    global $DBH;
    $query="SELECT titolo FROM assistenza_servizi_esempio WHERE id IN (SELECT id_assistenza FROM highlights)";
    $STH=$DBH->prepare($query);
    $STH->execute();
    $res = $STH->fetchAll();
    return $res;
}

function get_gestione_linea(){
    global $DBH;
    $query="SELECT * FROM assistenza_servizi WHERE id_categoria=1";
    $STH=$DBH->prepare($query);
    $STH->execute();
    $res = $STH->fetchAll();
    return $res;
}


function get_gruppo($id)
{
    global $DBH;
    $query="SELECT * FROM gruppo WHERE id= :id";
    $STH=$DBH->prepare($query);
    $STH->bindParam(':id',$id);
    $STH->execute();
    $res = $STH->fetchAll();
    return $res;
}

function get_investitori(){
    global $DBH;
    $query="SELECT * FROM gruppo_sottocategoria_perinvestitori";
    $STH=$DBH->prepare($query);
    $STH->execute();
    $res = $STH->fetchAll();
    return $res;
}

/**
 * returns the single product with $id
 * @param $id
 */
function get_product($id){
    global $DBH;
    $query="SELECT * FROM prodotti WHERE id= :id";
    $STH=$DBH->prepare($query);
    $STH->bindParam(':id',$id);
    $STH->execute();
    $res = $STH->fetchAll();
    return $res;
}

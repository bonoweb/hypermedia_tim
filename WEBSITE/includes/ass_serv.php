<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

include_once('../common/functions.php');
header('Access-Control-Allow-Origin: *');


if(isset($_GET['idcategoria'])) {
    $idcategory = $_GET['idcategoria'];
    $thearr = Array();
    //titolo categoria
    $maintitle = get_ass_serv_category_name($idcategory);
    $thearr['maintitle']=$maintitle;

    //recupero tutte le sottocategorie
    $c = get_ass_serv_subcategory_by_category($idcategory);
    //per ogni sottocategoria


    foreach($c as $sub => $val)
    {

        //ottengo le sue colonne
        $thearr['serv'][$sub]['title']=$val['titolo'];

        $as = get_ass_serv_by_subcategory_id($val['id']);

        //singoli elementi
        foreach($as as $key => $ass)
        {
            $thearr['serv'][$sub]['cols'][$key]['title'] = $ass['titolo'];
            $thearr['serv'][$sub]['cols'][$key]['id'] = $ass['id'];
        }
    }

    echo json_encode($thearr);

    /*
    //foreach($c as $ass) ;
    for($k=0;$k<count($c);$k++)
    {
        $ass_col = $c[$k];
        var_dump($ass_col);
        //echo json_encode($ass);
        foreach($ass_col as $ass) {

            //global $i;

            $thearr[$k]['title'] = $ass['titolo'];
            $as = get_ass_serv_by_subcategory_id($ass['id']);
            for ($j = 0; $j < count($as); $j++) {
                $thearr[$k]['serv'][$j]['titolo'] = $as[$j]['titolo'];
                $thearr[$k]['serv'][$j]['id'] = $as[$j]['id'];
            }
            $i++;
        }
    }*/
   // echo json_encode($thearr);
}
else{
    echo json_encode(get_ass_serv_categories());
}
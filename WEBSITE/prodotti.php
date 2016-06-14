<!DOCTYPE HTML>
<html>
<head>
    <meta charset="ISO-8859-1">
    <?php
    include_once('includes/head.php');
    include_once('common/functions.php');
    ?>
</head>
<body>
<?php include_once('includes/header.php'); ?>

<?php
if(!isset($_GET['idcategoria'])) {
    get_products_categories();
}
else{
    $idcategory=$_GET['idcategoria'];
    get_products_by_category($idcategory);
}
?>


<?php include("includes/footer.php"); ?>
</body>
</html>

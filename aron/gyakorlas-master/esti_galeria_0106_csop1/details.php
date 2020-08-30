<?php
require_once('config/init.php');
if (!isLogged()){
    $_SESSION['loginError'] = "Információ megtekintésehez be kell jelentkezni!";
    header('Location: login.php');
    die();
}
$html = '';
if($_SERVER['REQUEST_METHOD'] == 'GET' && (!empty($_GET['kep']))){
    $kep = $_GET['kep']; //kép adatbázbeli azonosítója
    //var_dump($kep);    
    $sql = "SELECT * FROM kepek WHERE id = ?";
    $stmt = $con -> prepare($sql);
    $stmt -> bind_param('i',$kep);
    $stmt -> execute();
    $stmt -> bind_result($id, $fid, $cim, $fajl, $utvonal, $leiras, $keszult, $feltolt);
    $stmt ->fetch();
    $stmt ->close();
    $html = '<div class="card">'
            .'<div class="card-header">'
            .'<h2 class="card-text">'.$cim.'</h2>'
            .'</div>'
            .'<div class="card-body">'
            .'<img class="w-25 rounded" src ="'.$utvonal.$fajl.'" alt="kávé" title='.$cim.'>'
            .'<p class="card-text font-weight-bold">'.$leiras.'</p>'
            .'<p class="card-text">Készült: '.$keszult.'</p>'
            .'<p class="card-text">Feltöltés dátuma: '.$feltolt.'</p>'
            .'</div>'
            .'</div>';
    //var_dump($fajl);
    
    
}

printHTML('html/header.html');
echo printMenu();
echo $html;
printHTML('html/footer.html');

$con -> close();
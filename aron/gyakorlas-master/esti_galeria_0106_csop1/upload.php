<?php

require_once('config/init.php');
$folder='images/';
$content="";
$allowedType = array("image/png", "image/jpg", "image/jpeg", "image/bmp");

if (!isLogged()){
    $_SESSION['loginError'] = 'Képek feltöltéséhez először jelentkezz bei!';
    header('Location: login.php');
    die();
}
$fid =$_SESSION['fid'];

if($_SERVER['REQUEST_METHOD'] == 'POST' && (!empty($_FILES['file']))){
    //var_dump($_FILES['file']);
    
    $fileType = $_FILES['file']['type'];
    $fileName = $_FILES['file']['name'];
    $tmp = $_FILES['file']['tmp_name'];
    $title = $_POST['title'];
    $desc = $_POST['description'];
    $date =$_POST['date'];
    //var_dump($_POST);
    
    //echo $fileType, $fileName, $tmp;
    if(!in_array($fileType, $imgTypes)){    
        //Nem kép       
        $_SESSION['upload'] .='<h3 class ="text-danger"> Nem engedélyezettt fájltípus!</h3>';
    }else{
        if(file_exists($folder.$fileName)){
            //Már létezik a kép
            $_SESSION['upload'] .= '<h3 class ="text-danger" >A kép már korábban feltöltésre került!</h3>';
                       
        }else{
         move_uploaded_file($tmp, $folder.$fileName);
         $sql = "INSERT INTO kepek(fid, cim, fajlnev, utvonal, leiras, keszult, feltoltes)VALUES($fid, ? ,'$fileName', '$folder', ?, ?, CURDATE())";
        
          $stmt = $con -> prepare($sql);
          $stmt -> bind_param("sss", $title, $desc, $date);
          $stmt -> execute();
        }
    }    
    
}else{
    //Nem kattintott a feltöltésre
    if(isset($POST['submit'])){
    $_SESSION['upload'] .= '<h3 class="text-danger"> Nem kattintottál a feltöltés gombra!</h3>';
    header('Location: upload.php');
    }
    
}

printHTML('html/header.html');
echo printMenu();
if(!empty($_SESSION['upload'])){
    echo $_SESSION['upload'];
    unset($_SESSION['upload']);
    
    
}
printHTML('html/upload_form.html');
printHTML('html/footer.html');
$con->close();



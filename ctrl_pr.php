<?php
include_once("connection.php");

if (isset($_POST['submit'])) {

    $NIM = $_POST['NIM'];


$sql = "INSERT INTO record_presensi(NIM, NAMA_MHS, STATUS) SELECT NIM, NAMA_MHS, STATUS FROM mhs WHERE NIM = '$NIM';";
$query = mysqli_query($connect, $sql);
if( $query ){
    header('Location: home_presensi.php');
}else{
    header('Location: eror.php');
}
} else {
die("akses dilarang..");
}
?>
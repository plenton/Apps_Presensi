<?php
   $namaServer = "#"; //yourlocalhost
   $namauser = "root";
   $namaPass = "";
   $namaDb = "presensi";

   $connect = mysqli_connect($namaServer, $namauser, $namaPass, $namaDb);

   if (!$connect) {
    die("problem :" .mysqli_connect_error());
   }else{
    echo " ";

   }
?>

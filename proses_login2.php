<?php
    include 'connection.php';
    $username = $_POST['username'];
    $password = ($_POST['password']);

    if (!empty($username) && !empty($password)) {
        $query = mysqli_query($connect, "SELECT * FROM `login_dosen` where NID='$username' && password='$password'");
        $result = mysqli_num_rows($query);

        if ($result>0) {
            header("location:home_presensi.php");
        }else{
           echo "akun tidak ditemukan, silahkan registrasi dahulu.....!" . "</br";
           echo "<tr>". "<td><a href='form_register.php'> | klik disini untuk REGISTRASI</a>";
        }
    }else{
        header("location:login.php?app:error");
    }
?>
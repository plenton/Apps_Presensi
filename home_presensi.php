<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

<body style="background-color: blueviolet">
<div class="bg-succes p-2 text-dark bg-opacity-10">
    <h1 class="p-4 text-center"> PRESENSI MAHASISWA </h1>
    <div class="container">
        <form action="ctrl_pr.php" method="POST">
            <!--div class="col-md-6 offset-md-3"-->
            <div class="row center">
                <div class="col-md-3">
                    <input type="text" class="form-control" name="NIM" placeholder="masukan NIM">
                </div>
                <div class="col-md-3">
                    <button type="submit" class="btn btn-primary" name="submit">PRESENSI</button>

</div>


<div>
<table class="my-5 table table-striped" style="width: 100%; ">
                        
                        <tr class="table-dark">
                        <th class="satu" style="width: 10%">No</th>
                        <th style="width: 10%;">NIM</th>
                        <th style="width: 40%;" >NAMA</th>
                        <th style="width: 20%;" >STATUS</th>
                        <th style="width: 20%;" >WAKTU</th>
                        </tr>
<?php
include ("connection.php");
$sql = "SELECT * FROM `record_presensi`";
$query = mysqli_query($connect, $sql);
$nomor = 1;
while ($dosen = mysqli_fetch_array($query))
{
    //echo "<div class="card">";
    echo "<tr>";
    echo "<td>" . $nomor . "</td>";
    echo "<td>" . $dosen['NIM'] . "</td>";
    echo "<td>" . $dosen['NAMA_MHS'] . "</td>";
    echo "<td>" . $dosen['STATUS'] . "</td>";
    echo "<td>" . $dosen['waktu'] . "</td>";
   $nomor++;

?>
<?php }?>
</table>
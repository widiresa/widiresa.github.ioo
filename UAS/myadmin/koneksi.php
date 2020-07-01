<?php
    $server = "localhost";
    $username = "root";
    $password = "";
    $database = "labportal";

    $koneksi = mysqli_connect($server,$username,$password,$database) OR DIE ("Koneksi Gagal");
?>
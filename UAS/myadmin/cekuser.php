<?php 
    include_once("koneksi.php");
    // mengaktifkan session php
    session_start();
        // menangkap data yang dikirim dari form
        $username = $_POST['username'];
        $password = $_POST['password'];
        
        // menyeleksi data admin dengan username dan password yang sesuai
        $data = mysqli_query($koneksi,"select * from users where user_id='$username' and passwd='$password'");
        
        //mengambil data dari database user
        $hasil = mysqli_fetch_array($data);
    
        // menghitung jumlah data yang ditemukan
        $cek = mysqli_num_rows($data);
        
        if($cek > 0){
            $_SESSION['namauser'] = $hasil['nama'];
            header("location:index.php");
        }else{
            header("location:login.php?pesan=username/password salah");
        }
?>
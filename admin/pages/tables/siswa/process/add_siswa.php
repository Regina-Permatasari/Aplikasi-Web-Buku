<?php
    // include DB connection file
    include '../../../../../helper/connection.php';

    // mendapatkan nilai dari form
    $id_siswa        = $_POST['id_siswa'];
    $nama_siswa      = $_POST['nama_siswa'];
    $jk_siswa        = $_POST['jk_siswa'];
    $alamat_siswa      = $_POST['alamat_siswa'];
    $email_siswa      = $_POST['email_siswa'];
    $telp_siswa      = $_POST['telp_siswa'];

    $query = "INSERT INTO siswa VALUES ('$id_siswa','$nama_siswa','$jk_siswa','$alamat_siswa','$email_siswa','$telp_siswa',0)";

    // menjalankan query isi data
    if (mysqli_query($con, $query))
    {
        header("Location:../table_siswa.php");
    }
    else
    {
        $error = urldecode("Data tidak berhasil ditambahkan");
        header("Location:../table_siswa.php?error=$error");
    }

    mysqli_close($con);
?>
<?php
    // include DB connection file
    include '../../../../../helper/connection.php';

    // mendapatkan nilai dari form
    $id_siswa     = $_POST['id_siswa'];
    $nama_siswa    = $_POST['nama_siswa'];
    $jk_siswa    = $_POST['jk_siswa'];
    $alamat_siswa    = $_POST['alamat_siswa'];
    $email_siswa    = $_POST['email_siswa'];
    $telp_siswa    = $_POST['telp_siswa'];

    $query = "UPDATE siswa SET nama_siswa = '$nama_siswa', jk_siswa = '$jk_siswa', alamat_siswa = '$alamat_siswa', email_siswa = '$email_siswa', telp_siswa = '$telp_siswa' WHERE id_siswa = '$id_siswa'";

    // menjalankan query isi data
    if (mysqli_query($con, $query))
    {
        header("Location:../table_siswa.php");
    }
    else
    {
        $error = urldecode("Data tidak berhasil diupdate");
        header("Location:../table_siswa.php?error=$error");
    }

    mysqli_close($con);
?>
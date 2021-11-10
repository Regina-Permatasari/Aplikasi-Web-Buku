<?php
    // include DB connection file
    include '../../../../../helper/connection.php';

    // mendapatkan nilai dari form
    $id_siswa = $_GET['id_siswa'];

    $query = "UPDATE siswa SET deleted = 1 WHERE id_siswa = '$id_siswa'";

    // menjalankan query isi data
    if (mysqli_query($con, $query))
    {
        header("Location:../table_siswa.php");
    }
    else
    {
        $error = urldecode("Data tidak berhasil dihapus");
        header("Location:../table_siswa.php?error=$error");
    }

    mysqli_close($con);
?>
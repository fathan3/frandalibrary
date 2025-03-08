<?php
$id = $_GET['id'];
$query = mysqli_query($koneksi, "DELETE FROM buku WHERE bukuID=$id");

if ($query) {
    echo "<script>alert('Hapus Buku Berhasil'); location.href='?page=page/buku/Daftar buku'</script>";
} else {
    echo "<script>alert('Hapus Buku Gagal'); location.href='?page=page/buku/detail_buku'</script>";
}
?>
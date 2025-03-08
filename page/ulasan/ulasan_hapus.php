<?php
$id = $_GET['id'];
$query = mysqli_query($koneksi, "DELETE FROM ulasanbuku WHERE UlasanID='$id'");

if ($query) {
    echo "<script>alert('Hapus Buku Berhasil'); location.href='?page=page/ulasan/ulasan'</script>";
} else {
    echo "<script>alert('Hapus Buku Gagal'); location.href='?page=page/ulasan/ulasan'</script>";
}
?>
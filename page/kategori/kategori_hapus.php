<?php
$id = $_GET['id'];
$query = mysqli_query($koneksi, "DELETE FROM kategoribuku WHERE KategoriID=$id");

if ($query) {
    echo "<script>alert('Hapus Kategori Berhasil'); location.href='?page=page/kategori/kategori'</script>";
} else {
    echo "<script>alert('Hapus Kategori Gagal'); location.href='?page=page/kategori/kategori'</script>";
}
?>
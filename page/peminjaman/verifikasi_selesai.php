<?php
date_default_timezone_set('Asia/Jakarta');

if (isset($_GET['id_pinjam']) && isset($_GET['BukuID'])) {
    $id_pinjam = $_GET['id_pinjam']; $BukuID = $_GET['BukuID'];
    $status = 'dikembalikan';
    $tgl_kembali = date('Y-m-d H:i:s');

    $query = mysqli_query($koneksi, "UPDATE peminjaman SET TanggalPengembalian = '$tgl_kembali', StatusPeminjaman = '$status' WHERE PeminjamanID = $id_pinjam");

    if ($query) {
        echo "<script>alert('Verifikasi Sukses, Peminjaman Selesai'); location.href='?page=page/peminjaman/peminjaman'</script>";
    }
}
?>
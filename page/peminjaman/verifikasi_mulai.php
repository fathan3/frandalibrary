<?php
date_default_timezone_set('Asia/Jakarta');

if (isset($_GET['id_pinjam']) && isset($_GET['BukuID'])) {
    $id_pinjam = $_GET['id_pinjam']; $BukuID = $_GET['BukuID'];
    $status = 'dipinjam';
    $tgl_pinjam = date('Y-m-d H:i:s');
    $maxtgl_pengembalian = date('Y-m-d H:i:s', strtotime($tgl_pinjam . ' +7 days')); // Menambahkan 7 hari

    //query update peminjaman
    $query = mysqli_query($koneksi, "UPDATE peminjaman SET TanggalPeminjaman = '$tgl_pinjam', maxtgl_pengembalian = '$maxtgl_pengembalian', StatusPeminjaman = '$status' WHERE PeminjamanID = $id_pinjam");
    
    //query pengurangan stok
    
    if ($query) {
        echo "<script>alert('Verifikasi Sukses, Peminjaman dimulai'); location.href='?page=page/peminjaman/peminjaman'</script>";
    }  
}
?>
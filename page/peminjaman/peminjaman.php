<h1 class="mt-4">Detail Peminjaman</h1>
<div class="card">
<div class="card-body">
<div class="row">
 <div class="col-md-12">
 <?php if ($_SESSION['user']['level'] != 'peminjam'){?>
  <button type="button" class="btn  btn-dark" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-print"></i> Periode Peminjam</button>

 <?php } ?>
 

 <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
 <thead>
 <tr>
 <th width="1">Kode Pinjam</th>

 <?php if ($_SESSION['user']['level'] != 'peminjam') {?>
 <th width="<?php if ($_SESSION['user']['level'] != 'peminjam') { echo '1';} ?>">Nama</th>
<?php } ?>
<th>Buku</th>
<th>Tanggal Pinjam</th>
<th>Tanggal Kembali</th>
 <th>Maks Tanggal Kembali</th>
<th>Status</th>
<th>Aksi</th>
</tr>
 </thead>
<tbody>
 <?php 
 $kd_peminjam = $_SESSION['user']['UserID'];
 $query1 = mysqli_query($koneksi, "SELECT * FROM user WHERE userID=$kd_peminjam");
 $data1 = mysqli_fetch_array($query1);

 $query2 = mysqli_query($koneksi, "SELECT * FROM peminjaman LEFT JOIN user ON user.UserID = peminjaman.UserID LEFT JOIN buku ON buku.BukuID = peminjaman.BukuID WHERE peminjaman.UserID=$kd_peminjam");

 $i = 1;
 if ($_SESSION['user']['level'] == 'peminjam'){
 $query = mysqli_query($koneksi, "SELECT * FROM peminjaman p
 LEFT JOIN user u ON u.UserID = p.UserID 
 LEFT JOIN buku b ON b.bukuID = p.bukuID 
 WHERE p.userID='$kd_peminjam'"); 
} else {
 $query = mysqli_query($koneksi, "SELECT * FROM peminjaman p
 LEFT JOIN user u ON u.userID = p.userID 
 LEFT JOIN buku b ON b.bukuID = p.bukuID");
}
?>
<?php while ($data = mysqli_fetch_array($query)) {
 if ($data['StatusPeminjaman'] == 'dikembalikan') {
 $kelasWarna = 'text-success';
 } else if ($data['StatusPeminjaman'] == 'dipinjam') {
 $kelasWarna = 'text-warning'; 
 } 
?>
<tr>
 <td><?php echo $data['kodepinjam']; ?></td>

 <?php if ($_SESSION['user']['level'] != 'peminjam') {?>
 <td><?php echo $data['NamaLengkap']; ?></td>
<?php } ?>
<td><?php echo $data['Judul']; ?></td>
<?php if ($_SESSION['user']['level'] != 'peminjam') {?>
                                     <?php } ?>
<td><?php echo $data['TanggalPeminjaman']; ?></td>
<td><?php echo $data['TanggalPengembalian']; ?></td>
 <td><?php echo $data['maxtgl_pengembalian']; ?></td>
 <td class="<?php echo $kelasWarna ?>"><?php echo $data['StatusPeminjaman']; ?></td>
 <td>
                                                    <?php 
                                                    // Check for borrower and "dipinjam" status
                                                    if ($_SESSION['user']['level'] == 'peminjam' && $data['StatusPeminjaman'] == 'dipinjam') { ?>
                                                        <a onclick="return confirm('Apakah Anda yakin ingin memverifikasi pengembalian buku?')"
                                                           href="?page=page/peminjaman/verifikasi_selesai&id_pinjam=<?= $data['PeminjamanID']; ?>&BukuID=<?= $data['BukuID']; ?>" 
                                                           class="btn btn-success">
                                                        <i class="fa-solid fa-square-check"></i> Kembali
                                                        </a>
                                                        <a href="?page=page/buku/baca_buku&&id=<?= $data['BukuID']; ?>" 
                                                           class="btn btn-danger">
                                                        <i class="fa-solid fa-square"></i> Baca
                                                        </a>
                                                    <?php } else if ($_SESSION['user']['level'] != 'peminjam' && $data['StatusPeminjaman'] == 'antri') { ?>
                                                        <a onclick="return confirm('Apakah Anda yakin ingin memverifikasi peminjaman buku?')" 
                                                           href="?page=page/peminjaman/verifikasi_mulai&id_pinjam=<?= $data['PeminjamanID']; ?>&BukuID=<?= $data['BukuID']; ?>" 
                                                           class="btn btn-primary">
                                                        <i class="fa-solid fa-square-check"></i> Pinjam
                                                        </a>
                                                        
                                                    <?php } else if ($_SESSION['user']['level'] != 'peminjam' && $data['StatusPeminjaman'] == 'dipinjam') { ?>
                                                       <a onclick="return confirm('Apakah Anda yakin ingin memverifikasi pengembalian buku?')"
                                                           href="?page=page/peminjaman/verifikasi_selesai&id_pinjam=<?= $data['PeminjamanID']; ?>&BukuID=<?= $data['BukuID']; ?>" 
                                                           class="btn btn-success">
                                                        <i class="fa-solid fa-square-check"></i> Kembali
                                                        </a>
                                                    <?php }else { ?>
                                                        <?php } ?>
                                                </td>
                                            </tr>
                                        <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

               <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModal" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
            <h1 class="modal-title fs-5" id="exampleModalLabel">Tambah Data</h1> <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="page/peminjaman/cetakpeminjaman.php" method="post" enctype="multipart/form-data" >
                <div class="row">
                    <div class="col-md-6 mt-3 ml-2">
                    <label for="basicInput">dari tanggal</label>
                        <input type="date" class="form-control mb-4" placeholder="Genre" name="daritanggal">
                    </div>
                    <div class="col-md-6 mt-3 ml-2">
                    <label for="basicInput">sampai tanggal</label>
                        <input type="date" class="form-control mb-4" placeholder="Genre" name="sampaitanggal">
                    </div>
                    <div class="col-6 mt-2 justify-content">
                    <button type="submit" name="cetak" class="btn btn-primary">Cetak</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

                                                        


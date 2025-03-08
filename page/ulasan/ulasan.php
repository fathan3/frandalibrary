<h1 class="mt-4">Ulasan Buku</h1>
<div class="card">
<div class="card-body">
<div class="row">
<div class="col-md-12">
<?php if($_SESSION['user']['level'] == 'peminjam') { ?>
<a href="?page=page/ulasan/ulasan_tambah" class="btn btn-dark mb-3"><i class="fa-solid fa-plus"></i> Tambah Ulasan</a>
<?php } ?>
<table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
<thead>
<tr>
<th width="1">No</th>
<th>User</th>
<th>Buku</th>
<th>Ulasan</th>
<th width="1">Rating</th>
<?php
if ($_SESSION['user']['level'] == 'admin') {
?>
<th width="1">Aksi</th>
<?php
}
?>
</tr>
</thead>
<tbody>
<?php
$i = 1;
if ($_SESSION['user']['level'] == 'peminjam') {
$query = mysqli_query($koneksi, "SELECT * FROM ulasanbuku LEFT JOIN user ON user.UserID = ulasanbuku.UserID LEFT JOIN buku ON buku.BukuID = ulasanbuku.BukuID WHERE ulasanbuku.UserID = " . $_SESSION['user']['UserID']);
} else {
$query = mysqli_query($koneksi, "SELECT * FROM ulasanbuku LEFT JOIN user ON user.userID = ulasanbuku.userID LEFT JOIN buku ON buku.bukuID = ulasanbuku.bukuID");
}
while ($data = mysqli_fetch_array($query)) {
if ($data['Rating'] >= 7) {
$kelasWarna = 'text-success';
} else if ($data['Rating'] >= 4) {
$kelasWarna = 'text-warning';
} else {
$kelasWarna = 'text-danger';
}
?>
<tr>
<td align="center"><?php echo $i++; ?></td>
<td><?php echo $data['NamaLengkap']; ?></td>
<td><?php echo $data['Judul']; ?></td>
<td><?php echo $data['ulasan']; ?></td>
<td class="<?php echo $kelasWarna?>"><?php echo $data['Rating']; ?> <i class="bi bi-star-fill"></i></td>
<?php
if ($_SESSION['user']['level'] == 'admin') {
?>
<td>
<a onclick="return confirm('Apakah Anda yakin ingin menghapus ulasan (<?php echo $data['UlasanID'] ?>)? ')" href="?page=page/ulasan/ulasan_hapus&&id=<?php echo $data['UlasanID']; ?>" class="btn btn-danger"><i class="fa-solid fa-trash"></i></a>
</td>
<?php
}
?>
 
</tr>

<?php
}
?>
</tbody>
</table>
</div>
</div>
</div>
</div>

<h1 class="mt-4">Tambah Buku</h1>
<div class="card">
    <div class="card-body">
        <div class="row px-3">
            <div class="col-md-4">
            <?php if (isset($data['cover'])) { ?>
  <img src="./assets/img/uploaded_book/<?=$data['cover']?>" class="card-img-top" alt="Cover Buku <?php echo $data['Judul']; ?>">
<?php } else { ?>
  <img src="./assets/img/bookcovernotavailable.jpeg" class="card-img-top" alt="Cover Buku <?php echo $data['Judul']; ?>">
<?php } ?>
            </div>
            <div class="col-md-8">
            <form method="post" enctype="multipart/form-data">
                    
                    <div class="card" style="width: 30rem;">
                        <div class="card-body">
                            <table class="table">
                                <tr>
                                    <td width="150rem">Cover Buku (png/jpg/jpeg)</td>
                                    <td width="1">:</td>
                                    <td>
                                        <input type="file" class="form-control" name="cover" accept=".png, .jpeg, .jpg">
                                    </td>
                                </tr>
                                <tr>
                                    <td width="150rem">Judul</td>
                                    <td width="1">:</td>
                                    <td>
                                        <input type="text" class="form-control" name="Judul" required oninvalid="this.setCustomValidity('Judul tidak boleh kosong')" oninput="setCustomValidity('')">
                                    </td>
                                </tr>
                                <tr>
                                    <td>Deskripsi</td>
                                    <td>:</td>
                                    <td>
                                        <textarea class="form-control" name="deskripsi" style="height: 100px" required oninvalid="this.setCustomValidity('Deskripsi tidak boleh kosong')" oninput="setCustomValidity('')"></textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Kategori</td>
                                    <td>:</td>
                                    <td>
                                        <select name="KategoriID" class="form-control">
                                            <option selected disabled>Pilih kategori</option>
                                            <?php
                                            $kat = mysqli_query($koneksi, "SELECT * FROM kategoribuku");
                                            while ($kategori = mysqli_fetch_array($kat)) { ?>
                                                <option value="<?php echo $kategori['KategoriID']; ?>"><?php echo $kategori['NamaKategori'] ?></option>
                                            <?php } ?>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Penulis</td>
                                    <td>:</td>
                                    <td><input type="text" class="form-control" name="Penulis" required oninvalid="this.setCustomValidity('Penulis tidak boleh kosong')" oninput="setCustomValidity('')"></td>
                                </tr>
                                <tr>
                                    <td>Penerbit</td>
                                    <td>:</td>
                                    <td><input type="text" class="form-control" name="Penerbit" required oninvalid="this.setCustomValidity('Penerbit tidak boleh kosong')" oninput="setCustomValidity('')"></td>
                                </tr>
                                <tr>
                                    <td>Tahun Terbit</td>
                                    <td>:</td>
                                    <td><input type="number" class="form-control" name="TahunTerbit" required oninvalid="this.setCustomValidity('Tahun Terbit tidak boleh kosong')" oninput="setCustomValidity('')"></td>
                                </tr>
                                <tr>
                                    <td>File Buku (PDF)</td>
                                    <td>:</td>
                                    <td><input type="file" class="form-control" name="linkbuku" required oninvalid="this.setCustomValidity('File Buku tidak boleh kosong')" oninput="setCustomValidity('')"></td>
                                </tr>
                            </table>
                            <button type="submit" class="btn btn-dark" name="tambah" value="tambah"><i class="fa-solid fa-floppy-disk"></i> Simpan</button>
                            <button type="reset" class="btn btn-secondary">Reset</button>
                            <a href="?page=page/buku/Daftar buku" class="btn btn-danger"><i class="fa-solid fa-right-from-bracket"></i> Kembali</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<?php
// ... kode lainnya ...

if (isset($_POST['tambah'])) {
  // ... kode lainnya ...

  $KategoriID = htmlspecialchars($_POST['KategoriID']);
  $Judul = htmlspecialchars($_POST['Judul']);
  $deskripsi = htmlspecialchars($_POST['deskripsi']);
  $Penulis = htmlspecialchars($_POST['Penulis']);
  $Penerbit = htmlspecialchars($_POST['Penerbit']);
  $TahunTerbit = htmlspecialchars($_POST['TahunTerbit']);
  $nama_pdf = $_FILES['linkbuku']['name'];
  $source_pdf = $_FILES['linkbuku']['tmp_name'];
  $folder_pdf = './assets/img/uploaded_pdf/';
  $nama_file = $_FILES['cover']['name'];
  $source = $_FILES['cover']['tmp_name'];
  $folder = './assets/img/uploaded_book/';

  if (move_uploaded_file($source_pdf, $folder_pdf . $nama_pdf) && move_uploaded_file($source, $folder . $nama_file)) {

    $sql = "INSERT INTO buku (KategoriID, Judul, deskripsi, Penulis, Penerbit, TahunTerbit, cover, linkbuku) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    $stmt = mysqli_prepare($koneksi, $sql);

    // Bind parameters (Pengikatan parameter)
    $query = mysqli_stmt_bind_param($stmt, "isssssss", $KategoriID, $Judul, $deskripsi, $Penulis, $Penerbit, $TahunTerbit, $nama_file, $nama_pdf);

    // Periksa kesalahan pengikatan parameter
    $errno = mysqli_stmt_errno($stmt);
    if ($errno) {
      echo "<script>alert('Kesalahan pengikatan parameter: $errno')</script>";
      exit(); // Hentikan eksekusi skrip jika pengikatan parameter gagal
    }

    // Jalankan pernyataan yang disiapkan
    mysqli_stmt_execute($stmt);

    // Periksa kesalahan eksekusi
    $error = mysqli_stmt_error($stmt);
    if ($error) {
      echo "<script>alert('Kesalahan tambah buku: $error')</script>";
    } else {
      echo "<script>alert('TAMBAH BUKU BERHASIL'); location.href='?page=page/buku/Daftar buku'</script>";
    }

    mysqli_stmt_close($stmt); // Tutup pernyataan yang disiapkan
  }
}
// ... kode lainnya ...

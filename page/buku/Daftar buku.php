<h1 class="mt-4">Daftar Buku</h1>
<style>
    /*.card-s{*/
    /*    position: relative;*/
    /*    overflow: hidden;*/
    /*    transition: transform 0.4s ease;*/
    /*}*/
    /*.card-s:hover .hover-content {*/
    /*    opacity: 1;*/
    /*    transform: translateY(0);*/
    /*}*/
    /*.hover-content {*/
    /*    position: absolute;*/
    /*    bottom: 0%;*/
    /*    transform: translateY(100%);*/
    /*    text-align: center;*/
    /*    opacity: 1;*/
    /*    transition: opacity 0.4s ease, transform 0.4s ease;*/
    /*}*/
    
</style>
<div class="card">
    <div class="card-body">
        <div class="row">
            <div class="col-md-12">
                <div class="container">
                    <div class="row">
                        <div class="d-flex gap-2 justify-content-center" style="margin-bottom:1rem;">
                        <?php
                            if (isset($_POST['Novel'])) {
                                $query = mysqli_query($koneksi, "SELECT buku.*, kategoribuku.NamaKategori FROM buku INNER JOIN kategoribuku ON buku.KategoriID = kategoribuku.KategoriID WHERE kategoribuku.NamaKategori = 'Novel'");
                                $selectedCategory = 'Novel';
                            } elseif (isset($_POST['Komik'])) {
                                $query = mysqli_query($koneksi, "SELECT buku.*, kategoribuku.NamaKategori FROM buku INNER JOIN kategoribuku ON buku.KategoriID = kategoribuku.KategoriID WHERE kategoribuku.NamaKategori = 'Komik'");
                                $selectedCategory = 'Komik';
                            } elseif (isset($_POST['Ensiklopedia'])) {
                                $query = mysqli_query($koneksi, "SELECT buku.*, kategoribuku.NamaKategori FROM buku INNER JOIN kategoribuku ON buku.KategoriID = kategoribuku.KategoriID WHERE kategoribuku.NamaKategori = 'Ensiklopedia'");
                                $selectedCategory = 'Ensiklopedia';
                            } elseif (isset($_POST['Ilmu sosial'])) {
                                $query = mysqli_query($koneksi, "SELECT buku.*, kategoribuku.NamaKategori FROM buku INNER JOIN kategoribuku ON buku.KategoriID = kategoribuku.KategoriID WHERE kategoribuku.NamaKategori = 'Ilmu sosial'");
                                $selectedCategory = 'Ilmu sosial';
                                } elseif (isset($_POST['TIK'])) {
                                $query = mysqli_query($koneksi, "SELECT buku.*, kategoribuku.NamaKategori FROM buku INNER JOIN kategoribuku ON buku.KategoriID = kategoribuku.KategoriID WHERE kategoribuku.NamaKategori = 'TIK'");
                                $selectedCategory = 'TIK';
                            } elseif (isset($_POST['Agama'])) {
                                $query = mysqli_query($koneksi, "SELECT buku.*, kategoribuku.NamaKategori FROM buku INNER JOIN kategoribuku ON buku.KategoriID = kategoribuku.KategoriID WHERE kategoribuku.NamaKategori = 'Agama'");
                                $selectedCategory = 'Agama';
                                 
                            } else {
                                $query = mysqli_query($koneksi, "SELECT buku.*, kategoribuku.NamaKategori FROM buku INNER JOIN kategoribuku ON buku.KategoriID = kategoribuku.KategoriID");
                                $selectedCategory = 'all';
                            } 
                        ?>
                            <form action="" method="post">
                                <button type="submit" name="all" class="btn <?php echo $selectedCategory === 'all' ? 'btn-success' : 'btn-outline-success'; ?>">Semua</button>
                                <button type="submit" name="Novel" class="btn <?php echo $selectedCategory === 'novel' ? 'btn-success' : 'btn-outline-success'; ?>">Novel</button>
                                <button type="submit" name="Komik" class="btn <?php echo $selectedCategory === 'komik' ? 'btn-success' : 'btn-outline-success'; ?>">Komik</button>
                                <button type="submit" name="Ensiklopedia" class="btn <?php echo $selectedCategory === 'ensiklopedia' ? 'btn-success' : 'btn-outline-success'; ?>">Ensiklopedia</button>
                                <button type="submit" name="Ilmu sosial" class="btn <?php echo $selectedCategory === 'Ilmu sosial' ? 'btn-success' : 'btn-outline-success'; ?>">Ilmu Sosial</button>
                                 <button type="submit" name="TIK" class="btn <?php echo $selectedCategory === 'TIK' ? 'btn-success' : 'btn-outline-success'; ?>">TIK</button>
                                <button type="submit" name="Agama" class="btn <?php echo $selectedCategory === 'Agama' ? 'btn-success' : 'btn-outline-success'; ?>">Agama</button>
                            </form>
                            <?php if ($_SESSION['user']['level'] != 'peminjam') { ?>
                                <div class="d-flex align-items-end flex-column">
                                    <a href="?page=page/buku/buku_tambah" class="btn btn-dark " ><i class="fa-solid fa-plus"></i> Tambah Buku Baru</a>
                                </div>
                            <?php } ?>
                        </div>
                    </div><!-- row-->
                </div><!-- containder -->
            </div><!-- col -->
            <div class="col-md-4"></div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="container">
                    <div class="row row-cols-1 row-cols-md-5 g-4 ">
                        <?php 
                        while ($data = mysqli_fetch_assoc($query)) {
                        ?>
                        <div data-aos="fade-up" data-aos-anchor-placement="top-center">
                            <div class="col" style="height: 100%;">
                                <a href="?page=page/buku/detail_buku&&id=<?= $data["BukuID"]; ?>" style="text-decoration: none; color: black;">
                                    <div class="card card-s shadow"  style="height: 100%; border: none;">
                                        <?php if ($data['cover'] != null) {?>
                                            <img src="./assets/img/uploaded_book/<?=$data['cover']?>" class="card-img-top p-2" alt="..."  style="height: px;">
                                        <?php } else { ?>
                                            <img src="./assets/img/bookcovernotavailable.jpeg" class="card-img-top p-2" style="height: 246px;">
                                        <?php } ?>
                                        <div class="card-body pt-0 pb-0 ps-n4">
                                            <li class="list-group-item text-muted small">Kategori : <?=$data["NamaKategori"]; ?></li>
                                            <li class="list-group-item pt-1"><?php echo $data['Judul']?></li>
                                            <h6 class=""></h6> 
                                        </div>
                                        <div class="hover-content" style="width: 100%;">
                                            <div class="bg-dark py-1">
                                                <div>
                                                    
                                                <i class="fa-regular fa-eye text-light" style="width: 100%;"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div> <!-- card-->
                                </a>
                            </div> <!-- col -->
                        </div> <!-- aos -->
                        <?php }//while?>
                    </div>
                </div>         
            </div>
        </div>
    </div>
</div>


<!-- Chart JS -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script> 
<style>
    .card-s{
        position: relative;
        overflow: hidden;
        transition: transform 0.4s ease;
    }
    .card-s:hover .hover-content {
        opacity: 1;
        transform: translateY(0);
    }
    .hover-content {
        position: absolute;
        top: 0%;
        transform: translateY(-100%);
        text-align: center;
        opacity: 1;
        transition: opacity 0.4s ease, transform 0.4s ease;
    }
    .hover-content a {
        margin: 5px;
        text-decoration: none;
    }
</style>
<?php if ($_SESSION['user']['level'] == 'peminjam') {
    $utama = 'Home';

    $cekjmldipinjamuserini = mysqli_query($koneksi, "SELECT * FROM peminjaman WHERE StatusPeminjaman = 'dipinjam' AND ". $_SESSION['user']['UserID']);
    $jmldipinjamuserini = mysqli_num_rows($cekjmldipinjamuserini);
    $cekjmlantriuserini = mysqli_query($koneksi, "SELECT * FROM peminjaman WHERE StatusPeminjaman = 'antri' AND ". $_SESSION['user']['UserID']);
    $jmlantriuserini = mysqli_num_rows($cekjmlantriuserini);
    if ($jmldipinjamuserini > 0) {$warnaPinjam = 'text-warning';} else {$warnaPinjam = 'text-success';} 
    
    if ($jmlantriuserini > 0) {$warnaAntri = 'text-warning';} else {$warnaAntri = 'text-success';} 

    } else {
        $utama = 'Dashboard';
        
        // grafik batang
        // Mendapatkan data jumlah peminjaman untuk setiap buku
        $query = "SELECT buku.Judul, COUNT(peminjaman.BukuID) AS qty
                  FROM peminjaman
                  JOIN buku ON peminjaman.BukuID = buku.BukuID
                  GROUP BY buku.BukuID
                  ORDER BY qty DESC
                  LIMIT 5"; // Ambil lima buku yang paling banyak dipinjam
        $result = mysqli_query($koneksi, $query);
        $labels = [];
        $data = [];
        while ($row = mysqli_fetch_assoc($result)) {
            $labels[] = $row['Judul'];
            $data[] = $row['qty'];
        }

        // grafik pie
        $queryBestCategory = "SELECT kategoribuku.NamaKategori, COUNT(kategoribuku.KategoriID) AS best_cat 
                              FROM kategoribuku 
                              JOIN buku ON kategoribuku.KategoriID = buku.KategoriID 
                              GROUP BY kategoribuku.KategoriID 
                              ORDER BY best_cat DESC 
                              LIMIT 5;";

        $resultBestCat = mysqli_query($koneksi, $queryBestCategory);
        $labelsBestCat = [];
        $dataBestCat = [];

        while ($rowBestCat = mysqli_fetch_assoc($resultBestCat)) {
            $labelsBestCat[] = $rowBestCat['NamaKategori'];
            $dataBestCat[] = $rowBestCat['best_cat'];
        }
        
        $cekjmlantriuser = mysqli_query($koneksi, "SELECT * FROM peminjaman WHERE statusPeminjaman = 'antri'"); //card antri
        $jmlantriuser = mysqli_num_rows($cekjmlantriuser);

        $cekjmldipinjamuser = mysqli_query($koneksi, "SELECT * FROM peminjaman WHERE StatusPeminjaman = 'dipinjam'");//card pinjam user
        $jmldipinjamuser = mysqli_num_rows($cekjmldipinjamuser);

        $cekjmluser = mysqli_query($koneksi, "SELECT * FROM user");//card jml user
        $jmluser = mysqli_num_rows($cekjmluser);

        $cekjmlbuku = mysqli_query($koneksi, "SELECT * FROM buku");//card jml buku
        $jmlbuku = mysqli_num_rows($cekjmlbuku);
    }
?>
<h1 class="mt-4"><?=$utama?></h1>
<ol class="breadcrumb mb-4">
    <li class="breadcrumb-item active">Buku adalah jendela dunia! Selamat membaca :)</li>
</ol>
    
<?php if ($_SESSION['user']['level'] != 'peminjam') {?>
    <div class="card shadow border-bottom" style="border: none">
    <div class="card-header">
    <i class="fa-solid fa-clipboard-list"></i> Laporan
    </div>
        <div class="row row-cols-1 row-cols-md-4 g-4 mb-4 pt-4 mx-2">
            <div class="col-xl-3 col-sm-6 col-12">
                <a href="#" style="text-decoration: none; color: black;">
                    <div class="card">
                        <div class="card-content">
                            <div class="card-body">
                                <div class="media d-flex">
                                    <div class="media-body text-left">
                                    <h3 class="text-danger"><?=$jmlantriuser?></h3>
                                    <span>Antri Baru</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-xl-3 col-sm-6 col-12">
                <a href="#" style="text-decoration: none; color: black;">
                    <div class="card">
                        <div class="card-content">
                            <div class="card-body">
                                <div class="media d-flex">
                                    <div class="media-body text-left">
                                        <h3 class="text-success"><?=$jmldipinjamuser?></h3>
                                        <span>Buku Dipinjam</span>
                                    </div>
                                    <div class="align-self-center">
                                        <i class="icon-rocket danger font-large-2 float-right"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-xl-3 col-sm-6 col-12">
                <a href="#" style="text-decoration: none; color: black;">
                    <div class="card">
                        <div class="card-content">
                            <div class="card-body">
                                <div class="media d-flex">
                                    <div class="media-body text-left">
                                        <h3 class="text-warning"><?=$jmlbuku?></h3>
                                        <span>Macam buku</span>
                                    </div>
                                    <div class="align-self-center">
                                        <i class="icon-rocket danger font-large-2 float-right"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                
              </div>
            <div class="col-xl-3 col-sm-6 col-12">
                <a href="#" style="text-decoration: none; color: black;">
                    <div class="card">
                        <div class="card-content">
                            <div class="card-body">
                                <div class="media d-flex">
                                    <div class="media-body text-left">
                                    <h3 class="text-primary"><?=$jmluser?></h3>
                                    <span>Akun Terdaftar</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
<br>    
<div class="row row-cols-1 row-cols-md-2 g-4">
    <div class="col">
        <div class="card shadow" style="border: none">
            <div class="card-header">
                <i class="fa-solid fa-chart-column"></i> 5 Buku paling banyak dipinjam
            </div>
            <div class="card-body">
                <div class="chart-container" style="position: relative; height:40vh; ">
                    <canvas width="100px" id="myChart"></canvas>
                </div>
            </div>
        </div>
    </div>
    <div class="col">
        <div class="card shadow" style="border: none">
            <div class="card-header">
                <i class="fa-solid fa-chart-pie"></i> 5 Kategori yang paling bukunya
            </div>
            <div class="card-body">
                <div class="chart-container" style="position: relative; height:40vh;">
                    <canvas width="100px" id="myPieChart"></canvas>
                </div>
            </div>
        </div>
    </div>
</div>



<?php } else { //mulai HOME?>
    <div class="row row-cols-1 row-cols-md-4 g-4 border-bottom mb-4">
        <div class="col-xl-3 col-sm-6 col-12 mb-4">
            <a href="#" style="text-decoration: none; color: black;">
                <div class="card shadow">
                    <div class="card-content">
                        <div class="card-body">
                            <div class="media d-flex">
                                <div class="media-body text-left">
                                    <h3 class="<?= $warnaAntri;?>"><?=$jmlantriuserini?></h3>
                                    <span>Antri Baru</span>
                                </div>
                                <div class="align-self-center">
                                    <i class="icon-rocket danger font-large-2 float-right"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-xl-3 col-sm-6 col-12 mb-4">
            <a href="#" style="text-decoration: none; color: black;">
                <div class="card shadow">
                    <div class="card-content">
                        <div class="card-body">
                            <div class="media d-flex">
                                <div class="media-body text-left">
                                    <h3 class="<?= $warnaPinjam;?>"><?=$jmldipinjamuserini?></h3>
                                    <span>Buku Dipinjam</span>
                                </div>
                                <div class="align-self-center">
                                    <i class="icon-rocket danger font-large-2 float-right"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </a>
        </div>
    </div>
    
<div class="row">
    <div class="col">
        <div class="card shadow">
            <div class="card-header">
                <i class="fa-solid fa-book"></i> Beberapa Buku Terbaru yang direkomendasikan
            </div>
            <div class="card-body">
                <div class="swiffy-slider slider-item-show4 slider-item-show4-sm slider-nav-visible slider-item-reveal slider-nav-autoplay slider-nav-autopause slider-indicators-highlight" data-slider-nav-autoplay-interval="3000">
                    <ul class="slider-container">
                        <?php
                        $query = mysqli_query($koneksi, "SELECT buku.*, kategoribuku.NamaKategori FROM buku INNER JOIN kategoribuku ON buku.KategoriID = kategoribuku.KategoriID order by BukuID LIMIT 10");
                        while ($data = mysqli_fetch_assoc($query)) {
                        ?>
                        <li class="border rounded-2 card-s">
                            <?php if ($data['cover'] != null) {?>
                            <a href="?page=page/buku/detail_buku&&id=<?=$data["BukuID"]?>">
                                            <img src="./assets/img/uploaded_book/<?=$data['cover'];?>" class="card-img-top" alt="...">
                                        <?php } else { ?>
                                            <img src="./assets/img/bookcovernotavailable.jpeg" class="card-img-top" style="height: 100%;">
                                        <?php } ?>
                                        <div class="hover-content" style="width: 100%">
                                            <div class="bg-dark py-1">
                                                <i class="fa-regular fa-eye text-light" style="width: 100%"></i>
                                            </div>
                                        </div>
                            </a>
                        </li>
                        <?php } ?>
                    </ul>

                    <button type="button" class="slider-nav"></button>
                    <button type="button" class="slider-nav slider-nav-next"></button>

                    <div class="slider-indicators">
                        <?php 
                        $query = mysqli_query($koneksi, "SELECT buku.*, kategoribuku.NamaKategori FROM buku INNER JOIN kategoribuku ON buku.KategoriID = kategoribuku.KategoriID order by BukuID DESC LIMIT 15");
                        while ($data = mysqli_fetch_assoc($query)) {
                        ?>
                        <button class="active"></button>
                        <?php }?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

    
<?php } ?>
<script>
    //grafik batang
    const ctx = document.getElementById('myChart');
    new Chart(ctx, {
        type: 'bar',
        data: {
        labels: <?php if (isset($labels)) {echo json_encode($labels);} ?>,
        datasets: [{
            label: 'Jumlah Peminjaman',
            data: <?php echo json_encode($data); ?>,
            backgroundColor: 'rgba(20, 108, 67, 0.2)', // Set the color for the bars rgb(20, 108, 67)
            borderColor: 'rgba(20, 108, 67, 0.6)', // Set the border color for the bars
            borderWidth: 1
        }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true,
                    ticks: {
                        // forces step size to be 50 units
                        stepSize: 1
                    }
                }
            }
        }
    });

    //grafik pie
    const ctxPie = document.getElementById('myPieChart');
    new Chart(ctxPie, {
        type: 'pie',//doughnut
        data: {
            labels: <?php echo json_encode($labelsBestCat); ?>,
            datasets: [{
                label: 'Jumlah Buku',
                data: <?php echo json_encode($dataBestCat); ?>,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                ],
                borderWidth: 1
            }]
        },
        options: {
            // cutout: '50%',
            responsive: true,
            maintainAspectRatio: false
        }
    });

</script>
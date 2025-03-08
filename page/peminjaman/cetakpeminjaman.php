<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Laporan Peminjaman</title>
</head>
<body>
<img src="../../assets/img/whitebookLOGO.png" alt="Logo" width="50">
<style>
        .footer {
            text-align: right;
            margin-top: 20px;
            color: #000000;
            margin-right: 20px;
        }
     
    </style>
<center>
        <h2>LAPORAN PEMINJAMAN</h2>
        <h4><i><b>Informasi : </b> Hasil pencarian data berdasarkan periode Tanggal <b><?php echo date('d-M-Y', strtotime($_POST['daritanggal']));?></b> Sampai Dengan <b><?php echo date('d-M-Y', strtotime($_POST['sampaitanggal']));?></b></i></h4>
        <hr/>
    </center>
    <table width="100%" border="2" cellpadding="0" cellspacing="0">
        <thead>
            <tr>
                <th>No</th>
                <th>Nama</th>
                <th>Usename</th>
                <th>Buku</th>
                <th>Tanggal Pinjam</th>
                <th>Status</th>                  
            </tr>
        </thead>
        <tbody>

         <?php
          include '../../include/koneksi.php';
        //proses jika sudah klik tombol pencarian data
           if(isset($_POST['cetak'])){
            //menangkap nilai form
             $daritanggal=$_POST['daritanggal'];
             $sampaitanggal=$_POST['sampaitanggal'];
			$query =mysqli_query($koneksi,"SELECT * FROM peminjaman INNER JOIN user ON peminjaman.UserId = user.UserId INNER JOIN buku ON peminjaman.BukuId = buku.BukuId  WHERE peminjaman.TanggalPeminjaman between '$daritanggal' AND '$sampaitanggal' ORDER BY TanggalPeminjaman ASC");
            
            $no=1;
			while($data = mysqli_fetch_array($query)){
			?>
            <tr style="text-align:center;">
                            <td><?php echo $no; ?></td>
				            <td><?php echo $data['NamaLengkap']?></td>
                            <td><?php echo $data['Username']?></td>
                            <td><?php echo $data['Judul']?></td>
                            <td><?php echo date('d-M-Y', strtotime($data['TanggalPeminjaman']));?></td>   
                            <td><?php echo $data['StatusPeminjaman']?></td>
            </tr>
            <?php
                                                $no++;
                                            }	
                                        }
                                                ?>
        </tbody>

    </table>
    <div class="footer">
    <p>Palabuhan Ratu, <?php echo date("d F Y"); ?></p>
</div>
    <p></p>
    <script>
    // Menangani peristiwa setelah pencetakan selesai
    window.onafterprint = function(event) {
        // Mengarahkan kembali ke halaman awal
        window.location.href = '../../index.php?page=page/peminjaman/peminjaman';
    };

    // Memulai proses pencetakan
    window.print();
</script>

</body>
</html>
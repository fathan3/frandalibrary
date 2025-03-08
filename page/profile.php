<h1 class="mt-4">Profile</h1>
                        <?php 
                        $id=$_SESSION['user']['UserID'];
                        $data = mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM user WHERE UserID='$id'")); 

                        //Membuat objek DateTime baru. 
                        //Menggunakan metode dari kelas DateTime agar dapat memformat ulang si urutan tanggal.
                        
                        ?>
                        <div class="card">
                            <div class="card-body">
                                <table class="table">
                                    <tr>
                                        <td width="150">Nama</td>
                                        <td width="1">:</td>
                                        <td><?php echo $_SESSION['user']['NamaLengkap']; ?></td>
                                    </tr>
                                    <tr>
                                        <td>Level User</td>
                                        <td width="1">:</td>
                                        <td><?php echo $_SESSION['user']['level']; ?></td>
                                    </tr>
                                    <tr>
                                        <td>Email</td>
                                        <td width="1">:</td>
                                        <td><?php echo $data['Email']; ?></td>
                                    </tr>
                                    <tr>
                                        <td>Alamat</td>
                                        <td width="1">:</td>
                                        <td><?php echo $data['Alamat']; ?></td>
                                    </tr>
                                </table>
                                
                            <a href="javascript:history.back()" class="btn btn-danger"><i class="fa-solid fa-right-from-bracket"></i> Kembali</a>
                            </div>
                        </div>
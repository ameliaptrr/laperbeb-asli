<div class="row">
    <div class="col-lg-12">
        <div class="table-responsive">
            <table class="table table-striped">
            <thead style="background-color: rgb(225, 127, 0)">
                    <tr>
                        <th>No</th>
                        <th>Tanggal</th>
                        <th>Email</th>
                        <th>Nama_Lengkap</th>
                        <th>Judul_Laporan</th>
                        <th>Isi_Laporan</th>
                        <th>Photo</th>
                        <th>Status</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $q = mysqli_query($con, "select * from pengaduan");
                    $nomor = 1;
                    while($row=mysqli_fetch_assoc($q)){
                    ?>
                    <tr>
                        <td><?php echo $nomor++; ?></td>
                        <td><?=$row['tanggal']; ?></td>
                        <td><?=$row['email']; ?></td>
                        <td><?=$row['nama_lengkap']; ?></td>
                        <td><?=$row['judul_laporan']; ?></td>
                        <td><?=$row['isi_laporan']; ?></td>
                        <td><img src="<?=$row['photo']; ?>" width="100" alt="foto"></td>
                        <td><?php
                        if($row['status'] == "0")  print"pending";
                        else print $row['status']  ?></td>
                        <td>
                        <?php if($_SESSION['level'] == 'admin') {?>
                        <a href="./tanggapan/tanggapan-pengaduan.php" class="btn btn-success">Tanggapi</a>
                        <a href="hapus.php" class="btn btn-danger">Hapus</a>
                         <?php } ?> 
                        </td>
                    </tr>
                        <?php } ?> 
                </tbody>
            </table>
        </div>
    </div>
</div>
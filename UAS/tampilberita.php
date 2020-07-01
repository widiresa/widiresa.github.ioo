                    <?php
                        $id_berita = $_GET['id'];
                        $queryberita = mysqli_query($con,"SELECT * from berita where id_berita='$id_berita'");
                        $berita = mysqli_fetch_array($queryberita);
                    ?>
                    
                    <div>
                        <div>
                            <a href="?id=<?php echo $berita['id_berita']; ?>"><h4><?php echo $berita['judul']; ?></h4></a>
                            <small>Posted on <?php echo $berita['tanggal']; ?> by <?php echo $berita['pengirim']; ?></small><br>
                            <img src="<?php echo $berita['gambar']; ?>" alt="">
                            <?php echo $berita['isi']; ?>
                        </div>
                    </div>
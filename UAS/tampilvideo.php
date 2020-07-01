                    <?php
                        $id_video = $_GET['id'];
                        $queryvideo = mysqli_query($con,"SELECT * from video where id_video='$id_video'");
                        $video = mysqli_fetch_array($queryvideo);
                    ?>
                    <div>
                        <div>
                            <a href="?id=<?php echo $video['id_video']; ?>"><h4><?php echo $video['judul']; ?></h4></a>
                            <small>Posted on <?php echo $berita['tanggal']; ?> by <?php echo $video['pengirim']; ?></small><br>
                            <img src="<?php echo $video['gambar']; ?>" alt="">
                            <?php echo $video['isi']; ?>
                        </div>
                    </div>

            <div class="align-content-center">
                <div class="col-12">
                    <div class="section-heading text-center mx-auto wow fadeInUp" data-wow-delay="300ms">
                        <h3>Berita</h3>
                    </div>
                </div>
            </div>

            <?php
                $query = mysqli_query($con,"SELECT * FROM berita ORDER BY tanggal DESC");
                function html2text($str) {
                    $str = str_replace('&nbsp;', ' ', $str);
                    $str = html_entity_decode($str, ENT_QUOTES | ENT_COMPAT , 'UTF-8');
                    $str = html_entity_decode($str, ENT_HTML5, 'UTF-8');
                    $str = html_entity_decode($str);
                    $str = htmlspecialchars_decode($str);
                    $str = strip_tags($str);
                    
                    return $str;
                }

                while($hasil = mysqli_fetch_array($query)){ 
                    $isi = html2text($hasil['isi']);
                    $batas = 350;
                    ?>
                    <div>
                        <div>
                            <a href="?id=<?php echo $hasil['id_berita']; ?>"><h4><?php echo $hasil['judul']; ?></h4></a>
                            <small>Posted on <?php echo $hasil['tanggal']; ?> by <?php echo $hasil['pengirim']; ?></small><br>
                            <img src="<?php echo $hasil['gambar']; ?>" alt="">

                            <?php if(strlen($isi)<=$batas){?>
                                    <?php echo $isi; ?>
                                <?php } else { ?>
                                    <?php echo substr($isi,0,$batas)."..."; ?>
                                <?php } ?>
                        </div>
                    </div>
                <?php }
            ?>
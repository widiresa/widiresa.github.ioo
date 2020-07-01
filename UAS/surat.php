<?php include_once "myadmin/mysqli_koneksi.php" ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->    
    <title>Surat Online</title>

    <!-- Favicon -->
    <link rel="icon" href="img/desa-img/gambar-icon.png">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="style.css">

</head>

<body>
    <!-- ##### Preloader ##### -->
    <div id="preloader">
        <i class="circle-preloader"></i>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">

        <!-- Top Header Area -->
        <div class="top-header">
            <div class="container h-100">
                <div class="row h-100">
                    <div class="col-12 h-100">
                        <div class="header-content h-100 d-flex align-items-center justify-content-between">
                            <div class="academy-logo">
                                <a href="index.html"><img src="img/desa-img/gambar-icon.png" height="100px" width="150px" class='hidden-xs'></a>
								<a class='navbar-brand with-subbrand' href="index.html">
								<div>
								<div class='title hidden-sm'><span class='hidden-xs web-title-desa'>DESA </span>HULOSOBO</div>
								<div class='sub-title hidden-xs hidden-sm'><span class='web-title-kabupaten'>Kabupaten </span>Purworejo</div>
				</div>
			</a>
		</div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Navbar Area -->
        <div class="academy-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="academyNav">

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- close btn -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                    <li><a href="index.php">BERANDA</a>
									</li>
                                    <li><a href="#">Profil Desa</a>
                                        <ul class="dropdown">
                                            <li><a href="penelitian.php">Visi Misi</a></li>
                                            <li><a href="highlight.php">Sejarah Desa</a></li>
                                            <li><a href="poster.php">Profil Wilayah</a></li>
                                        </ul>
                                    </li>
                                    <li><a href=""#">Lembaga Masyarakat</a>
                                        <ul class="dropdown">
                                            <li><a href="staff.php">Karang Taruna</a></li>
                                            <li><a href="dosen.php">PKK</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Data Desa</a>
                                        <ul class="dropdown">
                                            <li><a href="berita.php">Data Pendidikan</a></li>
                                            <li><a href="workshop.php">Data Agama</a></li>
                                            <li><a href="seminar.php">Data Pekerjaan</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">INFORMASI</a>
                                    <ul class="dropdown">
                                            <li><a href="artikel-ilmiah.php">Berita</a></li>
                                            <li><a href="jurnal.php">Pengumuman</a></li>
                                            <li><a href="buku.php">Artikel</a></li>
                                        </ul>
                                    </li>
									<li><a href="surat.php">SURAT ONLINE</a>
                                    </li>
									<li><a href="kontak.php">KONTAK KAMI</a>
									</li>
                                </ul>
                            </div>
                            <!-- Nav End -->
                            <!-- Nav End -->
                        </div>

                        <!-- Calling Info -->
                        <div class="calling-info">
                        <div class="container">
                                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->

    <!-- ##### About Us Area Start ##### -->
 <section class="about-us-area mt-50 section-padding-100">
        <div class="container">
            <div class="align-content-center">
                <div class="col-12">
                    <div class="section-heading text-center mx-auto wow fadeInUp" data-wow-delay="300ms">
                        <h3>Pelayan Surat Online</h3>
						
				<p class="lead">Silahkan lengkapi semua isian sesuai dengan data yang diperlukan</p>

                <form id="contact-form" method="post" action="surat.php" role="form">

                    <div class="messages"></div>

                    <div class="controls">

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="form_name">Nama *</label>
                                    <input id="form_name" type="text" name="name" class="form-control" placeholder="Silahkan masukkan nama anda *" required="required" data-error="Nama harus diisi!.">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="form_lastname">NIK *</label>
                                    <input id="form_lastname" type="text" name="nik" class="form-control" placeholder="Silahkan masukkan NIK anda *" required="required" data-error="NIK Harus diisi!.">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="form_email">Email *</label>
                                    <input id="form_email" type="email" name="email" class="form-control" placeholder="Silahkan masukkan email anda *" required="required" data-error="Format email salah.">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="form_need">Pilih Jenis Surat *</label>
                                    <select id="form_need" name="keperluan" class="form-control" required="required" data-error="Pilih jenis surat yang anda perlukan">
                                        <option value=""></option>
                                        <option value="Surat Keterangan Usaha">Surat Keterangan Usaha</option>
                                        <option value="Surat Keterangan Tidak Mampu">Surat Keterangan Tidak Mampu</option>
                                        <option value="Surat Keterangan Miskin">Surat Keterangan Miskin</option>
                                        <option value="Surat Keterangan Belum Pernah Menikah">Surat Keterangan Belum Pernah Menikah</option>
                                        <option value="Surat Keterangan Kelahiran">Surat Keterangan Kelahiran</option>
                                        <option value="Surat Keterangan Kematian">Surat Keterangan Kematian</option>
                                        <option value="Surat Keterangan Beda Nama">Surat Keterangan Beda Nama</option>
                                        <option value="Surat Keterangan Penghasilan">Surat Keterangan Penghasilan</option>
                                        <option value="Surat Keterangan Harga Tanah">Surat Keterangan Harga Tanah</option>
                                    </select>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="form_message">Pesan *</label>
                                    <textarea id="form_message" name="message" class="form-control" placeholder="Silahkan isi keperluan atau keterangan lainnya disini *" rows="4" required="required" data-error="Silahkan isi pesan atau keterangan anda."></textarea>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <input type="submit" class="btn btn-success btn-send" value="Kirim Permohonan">
                            </div>
                            <div class="col-md-6">
                                <input type="button" class="btn btn-primary btn-send" value="Kembali" onclick="window.history.back()" />
                                </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-12">
                                <p class="text-muted">
                                    <strong>*</strong> Harus diisi
                                    </p>
                            </div>
                        </div>
                    </div>

                </form>

						
                </div>
            </div>
        </div>
</div>
    </section>
    <!-- ##### About Us Area End ##### -->


     <!-- Footer Widget Area -->
     <footer class="footer-area">
        <div class="bottom-footer-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                    <div class="footer footer-social-info">
								<a href="https://www.facebook.com"><i class="fa fa-facebook"></i></a>
                                <a href="https://twitter.com"><i class="fa fa-twitter"></i></a>
                                <a href="https://www.instagram.com"><i class="fa fa-instagram"></i></a>
								<a href="https://www.whatsapp.com"><i class="fa fa-whatsapp"></i></a>
                            </div>
                        <p>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            Copyright &copy;
                            <script>document.write(new Date().getFullYear());</script> All rights
                            reserved | <i class="fa fa-heart-o" aria-hidden="true"></i> by <a
                                href="https://colorlib.com" target="_blank">Widi Resa Yustin Arsanti</a>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ##### Footer Area Start ##### -->

    <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
</body>

</html>
<?php  
include "mysqli_koneksi.php";  ?>
<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-laptop"></i> Masters</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.php">Home</a></li>
						<li><i class="fa fa-laptop"></i>Publikasi</li>						  	
					</ol>
				</div>
			</div>              
			  <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              publikasi
                          </header>
                          
                          <table class="table table-striped table-advance table-hover">
                           <tbody>
                              <tr>
                                  
                                <!-- Ganti -->
                                 <th> Judul</th>
                                 <th> Cited</th>
                                 <th> Year</th>
                                 <th> Pengirim</th>
                                 <th> Tanggal</th>
                              </tr>
					<?php  
  $sql = mysqli_query($con,"SELECT * FROM publikasi ORDER BY id_publikasi DESC");    
  while($hasil = mysqli_fetch_array($sql)) {     	
    $id = $hasil['id_publikasi'];
    $judul  = stripslashes($hasil['judul']);
 	$cited = stripslashes($hasil['cited']);
    $year = stripslashes($hasil['year']);
    $pengirim = stripslashes($hasil['pengirim']);
    $tanggal = stripslashes($hasil['tanggal']);
  ?>		  
							<tr>
							<td>
							<?php echo $judul;?>
							</td>
							<td>
							<?php echo $cited;?>
							</td>
							<td>
							<?php echo $year;?>
							</td>
                            <td>
							<?php echo $pengirim;?>
							</td>
                            <td>
							<?php echo $tanggal;?>
							</td>
							<td>
                                  <div class="btn-group">
                                      <a class="btn btn-primary" href="index.php?page=input_publikasi&id=<?php echo $id;?>"><i class="icon_plus_alt2"></i></a>
                                      <a class="btn btn-success" href="index.php?page=edit_publikasi&id=<?php echo $id;?>"><i class="icon_check_alt2"></i></a>
                                      <a class="btn btn-danger" href="index.php?page=delete_publikasi&id=<?php echo $id;?>"><i class="icon_close_alt2"></i></a>
                                  </div>
                                  </td>
                              </tr>
            
   <!-- =============== -->
	        <?php } ?>
		</tbody>
                        </table>
                      </section>
                  </div>
              </div>
<?php  
include "mysqli_koneksi.php";  ?>
<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-laptop"></i> Masters</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.php">Home</a></li>
						<li><i class="fa fa-laptop"></i>Downlaod</li>						  	
					</ol>
				</div>
			</div>              
			  <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              download
                          </header>
                          
                          <table class="table table-striped table-advance table-hover">
                           <tbody>
                              <tr>
                                  
                                <!-- Ganti -->
                                 <th> Kategori</th>
                                 <th> Nama File</th>
                                 <th> Url</th>
                                 <th> Pengirim</th>
                                 <th> Tanggal</th>
                                 <th> Action</th>
                              </tr>
					<?php  
  $sql = mysqli_query($con,"SELECT * FROM download ORDER BY kategori ASC");    
  while($hasil = mysqli_fetch_array($sql)) {     	
    $id = $hasil['id_download'];
    $kategori  = stripslashes($hasil['kategori']);
    $nama = stripslashes($hasil['nama']);
    $url = stripslashes($hasil['url']);
    $pengirim = stripslashes($hasil['pengirim']);
    $tanggal = stripslashes($hasil['tanggal']);
  ?>		  
							<tr>
							<td><?php echo $kategori;?></td>
							<td><?php echo $nama;?></td>
							<td><?php echo $url;?></td>
							<td><?php echo $pengirim;?></td>
							<td><?php echo $tanggal;?></td>
							<td>
                                  <div class="btn-group">
                                      <a class="btn btn-primary" href="index.php?page=input_download&id=<?php echo $id;?>"><i class="icon_plus_alt2"></i></a>
                                      <a class="btn btn-success" href="index.php?page=edit_download&id=<?php echo $id;?>"><i class="icon_check_alt2"></i></a>
                                      <a class="btn btn-danger" href="index.php?page=delete_download&id=<?php echo $id;?>"><i class="icon_close_alt2"></i></a>
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
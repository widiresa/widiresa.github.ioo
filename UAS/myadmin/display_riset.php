<?php  
include "mysqli_koneksi.php";  ?>
<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-laptop"></i> Masters</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.php">Home</a></li>
						<li><i class="fa fa-laptop"></i>Riset</li>						  	
					</ol>
				</div>
			</div>              
			  <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              riset
                          </header>
                          
                          <table class="table table-striped table-advance table-hover">
                           <tbody>
                              <tr>
                                  
                                <!-- Ganti -->
                                 <th> Nama Research</th>
                                 <th> Isi</th>
                                 <th> Action</th>
                              </tr>
					<?php  
  $sql = mysqli_query($con,"SELECT * FROM riset ORDER BY id_topik ASC");    
  while($hasil = mysqli_fetch_array($sql)) {     	
    $id = $hasil['id_riset'];
    $id_topik  = stripslashes($hasil['id_topik']);
    $isi = stripslashes($hasil['isi']);
    $idtopik = mysqli_fetch_array(mysqli_query($con,"SELECT * FROM topik WHERE id_topik = '$id_topik'"));
    $nama = $idtopik['nama'];
  ?>		  
							<tr>
							<td>
							<?php echo $nama;?>
							</td>
							<td>
							<?php echo $isi;?>
							</td>
							<td>
                                  <div class="btn-group">
                                      <a class="btn btn-primary" href="index.php?page=input_riset&id=<?php echo $id;?>"><i class="icon_plus_alt2"></i></a>
                                      <a class="btn btn-success" href="index.php?page=edit_riset&id=<?php echo $id;?>"><i class="icon_check_alt2"></i></a>
                                      <a class="btn btn-danger" href="index.php?page=delete_riset&id=<?php echo $id;?>"><i class="icon_close_alt2"></i></a>
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
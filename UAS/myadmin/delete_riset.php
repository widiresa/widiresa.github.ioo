<?php
include "mysqli_koneksi.php";
if (isset($_GET['id'])) {
$id = $_GET['id'];
} else {
die ("Error. No Id Selected! ");
}
?>
<html>
<head><title>Delete Riset</title>
</head>
<body>
<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-laptop"></i> Masters</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.php">Home</a></li>
						<li><i class="fa fa-laptop"></i>Delete Riset</li>						  	
					</ol>
				</div>
			</div>
<?php
//proses delete berita
if (!empty($id) && $id != "") {
$query = "DELETE FROM riset WHERE id_riset='$id'";
$sql = mysqli_query ($con,$query);
if ($sql) {
echo "<h2><font color=blue>Riset telah berhasil dihapus</font></h2>";
} else {
echo "<h2><font color=red>Riset gagal dihapus</font></h2>";
}
echo "Klik <a href='index.php?page=riset'>di sini</a> untuk kembali ke halaman arsip riset";
} else {
die ("Access Denied");
}
?>
</body>
</html>
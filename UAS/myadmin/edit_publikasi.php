<?php
include "mysqli_koneksi.php";
if (isset($_GET['id'])) {
    $id = $_GET['id'];
} else {
    die ("Error. No Id Selected! ");
}
$query = "SELECT * FROM publikasi WHERE id_publikasi='$id'";
$sql = mysqli_query ($con,$query);
$hasil = mysqli_fetch_array ($sql);
$id = $hasil['id_publikasi'];
$judul = stripslashes ($hasil['judul']);
$cited = stripslashes ($hasil['cited']);
$year = stripslashes ($hasil['year']);
$pengirim = stripslashes ($hasil['pengirim']);
//proses edit berita
if (isset($_POST['Edit'])) {
$id = $_POST['id'];
$judul = addslashes (strip_tags ($_POST['judul']));
$cited = $_POST['cited'];
$year = addslashes (strip_tags ($_POST['year']));
//update publikasi
$query = "UPDATE publikasi SET judul='$judul',cited='$cited',year='$year' WHERE id_publikasi='$id'";
$sql = mysqli_query ($con,$query);
if ($sql) {
//	echo "<h2><font color=blue>Berita telah berhasil diedit</font></h2>";
	?>
	<script language="JavaScript">  
		alert('Data berhasil di update......');  
 		document.location='index.php?page=publikasi';  
	</script>
<?php	
} else {
	echo "<h2><font color=red>Publikasi gagal diedit</font></h2>";
}
}

?>
<html>
<head><title>Edit Publikasi</title>
<script language="JavaScript">  
function batal(){
 		document.location='index.php?page=publikasi';  
}		
</script>
</head>
<body>
<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-laptop"></i> Masters</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.php">Home</a></li>
						<li><i class="fa fa-laptop"></i>Edit Publikasi</li>						  	
					</ol>
				</div>
			</div>

<FORM ACTION="" METHOD="POST" NAME="input">
<table cellpadding="0" cellspacing="0" border="0" width="90%">

	<tr>
		<td width="200">Judul</td>
		<td>: <input type="text" name="judul" value="<?php echo $judul; ?>" size="30"></td>
	</tr>
	<tr>
		<td width="200">Cited By</td>
		<td>: <input type="text" name="cited" value="<?php echo $cited; ?>" size="30"></td>
	</tr>
	<tr>
		<td width="200">Tahun</td>
		<td>: <input type="text" name="year" value="<?php echo $year; ?>" size="30"></td>
	</tr>
	<tr>
		<td width="200">Pengirim</td>
		<td>: <input type="text" name="pengirim" value="<?php echo $pengirim; ?>" size="30" disabled></td>
	</tr>
<tr>
<td>&nbsp;
    <input type="hidden" name="id" value="<?php echo $id; ?>">
    &nbsp;&nbsp;<input type="submit" name="Edit" value="Edit Publikasi">&nbsp;
    <input type="button" name="Cancel" value="Cancel" onClick="batal()">
</td>
</tr>
</table>
</FORM>
<!-- ck editor -->
    <script type="text/javascript" src="assets/ckeditor/ckeditor.js"></script>
</body>
</html>
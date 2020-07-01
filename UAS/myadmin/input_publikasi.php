<?php
include "mysqli_koneksi.php";
//proses input berita
if (isset($_POST['Input'])) {
$judul = addslashes (strip_tags ($_POST['judul']));
$cited = addslashes (strip_tags ($_POST['cited']));
$year = addslashes (strip_tags ($_POST['year']));
//insert ke tabel
$query = "INSERT INTO publikasi(judul,cited,year,pengirim,tanggal) VALUES('$judul','$cited','$year','$_SESSION[namauser]',now())";
$sql = mysqli_query ($con,$query);
if ($sql) {
//echo "<h2><font color=blue>Berita telah berhasil ditambahkan</font></h2>";
?>
	<script language="JavaScript">  

		alert('Publikasi berhasil ditambahkan......');  

 		document.location='index.php?page=publikasi';  

	</script>
<?php	
} else {
    echo "<h2><font color=red>Publikasi gagal ditambahkan</font></h2>";
}
}
?>
<html>
<head><title>Input Publikasi</title>
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
						<li><i class="fa fa-laptop"></i>Input Publikasi</li>						  	
					</ol>
				</div>
			</div>
<FORM ACTION="" METHOD="POST" NAME="input">
<table cellpadding="0" cellspacing="0" border="0" width="90%">

	<tr>
		<td width="200">Judul</td>
		<td>: <input type="text" name="judul" size="30"></td>
	</tr>
	<tr>
		<td width="200">Cited By</td>
		<td>: <input type="text" name="cited" size="30"></td>
	</tr>
	<tr>
		<td width="200">Tahun</td>
		<td>: <input type="text" name="year" size="30"></td>
	</tr>
	<tr>
		<td width="200">Pengirim</td>
		<td>: <input type="text" name="pengirim" value="<?php echo $_SESSION['namauser']?>" size="20" disabled></td>
	</tr>
<tr>
<td>&nbsp;
<td>&nbsp;&nbsp;<input type="submit" name="Input" value="Input Publikasi">&nbsp;
<input type="button" name="Cancel" value="Cancel" onClick="batal()">
</td>
</tr>
</table>
</FORM>
</body>
<!-- ck editor -->
    <script type="text/javascript" src="assets/ckeditor/ckeditor.js"></script>
</html>
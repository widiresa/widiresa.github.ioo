<?php
include "mysqli_koneksi.php";
if (isset($_GET['id'])) {
$id_video = $_GET['id'];
} else {
die ("Error. No Id Selected! ");
}
$query = "SELECT * FROM video WHERE id_video='$id_video'";
$sql = mysqli_query ($con,$query);
$hasil = mysqli_fetch_array ($sql);
$id_video = $hasil['id_video'];
$judul = stripslashes ($hasil['judul']);
$url = stripslashes ($hasil['url']);

//proses edit berita
if (isset($_POST['Edit'])) {
$id = $_POST['id'];
$judul = addslashes (strip_tags ($_POST['judul']));
$url = addslashes (strip_tags ($_POST['url']));

//update berita
$query = "UPDATE video SET judul='$judul',url='$url' WHERE id_video='$id'";
$sql = mysqli_query ($con,$query);
if ($sql) {
//	echo "<h2><font color=blue>Berita telah berhasil diedit</font></h2>";
	?>
	<script language="JavaScript">  
		alert('Data berhasil di update......');  
 		document.location='index.php?page=video';  
	</script>
<?php	
} else {
	echo "<h2><font color=red>Video gagal diedit</font></h2>";
}
}

?>
<html>
<head><title>Edit Video</title>
<script language="JavaScript">  
function batal(){
 		document.location='index.php?page=video';  
}		
</script>
</head>
<body>
<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-laptop"></i> Masters</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.php">Home</a></li>
						<li><i class="fa fa-laptop"></i>Edit Berita</li>						  	
					</ol>
				</div>
			</div>
<FORM ACTION="" METHOD="POST" NAME="input">
<table cellpadding="0" cellspacing="0" border="0" width="90%">

<tr>
<td width="200">Judul Video</td>
<td>: <input type="text" name="judul"
size="30" value="<?php echo $judul ?>"></td>
</tr>
<tr>
<td>url video</td>
<td>: <textarea name="url" cols="50"rows="4"><?=$url?></textarea></td>
</tr>
<tr>
<!--
<td>: <textarea name="isi" cols="50"
rows="10">---</textarea></td> -->
<tr>
<td>&nbsp;</td>
<td>&nbsp;&nbsp;
<input type="hidden" name="id" value="<?=$id_video?>">
<input type="submit" name="Edit" value="Edit Video">&nbsp;
<input type="button" name="Cancel" value="Cancel" onClick="batal()"></td>
</tr>
</table>
</FORM>
<!-- ck editor -->
    <script type="text/javascript" src="assets/ckeditor/ckeditor.js"></script>
</body>
</html>
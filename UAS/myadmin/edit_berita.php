<?php
include "mysqli_koneksi.php";
if (isset($_GET['id'])) {
$id_berita = $_GET['id'];
} else {
die ("Error. No Id Selected! ");
}
$query = "SELECT id_berita, id_kategori, judul, headline, gambar , isi, pengirim, tanggal FROM berita WHERE id_berita='$id_berita'";
$sql = mysqli_query ($con,$query);
$hasil = mysqli_fetch_array ($sql);
$id_berita = $hasil['id_berita'];
$id_kategori = stripslashes ($hasil['id_kategori']);
$judul = stripslashes ($hasil['judul']);
$headline = stripslashes ($hasil['headline']);
$gambar = stripslashes ($hasil['gambar']);
$isi = stripslashes ($hasil['isi']);
$pengirim = stripslashes ($hasil['pengirim']);
$tanggal = stripslashes ($hasil['tanggal']);
//proses edit berita
if (isset($_POST['Edit'])) {
$id_berita = $_POST['hidberita'];
$judul = addslashes (strip_tags ($_POST['judul']));
$kategori = $_POST['kategori'];
$headline = addslashes (strip_tags ($_POST['headline']));
$gambar = addslashes (strip_tags ($_POST['gambar']));
$isi_berita = $_POST['isi'];
//update berita
$query = "UPDATE berita SET id_kategori='$kategori',judul='$judul',headline='$headline',gambar='$gambar',
isi='$isi_berita' WHERE id_berita='$id_berita'";
$sql = mysqli_query ($con,$query);
if ($sql) {
//	echo "<h2><font color=blue>Berita telah berhasil diedit</font></h2>";
	?>
	<script language="JavaScript">  
		alert('Data berhasil di update......');  
 		document.location='index.php?page=berita';  
	</script>
<?php	
} else {
	echo "<h2><font color=red>Berita gagal diedit</font></h2>";
}
}

?>
<html>
<head><title>Edit Berita</title>
<script language="JavaScript">  
function batal(){
 		document.location='index.php?page=berita';  
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
<td width="200">Judul Berita</td>
<td>: <input type="text" name="judul"
size="30" value="<?php echo $judul ?>"></td>
</tr>
<tr>
<td>Kategori</td>
<td>:
<select name="kategori">
<?php
$query = "SELECT id_kategori,nm_kategori FROM kategori ORDER BY nm_kategori";
$sql = mysqli_query ($con,$query);
while ($hasil = mysqli_fetch_array($sql)) {
$selected = ($hasil['id_kategori']==$id_kategori) ? "selected" : "";
echo "<option value='$hasil[id_kategori]' $selected>$hasil[nm_kategori]</option>";
}
?>
</select></td>
</tr>
<tr>
<td>Headline Berita</td>
<td>: <textarea name="headline" cols="50"
rows="4"><?=$headline?></textarea></td>
</tr>
<tr>
<td>Gambar</td>
<td>: <input type="text" name="gambar"
size="30" value="<?php echo $gambar ?>"></td>
</tr>
<tr>
<td>Isi Berita</td>
<td>
<div class="col-sm-20">
     <textarea class="form-control ckeditor" name="isi" rows="6"><?=$isi?></textarea>
</div>
</td>
<!--
<td>: <textarea name="isi" cols="50"
rows="10">---</textarea></td> -->

</tr>
<tr>
<td>Pengirim</td>
<td>: <input type="text" name="pengirim" size="20" value="<?=$pengirim?>" disabled></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>&nbsp;&nbsp;
<input type="hidden" name="hidberita" value="<?=$id_berita?>">
<input type="submit" name="Edit" value="Edit Berita">&nbsp;
<input type="button" name="Cancel" value="Cancel" onClick="batal()"></td>
</tr>
</table>
</FORM>
<!-- ck editor -->
    <script type="text/javascript" src="assets/ckeditor/ckeditor.js"></script>
</body>
</html>
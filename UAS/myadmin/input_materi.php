<?php
include "mysqli_koneksi.php";
//proses input berita
if (isset($_POST['Input'])) {
$judul = addslashes (strip_tags ($_POST['judul']));
$url = addslashes (strip_tags ($_POST['url']));
$kategori = addslashes (strip_tags ($_POST['kategori']));
$pengirim = $_SESSION['namauser'];
//insert ke tabel
$query = "INSERT INTO materi(kategori,judul,url,pengirim,tanggal) VALUES('$kategori','$judul','$url','$pengirim',now())";
$sql = mysqli_query ($con,$query);
if ($sql) {
//echo "<h2><font color=blue>Berita telah berhasil ditambahkan</font></h2>";
?>
	<script language="JavaScript">  

		alert('Materi berhasil ditambahkan......');  

 		document.location='index.php?page=materi';  

	</script>
<?php	
} else {
    echo "<h2><font color=red>Materi gagal ditambahkan</font></h2>";
}
}
?>
<html>
<head><title>Input Materi</title>
<script language="JavaScript">  
function batal(){
 		document.location='index.php?page=materi';  
}		
</script>
</head>
<body>
<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-laptop"></i> Masters</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.php">Home</a></li>
						<li><i class="fa fa-laptop"></i>Input Materi</li>						  	
					</ol>
				</div>
			</div>
<FORM ACTION="" METHOD="POST" NAME="input">
<table cellpadding="0" cellspacing="0" border="0" width="90%">

	<tr>
		<td>Kategori</td>
		<td>:
			<select name="kategori">
            <?php
                $query = "SELECT id_kategori, nm_kategori FROM kategori ORDER BY nm_kategori";
                $sql = mysqli_query ($con,$query);
                while ($hasil = mysqli_fetch_array ($sql)) {
                    echo "<option value='$hasil[id_kategori]'>$hasil[nm_kategori]</option>";
                }
            ?>
			</select>
		</td>
	</tr>
	<tr>
		<td width="200">Judul</td>
		<td>: <input type="text" name="judul" size="30"></td>
	</tr>
	<tr>
		<td width="200">Url</td>
		<td>: <input type="text" name="url" size="30"></td>
	</tr>
    <tr>
        <td width="200">Pengirim</td>
        <td>: <input type="text" name="pengirim" value="<?php echo $_SESSION['namauser']?>" size="20" disabled></td>
    </tr>
<tr>
<td>&nbsp;
<td>&nbsp;&nbsp;<input type="submit" name="Input" value="Input Download">&nbsp;
<input type="button" name="Cancel" value="Cancel" onClick="batal()">
</td>
</tr>
</table>
</FORM>
</body>
<!-- ck editor -->
    <script type="text/javascript" src="assets/ckeditor/ckeditor.js"></script>
</html>
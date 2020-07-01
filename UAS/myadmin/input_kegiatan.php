<?php
include "mysqli_koneksi.php";
//proses input berita
if (isset($_POST['Input'])) {
$judul = addslashes (strip_tags ($_POST['judul']));
$isi = $_POST['isi'];
$kategori = addslashes (strip_tags ($_POST['kategori']));
$pengirim = $_SESSION['namauser'];
//insert ke tabel
$query = "INSERT INTO kegiatan(kategori,judul,isi,pengirim,tanggal) VALUES('$kategori','$judul','$isi','$pengirim',now())";
$sql = mysqli_query ($con,$query);
if ($sql) {
//echo "<h2><font color=blue>Berita telah berhasil ditambahkan</font></h2>";
?>
	<script language="JavaScript">  

		alert('Kegiatan berhasil ditambahkan......');  

 		document.location='index.php?page=kegiatan';  

	</script>
<?php	
} else {
    echo "<h2><font color=red>Kegiatan gagal ditambahkan</font></h2>";
}
}
?>
<html>
<head><title>Input Kegiatan</title>
<script language="JavaScript">  
function batal(){
 		document.location='index.php?page=kegiatan';  
}		
</script>
</head>
<body>
<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-laptop"></i> Masters</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.php">Home</a></li>
						<li><i class="fa fa-laptop"></i>Input Kegiatan</li>						  	
					</ol>
				</div>
			</div>
<FORM ACTION="" METHOD="POST" NAME="input">
<table cellpadding="0" cellspacing="0" border="0" width="90%">

	<tr>
		<td>Kategori</td>
		<td>:
			<select name="kategori">
                <option value="Workshop">Workshop</option>
                <option value="Klinik">Klinik</option>
                <option value="Lomba">Lomba</option>
			</select>
		</td>
	</tr>
	<tr>
		<td width="200">Judul</td>
		<td>: <input type="text" name="judul" size="30"></td>
	</tr>
    <tr>
        <td>Isi Kegiatan</td>
        <td>
            <div class="col-sm-20">
                <textarea class="form-control ckeditor" name="isi" rows="6"></textarea>
            </div>
        </td>
    </tr>
    <tr>
        <td width="200">Pengirim</td>
        <td>: <input type="text" name="pengirim" value="<?php echo $_SESSION['namauser']?>" size="20" disabled></td>
    </tr>
<tr>
<td>&nbsp;
<td>&nbsp;&nbsp;<input type="submit" name="Input" value="Input Kegiatan">&nbsp;
<input type="button" name="Cancel" value="Cancel" onClick="batal()">
</td>
</tr>
</table>
</FORM>
</body>
<!-- ck editor -->
    <script type="text/javascript" src="assets/ckeditor/ckeditor.js"></script>
</html>
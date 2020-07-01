<?php
include "mysqli_koneksi.php";
//proses input berita
if (isset($_POST['Input'])) {
$topik = addslashes (strip_tags ($_POST['topik']));
$isi = addslashes (strip_tags ($_POST['isi']));
//insert ke tabel
$query = "INSERT INTO riset(id_topik,isi) VALUES('$topik','$isi')";
$sql = mysqli_query ($con,$query);
if ($sql) {
//echo "<h2><font color=blue>Berita telah berhasil ditambahkan</font></h2>";
?>
	<script language="JavaScript">  

		alert('Riset berhasil ditambahkan......');  

 		document.location='index.php?page=riset';  

	</script>
<?php	
} else {
    echo "<h2><font color=red>Riset gagal ditambahkan</font></h2>";
}
}
?>
<html>
<head><title>Input Riset</title>
<script language="JavaScript">  
function batal(){
 		document.location='index.php?page=riset';  
}		
</script>
</head>
<body>
<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-laptop"></i> Masters</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.php">Home</a></li>
						<li><i class="fa fa-laptop"></i>Input Riset</li>						  	
					</ol>
				</div>
			</div>
<FORM ACTION="" METHOD="POST" NAME="input">
<table cellpadding="0" cellspacing="0" border="0" width="90%">

	<tr>
		<td>Kategori</td>
		<td>:
			<select name="topik">
			<?php
                $query = "SELECT * FROM topik ORDER BY id_topik";
                $sql = mysqli_query ($con,$query);
                while ($hasil = mysqli_fetch_array ($sql)) {
                    echo "<option value='$hasil[id_topik]'>$hasil[nama]</option>";
                }
			?>
			</select>
		</td>
	</tr>
	<tr>
		<td width="200">Isi</td>
		<td>: <input type="text" name="isi" size="30"></td>
	</tr>
<tr>
<td>&nbsp;
<td>&nbsp;&nbsp;<input type="submit" name="Input" value="Input Riset">&nbsp;
<input type="button" name="Cancel" value="Cancel" onClick="batal()">
</td>
</tr>
</table>
</FORM>
</body>
<!-- ck editor -->
    <script type="text/javascript" src="assets/ckeditor/ckeditor.js"></script>
</html>
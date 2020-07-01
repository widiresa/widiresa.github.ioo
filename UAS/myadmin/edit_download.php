<?php
include "mysqli_koneksi.php";
if (isset($_GET['id'])) {
    $id = $_GET['id'];
} else {
    die ("Error. No Id Selected! ");
}
$query = "SELECT * FROM download WHERE id_download='$id'";
$sql = mysqli_query ($con,$query);
$hasil = mysqli_fetch_array ($sql);
$id = $hasil['id_download'];
$kategori = stripslashes ($hasil['kategori']);
$nama = stripslashes ($hasil['nama']);
$url = stripslashes ($hasil['url']);
//proses edit berita
if (isset($_POST['Edit'])) {
    $id = $_POST['id'];
    $kategori = addslashes (strip_tags ($_POST['kategori']));
    $nama = addslashes (strip_tags ($_POST['nama']));
    $url = addslashes (strip_tags ($_POST['url']));
    //update berita
    $query = "UPDATE download SET kategori='$kategori',nama='$nama',url='$url' WHERE id_download='$id'";
    $sql = mysqli_query ($con,$query);
    if ($sql) {
    //	echo "<h2><font color=blue>Riset telah berhasil diedit</font></h2>";
        ?>
        <script language="JavaScript">  
            alert('Download berhasil di update......');  
            document.location='index.php?page=download';  
        </script>
    <?php	
    } else {
        echo "<h2><font color=red>Download gagal diedit</font></h2>";
    }
}

?>
<html>
<head><title>Edit Download</title>
<script language="JavaScript">  
function batal(){
 		document.location='index.php?page=download';  
}		
</script>
</head>
<body>
<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-laptop"></i> Masters</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.php">Home</a></li>
						<li><i class="fa fa-laptop"></i>Edit Download</li>						  	
					</ol>
				</div>
			</div>

<FORM ACTION="" METHOD="POST" NAME="input">
<table cellpadding="0" cellspacing="0" border="0" width="90%">

	<tr>
		<td>Status</td>
		<td>:
			<select name="kategori">
                <option value="Jurnal" <?php if($kategori=="Jurnal"){ echo "selected"; } ?>>Jurnal</option>
                <option value="Ebooks" <?php if($kategori=="Ebooks"){ echo "selected"; } ?>>Ebooks</option>
			</select>
		</td>
	</tr>
	<tr>
		<td width="200">Nama</td>
		<td>: <input type="text" name="nama" value="<?php echo $nama; ?>" size="30"></td>
	</tr>
	<tr>
		<td width="200">Url</td>
		<td>: <input type="text" name="url" value="<?php echo $url; ?>" size="30"></td>
	</tr>
    <tr>
        <td width="200">Pengirim</td>
        <td>: <input type="text" name="pengirim" value="<?php echo $_SESSION['namauser']?>" size="20" disabled></td>
    </tr>
<tr>
<td>&nbsp;
    <input type="hidden" name="id" value="<?php echo $id; ?>">
<td>&nbsp;&nbsp;<input type="submit" name="Edit" value="Edit Download">&nbsp;
<input type="button" name="Cancel" value="Cancel" onClick="batal()">
</td>
</tr>
</table>
</FORM>
<!-- ck editor -->
    <script type="text/javascript" src="assets/ckeditor/ckeditor.js"></script>
</body>
</html>
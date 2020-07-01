<?php
include "mysqli_koneksi.php";
if (isset($_GET['id'])) {
    $id = $_GET['id'];
} else {
    die ("Error. No Id Selected! ");
}
$query = "SELECT * FROM anggota WHERE id_anggota='$id'";
$sql = mysqli_query ($con,$query);
$hasil = mysqli_fetch_array ($sql);
$id = $hasil['id_anggota'];
$nama = stripslashes ($hasil['nama']);
$url = stripslashes ($hasil['url']);
$status = stripslashes ($hasil['status']);
//proses edit berita
if (isset($_POST['Edit'])) {
    $id = $_POST['id'];
    $nama = addslashes (strip_tags ($_POST['nama']));
    $url = addslashes (strip_tags ($_POST['url']));
    $status = addslashes (strip_tags ($_POST['status']));
    //update berita
    $query = "UPDATE anggota SET nama='$nama',url='$url',status='$status' WHERE id_anggota='$id'";
    $sql = mysqli_query ($con,$query);
    if ($sql) {
    //	echo "<h2><font color=blue>Riset telah berhasil diedit</font></h2>";
        ?>
        <script language="JavaScript">  
            alert('Anggota berhasil di update......');  
            document.location='index.php?page=anggota';  
        </script>
    <?php	
    } else {
        echo "<h2><font color=red>Anggota gagal diedit</font></h2>";
    }
}

?>
<html>
<head><title>Edit Anggota</title>
<script language="JavaScript">  
function batal(){
 		document.location='index.php?page=anggota';  
}		
</script>
</head>
<body>
<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-laptop"></i> Masters</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.php">Home</a></li>
						<li><i class="fa fa-laptop"></i>Edit Anggota</li>						  	
					</ol>
				</div>
			</div>

<FORM ACTION="" METHOD="POST" NAME="input">
<table cellpadding="0" cellspacing="0" border="0" width="90%">

	<tr>
		<td>Status</td>
		<td>:
			<select name="status">
                <option value="Dosen" <?php if($status=="Dosen"){ echo "selected"; } ?>>Dosen</option>
                <option value="Mahasiswa" <?php if($status=="Mahasiswa"){ echo "selected"; } ?>>Mahasiswa</option>
                <option value="Alumni" <?php if($status=="Alumni"){ echo "selected"; } ?>>Alumni</option>
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
<td>&nbsp;
    <input type="hidden" name="id" value="<?php echo $id; ?>">
<td>&nbsp;&nbsp;<input type="submit" name="Edit" value="Edit Anggota">&nbsp;
<input type="button" name="Cancel" value="Cancel" onClick="batal()">
</td>
</tr>
</table>
</FORM>
<!-- ck editor -->
    <script type="text/javascript" src="assets/ckeditor/ckeditor.js"></script>
</body>
</html>
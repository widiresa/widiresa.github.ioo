<?php
include "mysqli_koneksi.php";
if (isset($_GET['id'])) {
    $id = $_GET['id'];
} else {
    die ("Error. No Id Selected! ");
}
$query = "SELECT * FROM kegiatan WHERE id_kegiatan='$id'";
$sql = mysqli_query ($con,$query);
$hasil = mysqli_fetch_array ($sql);
$id = $hasil['id_kegiatan'];
$kategori = stripslashes ($hasil['kategori']);
$judul = stripslashes ($hasil['judul']);
$isi = $hasil['isi'];
//proses edit berita
if (isset($_POST['Edit'])) {
    $id = $_POST['id'];
    $kategori = addslashes (strip_tags ($_POST['kategori']));
    $judul = addslashes (strip_tags ($_POST['judul']));
    $isi = $_POST['isi'];
    //update berita
    $query = "UPDATE kegiatan SET kategori='$kategori',judul='$judul',isi='$isi' WHERE id_kegiatan='$id'";
    $sql = mysqli_query ($con,$query);
    if ($sql) {
    //	echo "<h2><font color=blue>Riset telah berhasil diedit</font></h2>";
        ?>
        <script language="JavaScript">  
            alert('Kegiatan berhasil di update......');  
            document.location='index.php?page=kegiatan';  
        </script>
    <?php	
    } else {
        echo "<h2><font color=red>Kegiatan gagal diedit</font></h2>";
    }
}

?>
<html>
<head><title>Edit Kegiatan</title>
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
						<li><i class="fa fa-laptop"></i>Edit Kegiatan</li>						  	
					</ol>
				</div>
			</div>

<FORM ACTION="" METHOD="POST" NAME="input">
<table cellpadding="0" cellspacing="0" border="0" width="90%">

	<tr>
		<td>Status</td>
		<td>:
			<select name="kategori">
                <option value="Workshop" <?php if($kategori=="Workshop"){ echo "selected"; } ?>>Workshop</option>
                <option value="Klinik" <?php if($kategori=="Klinik"){ echo "selected"; } ?>>Klinik</option>
                <option value="Lomba" <?php if($kategori=="Lomba"){ echo "selected"; } ?>>Lomba</option>
			</select>
		</td>
	</tr>
	<tr>
		<td width="200">Judul</td>
		<td>: <input type="text" name="judul" value="<?php echo $judul; ?>" size="30"></td>
	</tr>
    <tr>
        <td>Isi Kegiatan</td>
        <td>
            <div class="col-sm-20">
                <textarea class="form-control ckeditor" name="isi" rows="6"><?php echo $isi; ?></textarea>
            </div>
        </td>
    </tr>
    <tr>
        <td width="200">Pengirim</td>
        <td>: <input type="text" name="pengirim" value="<?php echo $_SESSION['namauser']?>" size="20" disabled></td>
    </tr>
<tr>
<td>&nbsp;
    <input type="hidden" name="id" value="<?php echo $id; ?>">
<td>&nbsp;&nbsp;<input type="submit" name="Edit" value="Edit Kegiatan">&nbsp;
<input type="button" name="Cancel" value="Cancel" onClick="batal()">
</td>
</tr>
</table>
</FORM>
<!-- ck editor -->
    <script type="text/javascript" src="assets/ckeditor/ckeditor.js"></script>
</body>
</html>
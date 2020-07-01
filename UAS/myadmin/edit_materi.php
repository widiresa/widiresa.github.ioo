<?php
include "mysqli_koneksi.php";
if (isset($_GET['id'])) {
    $id = $_GET['id'];
} else {
    die ("Error. No Id Selected! ");
}
$query = "SELECT * FROM materi WHERE id_materi='$id'";
$sql = mysqli_query ($con,$query);
$hasil = mysqli_fetch_array ($sql);
$id = $hasil['id_materi'];
$kategori = stripslashes ($hasil['kategori']);
$judul = stripslashes ($hasil['judul']);
$url = stripslashes ($hasil['url']);
//proses edit berita
if (isset($_POST['Edit'])) {
    $id = $_POST['id'];
    $kategori = addslashes (strip_tags ($_POST['kategori']));
    $judul = addslashes (strip_tags ($_POST['judul']));
    $url = addslashes (strip_tags ($_POST['url']));
    //update berita
    $query = "UPDATE materi SET kategori='$kategori',judul='$judul',url='$url' WHERE id_materi='$id'";
    $sql = mysqli_query ($con,$query);
    if ($sql) {
    //	echo "<h2><font color=blue>Riset telah berhasil diedit</font></h2>";
        ?>
        <script language="JavaScript">  
            alert('Materi berhasil di update......');  
            document.location='index.php?page=materi';  
        </script>
    <?php	
    } else {
        echo "<h2><font color=red>Materi gagal diedit</font></h2>";
    }
}

?>
<html>
<head><title>Edit Materi</title>
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
						<li><i class="fa fa-laptop"></i>Edit Materi</li>						  	
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
                $query = "SELECT * FROM kategori ORDER BY id_kategori";
                $sql = mysqli_query ($con,$query);
                while ($hasil = mysqli_fetch_array ($sql)) {
                    if($topik==$hasil['id_kategori']){ $select = "selected"; } else { $select = ""; }
                    echo "<option value='$hasil[id_kategori]' $select>$hasil[nm_kategori]</option>";
                }
			?>
			</select>
		</td>
	</tr>
	<tr>
		<td width="200">Judul</td>
		<td>: <input type="text" name="judul" value="<?php echo $judul; ?>" size="30"></td>
	</tr>
	<tr>
		<td width="200">Url</td>
		<td>: <input type="text" name="url" value="<?php echo $url; ?>" size="30"></td>
	</tr>
    <tr>
        <td width="200">Pengirim</td>
        <td>: <input type="text" name="pengirim" value="<?php echo $_SESSION['namauser']?>" size="20" disabled></td>
    </tr>
<tr>&nbsp;
    <input type="hidden" name="id" value="<?php echo $id; ?>">
<td>&nbsp;&nbsp;<input type="submit" name="Edit" value="Edit Materi">&nbsp;
<input type="button" name="Cancel" value="Cancel" onClick="batal()">
</td>
</tr>
</table>
</FORM>
<!-- ck editor -->
    <script type="text/javascript" src="assets/ckeditor/ckeditor.js"></script>
</body>
</html>
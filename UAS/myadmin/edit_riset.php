<?php
include "mysqli_koneksi.php";
if (isset($_GET['id'])) {
    $id = $_GET['id'];
} else {
    die ("Error. No Id Selected! ");
}
$query = "SELECT * FROM riset WHERE id_riset='$id'";
$sql = mysqli_query ($con,$query);
$hasil = mysqli_fetch_array ($sql);
$id = $hasil['id_riset'];
$topik = stripslashes ($hasil['id_topik']);
$isi = stripslashes ($hasil['isi']);
//proses edit berita
if (isset($_POST['Edit'])) {
    $id = $_POST['id'];
    $topik = addslashes (strip_tags ($_POST['topik']));
    $isi = addslashes (strip_tags ($_POST['isi']));
    //update berita
    $query = "UPDATE riset SET id_topik='$topik',isi='$isi' WHERE id_riset='$id'";
    $sql = mysqli_query ($con,$query);
    if ($sql) {
    //	echo "<h2><font color=blue>Riset telah berhasil diedit</font></h2>";
        ?>
        <script language="JavaScript">  
            alert('Riset berhasil di update......');  
            document.location='index.php?page=riset';  
        </script>
    <?php	
    } else {
        echo "<h2><font color=red>Riset gagal diedit</font></h2>";
    }
}

?>
<html>
<head><title>Edit Riset</title>
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
						<li><i class="fa fa-laptop"></i>Edit Riset</li>						  	
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
                    if($topik==$hasil['id_topik']){ $select = "selected"; } else { $select = ""; }
                    echo "<option value='$hasil[id_topik]' $select>$hasil[nama]</option>";
                }
			?>
			</select>
		</td>
	</tr>
	<tr>
		<td width="200">Isi</td>
		<td>: <input type="text" name="isi" value="<?php echo $isi; ?>" size="30"></td>
	</tr>
<tr>&nbsp;
    <input type="hidden" name="id" value="<?php echo $id; ?>">
<td>&nbsp;&nbsp;<input type="submit" name="Edit" value="Edit Riset">&nbsp;
<input type="button" name="Cancel" value="Cancel" onClick="batal()">
</td>
</tr>
</table>
</FORM>
<!-- ck editor -->
    <script type="text/javascript" src="assets/ckeditor/ckeditor.js"></script>
</body>
</html>
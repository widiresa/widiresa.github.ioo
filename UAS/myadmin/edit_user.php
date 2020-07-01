<?php
include "mysqli_koneksi.php";
if (isset($_GET['id'])) {
    $id = $_GET['id'];
} else {
    die ("Error. No Id Selected! ");
}
$query = "SELECT * FROM users WHERE id='$id'";
$sql = mysqli_query ($con,$query);
$hasil = mysqli_fetch_array ($sql);
$id = $hasil['id'];
$username = stripslashes ($hasil['user_id']);
$password = stripslashes ($hasil['passwd']);
$nama = stripslashes ($hasil['nama']);
//proses edit berita
if (isset($_POST['Edit'])) {
$id = $_POST['id'];
$username = addslashes (strip_tags ($_POST['username']));
$password = $_POST['password'];
$nama = addslashes (strip_tags ($_POST['nama']));
//update berita
$query = "UPDATE users SET user_id='$username',passwd='$password',nama='$nama' WHERE id='$id'";
$sql = mysqli_query ($con,$query);
if ($sql) {
//	echo "<h2><font color=blue>Berita telah berhasil diedit</font></h2>";
	?>
	<script language="JavaScript">  
		alert('Data berhasil di update......');  
 		document.location='index.php?page=user';  
	</script>
<?php	
} else {
	echo "<h2><font color=red>User gagal diedit</font></h2>";
}
}

?>
<html>
<head><title>Edit User</title>
<script language="JavaScript">  
function batal(){
 		document.location='index.php?page=user';  
}		
</script>
</head>
<body>
<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-laptop"></i> Masters</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.php">Home</a></li>
						<li><i class="fa fa-laptop"></i>Edit User</li>						  	
					</ol>
				</div>
			</div>

<FORM ACTION="" METHOD="POST" NAME="input">
<table cellpadding="0" cellspacing="0" border="0" width="90%">

	<tr>
		<td width="200">Username</td>
		<td>: <input type="text" name="username" value="<?php echo $username; ?>" size="30"></td>
	</tr>
	<tr>
		<td width="200">Password</td>
		<td>: <input type="text" name="password" value="<?php echo $password; ?>" size="30"></td>
	</tr>
	<tr>
		<td width="200">Nama</td>
		<td>: <input type="text" name="nama" value="<?php echo $nama; ?>" size="30"></td>
	</tr>
<tr>
<td>&nbsp;
    <input type="hidden" name="id" value="<?php echo $id; ?>">
    &nbsp;&nbsp;<input type="submit" name="Edit" value="Edit User">&nbsp;
    <input type="button" name="Cancel" value="Cancel" onClick="batal()">
</td>
</tr>
</table>
</FORM>
<!-- ck editor -->
    <script type="text/javascript" src="assets/ckeditor/ckeditor.js"></script>
</body>
</html>
<?php
include "mysqli_koneksi.php";
//proses input berita
if (isset($_POST['Input'])) {
$username = addslashes (strip_tags ($_POST['username']));
$password = addslashes (strip_tags ($_POST['password']));
$nama = addslashes (strip_tags ($_POST['nama']));
//insert ke tabel
$query = "INSERT INTO users(user_id,passwd,nama) VALUES('$username','$password','$nama')";
$sql = mysqli_query ($con,$query);
if ($sql) {
//echo "<h2><font color=blue>Berita telah berhasil ditambahkan</font></h2>";
?>
	<script language="JavaScript">  

		alert('User berhasil ditambahkan......');  

 		document.location='index.php?page=user';  

	</script>
<?php	
} else {
    echo "<h2><font color=red>User gagal ditambahkan</font></h2>";
}
}
?>
<html>
<head><title>Input User</title>
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
						<li><i class="fa fa-laptop"></i>Input User</li>						  	
					</ol>
				</div>
			</div>
<FORM ACTION="" METHOD="POST" NAME="input">
<table cellpadding="0" cellspacing="0" border="0" width="90%">

	<tr>
		<td width="200">Username</td>
		<td>: <input type="text" name="username" size="30"></td>
	</tr>
	<tr>
		<td width="200">Password</td>
		<td>: <input type="text" name="password" size="30"></td>
	</tr>
	<tr>
		<td width="200">Nama</td>
		<td>: <input type="text" name="nama" size="30"></td>
	</tr>
<tr>
<td>&nbsp;
<td>&nbsp;&nbsp;<input type="submit" name="Input" value="Input User">&nbsp;
<input type="button" name="Cancel" value="Cancel" onClick="batal()">
</td>
</tr>
</table>
</FORM>
</body>
<!-- ck editor -->
    <script type="text/javascript" src="assets/ckeditor/ckeditor.js"></script>
</html>
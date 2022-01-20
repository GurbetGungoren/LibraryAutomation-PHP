
<?php
	function kitapnumarasikontrol($kitapno){
		$link = mysqli_connect("localhost","root","","kutuphane");
		$sonuc = 1;
		$sql = "SELECT * FROM kitaplar WHERE id =" .$kitapno;
		$result=mysqli_query($link, $sql);$row=mysqli_fetch_assoc($result);
		if (empty($row["id"])) {$sonuc=0 ;	}
		return $sonuc ;}
	function ogrencinokontrol($ogrencino)	{
	$link = mysqli_connect("localhost","root","","kutuphane");
		$sonuc = 1;
		$sql = "SELECT * FROM gidenkitaplar WHERE ogrencinumarasi =" .$ogrencino;
		$result=mysqli_query($link, $sql);$row=mysqli_fetch_assoc($result);
		if (empty($row["id"])) {
		$sonuc=0 ;	}
		return $sonuc;}
 ?>


 
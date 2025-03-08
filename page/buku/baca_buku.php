<?php
$BukuID = $_GET['id']; // Use BukuID instead of id

$sql = "SELECT * FROM buku WHERE BukuID = '$BukuID'";
$result = mysqli_query($koneksi, $sql);

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <?php while ($row = mysqli_fetch_assoc($result)) : ?>
    <embed src="./assets/img/uploaded_pdf/<?= $row['linkbuku'] ?>#toolbar=0" type="application/pdf" style="width:100%; height:663px" />
  <?php endwhile ?>
</body>
</html>

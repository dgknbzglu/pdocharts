<?php
try {
    $db = new PDO("mysql:host=localhost;dbname=DATABASENAME;charset=utf8", "DATABASEUSER", "DATABASEPASS");
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }
catch(PDOException $e)
    {
    echo "Bağlantı hatası: " . $e->getMessage();
    }
header('Content-Type: application/json');
$query = $db->prepare('SELECT * FROM danisman');
$query->execute();

$data = array();
foreach ($query as $row) {
	$data[] = $row;
}
echo json_encode($data);
?>
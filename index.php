
<?php

include("db.php");

$query_1 = "SELECT * FROM array_data WHERE nombre = 'Pablo' or nombre = 'Test2'";
$query_2 = "SELECT * FROM array_data wHERE nombre = 'Pablo' or nombre = 'Test2'";
// $query_2 = "SELECT * FROM array_data";
$result_query_1 = mysqli_query($conn, $query_1);
$result_query_2 = mysqli_query($conn, $query_2);


$rptas = [];
while($row = mysqli_fetch_array($result_query_1)){
    $rptas [$row['id']] = ['nombre' => $row['nombre'],
        'apellido' => $row['apellido']];
}

while($row = mysqli_fetch_array($result_query_2)){
    $rptas [$row['id']]['numero'] = $row['numero'];
    $rptas [$row['id']]['correo'] = $row['correo'];
}

print_r($rptas);
?>
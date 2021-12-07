
<?php

include("db.php");

$query_1 = "SELECT * FROM array_data WHERE nombre = 'Pablo' or nombre = 'Test2' order by id desc";
$query_2 = "SELECT * FROM array_data wHERE nombre = 'Pablo' or nombre = 'Test2'";
$result_query_1 = mysqli_query($conn, $query_1);
$result_query_2 = mysqli_query($conn, $query_2);


$rptas = [];

// -----------------------  Eje #1 ----------------------- //
// while($row = mysqli_fetch_array($result_query_1)){
//     $rptas [$row['id']] = ['nombre' => $row['nombre'],
//         'apellido' => $row['apellido']];
// }

// while($row = mysqli_fetch_array($result_query_2)){
//     $rptas [$row['id']]['numero'] = $row['numero'];
//     $rptas [$row['id']]['correo'] = $row['correo'];
// }

// print_r($rptas);

// -----------------------  Eje #2 ----------------------- //
foreach ($result_query_1 as $key => $value) {
    $rptas [$value['id']] = ['nombre' => $value['nombre'],
        'apellido' => $value['apellido']];
}

foreach ($result_query_2 as $key => $value) {
    $rptas [$value['id']]['numero'] = $value['numero'];
    $rptas [$value['id']]['correo'] = $value['correo'];
}

print_r($rptas);
?>
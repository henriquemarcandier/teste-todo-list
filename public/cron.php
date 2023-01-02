<?php
require_once('connect.php');
date_default_timezone_set('America/Sao_Paulo');
$diasMes = date('t', strtotime(date('Y-m-d H:i:s')));
$d = 0;
for ($i = 1; $i <= $diasMes; $i++){
    if ($i < 10){
        $i2 = "0".$i;
    }
    else{
        $i2 = $i;
    }
    $data = date('Y-m')."-".$i2;
    $sql = "SELECT * FROM todo_lists_tasks WHERE date = '2022-12-29'";
    $query = mysqli_query($con, $sql);
    if (mysqli_num_rows($query)){
        while ($row = mysqli_fetch_array($query)){
            $sql = "SELECT * FROM todo_lists_tasks WHERE id_todo_lists = '".$row['id_todo_lists']."' AND name = '".$row['name']."' AND text = '".$row['text']."' AND date = '".$data."'";
            $query2 = mysqli_query($con, $sql);
            if (!mysqli_num_rows($query2)){
                $sql = "INSERT INTO todo_lists_tasks (id_todo_lists, name, text, completed, date, created_at, updated_at) VALUES ('".$row['id_todo_lists']."', '".$row['name']."', '".$row['text']."', '0', '".$data."', '".date('Y-m-d H:i:s')."', '".date('Y-m-d H:i:s')."')";
                mysqli_query($con, $sql);
                $d++;
            }
        }
    }
}
echo $d." registros inserido com sucesso!";
$d2 = 0;
$sql = "SELECT * FROM todo_lists_tasks WHERE date < '".date('Y-m-d')."'";
$query = mysqli_query($con, $sql);
if (mysqli_num_rows($query)){
    while ($row = mysqli_fetch_array($query)){
        $sql = "UPDATE todo_lists_tasks SET completed = '1' WHERE id = '".$row['id']."'";
        mysqli_query($con, $sql);
        $d2++;
    }
}
echo "<br>".$d2." registros atualizados com sucesso!";
?>
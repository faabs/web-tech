<?php
    $connect = msqli_connect("localhost", "root", "marino", "cannela");
    $sql = "SELECT * from menu";
    $result = mysqli_query($connect, $sql);
    $nrow = mysqli_num_rows($result);
    echo("Existen $nrow productos en el menú");
?>
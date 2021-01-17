<?php
    include "conexao.php";
    $conn = mysqli_connect($server_name,$user_name,$password_name,$database_name);

    if($conn ->connect_error){
        die("FALHA NA CONEXAO : ". $conn->connect_error);
    }

    $sql = "SELECT * FROM enredo"; ///MUDEI ENREDO, ESTAVA CONTEXTO
    $result = $conn->query($sql);

    while($row =$result->fetch_assoc()) {
        echo "<p>" .$row['frase']
        .$row['imagem']."</p>";
    }

    
?>
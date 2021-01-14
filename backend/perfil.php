<?php
    include "conexao.php";
    $conn = mysqli_connect($server_name,$user_name,$password_name,$database_name);

    if($conn ->connect_error){
        die("FALHA NA CONEXAO : ". $conn->connect_error);
    }

    $sql = "SELECT * FROM cadastro inner join cadastro_jogo on idcadastro=idcadastro_jogo";
    $result = $conn->query($sql);

    //$sql = "DELETE FROM cadastro WHERE idcadastro=";
    //$result = $conn->query($sql);

    //$sql = "UPDATE item FROM cadastro WHERE idcadastro=";
    //$result = $conn->query($sql);

    while($row =$result->fetch_assoc()) {
        echo "<p>" .$row['nome']
        .$row['data_nascimento']
        .$row['email'] 
        .$row['telefone']
        .$row['senha'] 
        .$row['apelido']
        .$row['avatar']."</p>";   
        echo "<hr>";
    }
?>
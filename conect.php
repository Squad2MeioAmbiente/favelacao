<?php
    $servername = "localhost"; 
    $username = "root"; 
    $password = ""; 
    $database = "favelacao"; 
    $conn = mysqli_connect($servername, $username, $password, $database); 

    if(isset($_POST['nome'])){ 
        
        $nome =$_POST['nome'];
        $dataNascimento =$_POST['dataNascimento']; 
        $email =$_POST['email'];
        $telefone =$_POST['telefone'];
        $senha =$_POST['senha'];
        $confirmarSenha =$_POST['confirmarSenha'];

        
        $sql = "insert into usuarios (nome, dataNascimento, email, telefone, senha, confirmarSenha) values ('$nome', '$dataNascimento', '$email', '$telefone', '$senha', '$confirmarSenha')"; 
        $result = mysqli_query($conn, $sql); 
        if($result){ 
            echo "Dados inseridos com Sucesso!"; 
        }
        else{ 
            echo "Dados Não Inseridos!";
        } 
        
    }
    else{
        echo "Por favor, preencha todos os campos!";
    } 
    
?>  


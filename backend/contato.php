<?php
    include "conexao.php";
    $conn = mysqli_connect($server_name,$user_name,$password_name,$database_name);

    if($conn ->connect_error){
        die("FALHA NA CONEXAO : ". $conn->connect_error);
    }

    //envio para a tabela contato
    $nome=$_POST['nome']; 
    $email=$_POST['email']; 
    $mensagem=$_POST['mensagem'];

    if(isset($_POST['nome']) && isset($_POST['email'])  && isset($_POST['mensagem'])){ 
       
        $sql = "INSERT INTO contato (nome, email, mensagem) VALUES ( '$nome', '$email', '$mensagem')"; 
        $result = mysqli_query($conn, $sql);
        echo "<script>
            alert ('$nome, mensagem enviada com Sucesso!')
            window.location.href='contato.html'
        </script>"; 
    }
    else{
        echo "<script>
            alert ('Dados inválidos!')
            window.location.href='contato.html'
        </script>";        
    }

    //retorno da tabela contato
    $sql = "SELECT * FROM contato";
    $result = $conn->query($sql);

    while($row =$result->fetch_assoc()) {
        echo "<p>" .$row['nome']
        ."disse: " .$row['mensagem']
        ."</p>";   
        echo "<hr>";
    }
?>
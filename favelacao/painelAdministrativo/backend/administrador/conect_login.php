<?php
   // Se a sessão não existir, inicia uma
    if (!isset($_SESSION)) session_start();

    require_once('../config/conexaobd.php');

    $email=($_POST['email']);
	$senha=($_POST['senha']);

	
	if(($email!=="") && ((strlen($_POST['senha']))===8)){
         
        $sql = "SELECT * FROM administrador WHERE email='$email'"; 
        $result = mysqli_query($conn, $sql); 
        $row = mysqli_fetch_assoc($result);
        

        if($row && $row['senha']===md5($senha)){
      
            $_SESSION['userAdmin'] = [
                'id' => $row['id'],
                'nome' => $row['nome'],
                'dataNascimento' => $row['dataNascimento'],
                'email' => $row['email'],
                'telefone' => $row['telefone'],
                'senha' => $row['senha'],
                'confirmarSenha' => $row['confirmarSenha'],
                'categoriaSecreta' => $row['categoriaSecreta'],
                'respSecreta' => $row['respSecreta'],             
            ];
            
            echo "<script>
                alert ('Login realizado com sucesso!')
                window.location.href='../../dashboard.php'
            </script>";
        }
        else if($row && $row['senha']!==md5($senha)){
            echo "<script>
                alert ('Senha inválida!')
                window.location.href='../../index.php'
            </script>";
        }   
        else{
            echo "<script>
                    alert ('E-mail inválido!')
                    window.location.href='../../index.php'
                </script>";
        }  
    }
    else{
        echo "<script>
                alert ('E-mail inválido!')
                window.location.href='../../index.php'
            </script>";
    }
?>
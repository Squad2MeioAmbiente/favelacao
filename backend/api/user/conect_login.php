<?php
   // Se a sessão não existir, inicia uma
    if (!isset($_SESSION)) session_start();

    require_once('../config/dblogincad.php');

    
    $email=($_POST['email']);
	$senha=($_POST['senha']);

	
	if(($email!=="") && ((strlen($_POST['senha']))===8)){
         
        $sql = "SELECT * FROM usuarios WHERE email='$email'"; 
        $result = mysqli_query($conn, $sql); 
        $row = mysqli_fetch_assoc($result);

        if($row && $row['senha']===md5($senha)){
      
            $_SESSION['user'] = [
                'id' => $row['id'],
                'nome' => $row['nome'],
                'dataNascimento' => $row['dataNascimento'],
                'email' => $row['email'],
                'apelido' => $row['apelido'],
                'imgAvatar' => $row['imgAvatar'],              
            ];
            
            echo "<script>
                alert ('Login realizado com sucesso!')
                window.location.href='../../../frontend/'
            </script>";
        }
        else if($row && $row['senha']!==md5($senha)){
            echo "<script>
                alert ('Senha inválida!')
                window.location.href='../../../frontend/pages/login.php'
            </script>";
        }   
        else{
            echo "<script>
                    alert ('E-mail inválido!')
                    window.location.href='../../../frontend/pages/login.php'
                </script>";
        }  
    }
    else{
        echo "<script>
                alert ('E-mail inválido!')
                window.location.href='../../../frontend/pages/login.php'
            </script>";
    }
?>
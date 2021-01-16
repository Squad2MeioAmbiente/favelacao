<?php
	include "conexao.php";

	$conn = mysqli_connect($server_name,$user_name,$password_name,$database_name);
	
	$email=($_POST['email']);
	$senha=md5(($_POST['senha']));
	
	if(($email!=="") && ((strlen($_POST['senha']))===8)){
         
        $sql = "SELECT email, senha FROM cadastro where email='$email'"; 
        $result = mysqli_query($conn, $sql); 
        
        $row = mysqli_fetch_assoc($result);
        if($row['senha']===$senha){
            echo "<script>
                alert ('Login realizado com sucesso!')
                window.location.href='perfil.html'
            </script>";
        }
        else{
            echo "<script>
                alert ('E-mail inválido ou senha inválida!')
                window.location.href='index.html'
            </script>";
        }     
    }
    else{
        echo "<script>
            alert ('E-mail inválido ou senha inválida!')
            window.location.href='index.html'
        </script>";
    }
?>
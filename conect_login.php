<?php
	$servername = "localhost"; 
    $username = "root"; 
    $password = ""; 
    $database = "favelacao"; 
    $conn = mysqli_connect($servername, $username, $password, $database); 
    
    $email=($_POST['email']);
	$senha=($_POST['senha']);

	
	if(($email!=="") && ((strlen($_POST['senha']))===8)){
         
        $sql = "SELECT email, senha FROM usuarios WHERE email='$email'"; 
        $result = mysqli_query($conn, $sql); 
        $row = mysqli_fetch_assoc($result);
        if($row['senha']===$senha){
            echo "<script>
                alert ('Login realizado com sucesso!')
                window.location.href='home.php'
            </script>";
        }
        else{
            echo "<script>
                alert ('E-mail inválido ou senha inválida!')
                window.location.href='index.php'
            </script>";
        }     
    }
    else{
        echo "<script>
                alert ('E-mail inválido ou senha inválida!')
                window.location.href='index.php'
            </script>";
    }
?>
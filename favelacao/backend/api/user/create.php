<?php
    require_once('../config/dblogincad.php');


    if(isset($_POST['nome']) && (($_POST['senha'])===($_POST['confirmarSenha'])) ){ 
        
        $nome =$_POST['nome'];
        $dataNascimento =$_POST['dataNascimento']; 
        $email =$_POST['email'];
        $telefone =$_POST['telefone'];
        $senha =md5($_POST['senha']);
        $confirmarSenha =md5($_POST['confirmarSenha']);
        $apelido =$_POST['apelido'];
        $imgAvatar =$_POST['imgAvatar'];

        
        $sqlverificar = "SELECT email from usuarios WHERE email='$email'"; 
        $results = mysqli_query($conn, $sqlverificar); 

        if (mysqli_num_rows($results)>=1){
            echo "<script>
                alert ('Email já cadastrado!')
                window.location.href=''
            </script>";
        }else{ 
            $sql = "insert into usuarios (nome, dataNascimento, email, telefone, senha, confirmarSenha, apelido, imgAvatar) values ('$nome', '$dataNascimento', '$email', '$telefone', '$senha', '$confirmarSenha', '$apelido', '$imgAvatar' )"; 
            $result = mysqli_query($conn, $sql); 
            if($result && mysqli_num_rows($results)==0){ 
                echo "<script>
                    alert ('Dados inseridos com sucesso!')
                    window.location.href='../../../frontend/login.php'
                </script>";
            }
            else{ 
                echo "<script>
                    alert ('Dados não inseridos!')
                    window.location.href=''
                </script>";
            } 
        }    
    }
    else{
        echo "<script>
                alert ('Dados não inseridos! A senha e a confirmação devem ser iguais')
                window.location.href='../../../frontend/cadastro.php'
            </script>";
    } 
    
?>  

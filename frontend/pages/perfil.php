<?php
  
    if (!isset($_SESSION)) session_start();
  
    if (isset($_REQUEST['sucesso'])) {
        echo "<script>
        alert('Dados atualizados com sucesso'); 
        </script>";
    }
   
    if (!$_SESSION)
      echo "<script>
        alert('É necessário realizar Login'); 
        window.location.href='./login.php' 
        </script>";
?>

<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <link rel="preconnect" href="https://fonts.gstatic.com/%22%3E">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link rel="sortcut icon" href="../img/logo_Megafone_Grande.png" type="image/x-icon" />
    <link rel="stylesheet" href="../css/perfil.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="../js/perfil.js"></script>
    
    <title>Pagina de Perfil</title>
  </head>


  <body onload="get()">

    <?php 
      require "./templates/menu/menu.php";
    ?>

      <div class="titulo">
       <h1><img class="imgContato" src="../img/iconPerfil.png" alt="atendimento">Perfil</h1><br/>
      </div>
       <main>
  <div class="corbug">
 
  </div>



  <div class="container d-flex justify-content-center">
    <div class="card p-4 py-8">
    <div class="text-center"> <img src="../img/<?php echo $_SESSION['user']['imgAvatar'];?>" alt="Avatar" width="100" class="rounded-circle">
            <h3 class="mt-2"><?php echo $_SESSION['user']['apelido']; ?></h3> 

            
    <form method="POST" action="../../backend/api/user/updat.php">
        
 
  <div class="form-group row">
  <input type="hidden" id="id" name="id"  value="<?php echo $_SESSION['user']['id']; ?>" required/>
 
  
      <label for="nome">Nome</label>
    <input type="text" class="form-control"  id="nome" name="nome"  value="<?php echo $_SESSION['user']['nome']; ?>" placeholder="Nome">
  
    <label for="email">Email: </label>
    <input type="email" class="form-control"id="email" name="email" value="<?php echo $_SESSION['user']['email']; ?>" aria-describedby="emailHelp" placeholder="Email">

  
    <label for="nascimento">Data de Nascimento: </label>

    <input class="form-control"  type="date" value="<?php echo $_SESSION['user']['dataNascimento']; ?>" id="nascimento" name="dataNascimento">

    <label for="apelido">Apelido</label>
    <input type="text" class="form-control" id="apelido" name="apelido" value="<?php echo $_SESSION['user']['apelido']; ?>" placeholder="apelido">
    <input type="hidden" id="id" name="imgAvatar" value="<?php echo $_SESSION['user']['imgAvatar']; ?>" required/>

    </div>
    
    <button type="submit" class="btn btn-block boton"> Editar </button>
                 
     </div>

          </form>  

          <form method="POST" action="./validacoes/validacaoPerfil.html">
                  <button type="submit" class="neo-button"><i class="fa fa-trash"></i></button>
                  </form>
            <br/>
       
        </div>
    </div>
</div>
       

    <div class="corbug">
      <br><br><br><br><br><br><br>
    </div>
  </main>
  
  <footer>
    <?php 
      require "./templates/rodape/rodape.php";
      ?>
  </footer>

  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  
</body>

</html>
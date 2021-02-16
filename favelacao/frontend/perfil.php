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
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <!--CSS/Bootstrap-->
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> 
      <!--CSS-->
     
      <!--Fonts-->
      <link rel="preconnect" href="https://fonts.gstatic.com">
      <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@700;900&display=swap" rel="stylesheet">
      <link rel="stylesheet" href="css/perfil.css">
      
      <link rel="sortcut icon" href="./img/logo_Megafone_Grande.png" type="image/x-icon"/>
      <script src="./perfil.js"></script>
      
    <title> Perfil</title>
  </head>
  <header>  
    <!--menu-->
    <?php
      include("./templates/menu.php")
    ?>
  </header> 

  <body onload="get()">  

    <div class="bg-img">
     <section class="bloco01">
      <div class="card">
        <img src="./img/<?php echo $_SESSION['user']['imgAvatar'];?>" alt="Personagem">
        <span class="person" ><?php echo $_SESSION['user']['apelido'];?></span>       
      </div>
       
      <div>
        <form method="POST" action="../backend/api/user/delet.php">
          <button type="submit" class="bdelete btn btn-danger btn-lg">Deletar Conta</button>
        </form>
      </div>
    </section>
      
    <section class="bloco02">
      <button class="buttonPlay">
         <a href="././jogo/screen1/s1.html"><img src="./img/play.png" alt="Play"></a>
      </button>

       <div class="status-jogador">
        <span>Missão completas:       
          <img src="./img/check-circle.png" alt="Check">         
        </span>
        <span>|</span>
        <span>
          Medalhas Recebidas: 
          <img src="./img/medalha_icon.png" alt="Medalha">
        </span>
      </div>
        <!-- <p class="title-dados"></p> -->
        <div class="card-box" >
          <form class="style-form" method="POST" action="../backend/api/user/updat.php">
            <!-- <fieldset> -->
              <!-- <div class="row">
                <div class="form-group col-sm-8"> --> 
                <div class="form-group col-sm">

                  <label for="nome">Nome:</label>
                  <input type="hidden" id="id" name="id"  value="<?php echo $_SESSION['user']['id']; ?>" required/>
                  <input type="text" id="nome" name="nome" maxlength="25"  minlength="5"  class="form-control" pattern="[a-zA-Zá-Zãâéêíîóôõú\s]+$" value="<?php echo $_SESSION['user']['nome']; ?>" class="form-control border border-dark " required/>
                        
                  <label for="nascimento">Data de nascimento:</label>
                  <input type="date" id="nascimento" name="dataNascimento" maxlength="10" pattern="dd-mm-yyyy" min="1900-01-01" max="2020-01-30" class="form-control border border-dark" value="<?php echo $_SESSION['user']['dataNascimento']; ?>" required/>
                     
                  <label for="email">Email:</label>
                  <input type="email" id="email" name="email" maxlength="50" class="form-control border border-dark" value="<?php echo $_SESSION['user']['email']; ?>" required/>
                         
                  <label for="apelido">Apelido:</label>
                  <input type="text" id="apelido" name="apelido" pattern="[a-zA-Zá-Zãâéêíîóôõú\s]+$" class="form-control border border-dark" value="<?php echo $_SESSION['user']['apelido']; ?>" required/>
                  <input type="hidden" id="id" name="imgAvatar" value="<?php echo $_SESSION['user']['imgAvatar']; ?>" required/>
                  <button  type="submit" class="button-atualizar flex-row-reversebtn btn-warning btn-lg">Atualizar</button> 
                </div>
              <!-- </div>   -->
            <!-- <fieldset>  -->

          </form>         
        </div>

    </section>
  </div>
   
  <?php
      include("./templates/rodape.php")
  ?>
  
    
   
   <!--JavaScript/Bootstrap-->
   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>



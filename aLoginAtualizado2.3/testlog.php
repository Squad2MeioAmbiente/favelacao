<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <!-- Meta tags Obrigatórias -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./testlog.css">
    <title>LOgin</title>
  </head>


  <body>
      <header>  
         <!--menu-->
          <?php
          include_once('menu.html');
          ?>
    
       </header>

  <main>
  <div class="corbug">
    <!-- I'm an element that is block-like with my siblings and we're centered in a row. -->
  </div>

  <div class="card-body" id="telalogin">
         <img class="card-img-top mx-auto logimg" src="./img/logo-FavelAção.png" alt="Imagem de capa do card">

        <form action="http://localhost/favelacao-patricia/api/user/conect.php" name="#" method="post"  class="needs-validation">

          <div class="form-group col-sm">
            <label for="exampleInputEmail1">Login</label>
            <input type="email" name="email" class="form-control" id="" placeholder="Seu email">
            </div>
            <div class="form-group col-sm">
            <label>Senha:</label>
            <input type="password" name="senha" class="form-control" id="" placeholder="Insira sua senha">
            </div>
            <div>
              <button type="submit" class="btn btn-block boton">Entrar</button>
            </div>
            <a class="aLogin" href="./cadastro.php"> Ainda não tem conta? </a>

        </form> 
   </div>      

    <div class="corbug">
      <!-- I'm an element that is block-like with my siblings and we're centered in a row. -->
      <br><br><br><br><br><br><br>
    </div>
</main>

<footer class="rodape">
    
        <a href="https://instagram.com/">
          <img class="iconInstagram" src="./img/instagram.svg" alt="Instagram"> 
        </a>
        <a href="https://github.com/">
          <img class="iconGit" src="./img/logotipo-do-github.svg" alt="GitHub">
        </a>
        <a href="https://www.instagram.com/">
          <img class="iconInstagram" src="./img/facebook.svg.url" alt="">
        </a> 
        <span>FavelAção 2021</span>
</footer>

    <!-- <footer><H1>lkasdjfçlkasdjfçlaksjd</H1></footer> -->

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

  </body>
</html>
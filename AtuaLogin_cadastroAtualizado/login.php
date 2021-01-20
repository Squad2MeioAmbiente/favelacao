<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <!-- Meta tags Obrigatórias -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">


    <link rel="stylesheet" href="css/login.css">
    <title>LOgin</title>
  </head>

  <body id="fundo">

  <header>
    <!--menu-->
    <?php
         include_once('menu.html');
     ?> 
  </header>
    
    <main class="card" id="telaLogin">
   
      <img class="card-img-top mx-auto logimg" src="./img/logo-FavelAção.png" alt="Imagem de capa do card">
      
      <div class="card-body">
        <form action="http://localhost/login_Cadastro_menu/favelacao/api/user/conect_login.php" name="#" method="post"  class="needs-validation">
          <div class="form-group">
            <label for="exampleInputEmail1">Login</label>
            <input type="email" name="email" class="form-control" id="" placeholder="Seu email">
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Senha:</label>
            <input type="password" name="senha" class="form-control" id="exampleInputPassword1" placeholder="Insira sua senha">
          </div>
          <button type="submit" class="btn btn-block boton">Entrar</button>
          <a href="./cadastro.php"> Ainda não tem conta? </a>
        </form>  
      </div>
    </main>

    <footer class="footer mt-auto  py-2   fixed-bottom footercolor ">
      <div class="container text-center">
          <span class="text-muted"> FavelAção</span>
      </div>
  </footer>
   


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>





  </body>
</html>
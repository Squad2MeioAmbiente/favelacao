<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <!-- Meta tags Obrigatórias -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="css/cadastro.css">
    <title>Login</title>
  </head>
  
  <div  >
    <!--menu-->
    <?php
         include_once('menu.html');
    ?>
 
 </div>
 
  <body class="fundo mb-3" >
    <div class="card" id="telaLogin">

      <div class="card-body">
        <h3>Faça seu cadastro</h3>

        <form action="http://localhost/login_Cadastro_menu/favelacao/api/user/conect.php" method="POST">
               
          <div class="form-group">
              <label >Nome:</label>
              <input type="text" name="nome" id="nome"  class="form-control" placeholder="Digite seu nome aqui:">
          </div>
          

          
          <div  class="form-group">
              <label>Data de nascimento:</label>
              <input type="date" name="dataNascimento" maxlength="10" class="form-control" placeholder="Data de nascimento" /> 
          </div>
          
          <div class="form-group"></div>
              <label>E-mail</label>
              <input type="email" name="email" class="form-control" maxlength="50" placeholder="Digite seu E-mail"/>
          </div>

          <div class="form-group"></div>
              <label>Telefone:</label>
              <input type="text" name="telefone" class="form-control" placeholder="( ) xxxxx-xxxx" />
          </div> 
        
          <div class="form-group"></div>
              <label>Senha:</label>
              <input type="password" name="senha" class="form-control" minlength="8" placeholder="Digite uma senha"/>
          </div>

          <div class="form-group"></div>
              <label>Confirme:</label>
              <input type="password" name="confirmarSenha" class="form-control" placeholder="Confirme a senha" />
          </div>
          <br>
          <div class="row">
              <div class="col-sm"><button name="btn_cadastra" type="submit" class="btn btn-success"> Cadastre-se</button></div>
                  
              <div class="col-sm"><a href="index.php"><button type="button" class="btn btn-danger">Cancelar</button> </a></div>
          </div>
      
        </form>

        
        

    <footer class="footer mt-auto  py-2   fixed-bottom footercolor ">
      <div class="container text-center">
          <span class="text-muted"> FavelAção</span>
      </div>
    </footer>

 


    <!-- JavaScript (Opcional) -->
    <!-- jQuery primeiro, depois Popper.js, depois Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  </body>
</html>
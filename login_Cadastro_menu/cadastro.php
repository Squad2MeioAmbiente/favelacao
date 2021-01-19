<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <!-- Meta tags Obrigatórias -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="css/cadastro.css">
    <title>LOgin</title>
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
        <form  action="" method="POST" class="" novalidate>
          <div class="form-group">
            <label for="name"> Nome: </label>
            <input type="text" name="nome" id="" class="form-control" pattern="[a-zA-Zá-Zãâéêíîóôõú\s]+$"  aria-describedby="emailHelp" placeholder="Digite seu nome aqui!" requied>
          </div>
          <div class="form-group">
            <label for="data_nascimento">Data de nascimento:</label>
            <input type="date" name="data_nascimento" class="form-control" id="" >
          </div>
          <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" name="email" class="form-control" id=""  placeholder="Seu email">
          </div>
          <div class="form-group">
            <label for="tel">Telefone:</label>
            <input type="num" name="telefone" class="form-control" id="" aria-describedby="tellHelp" placeholder="( ) 999999999" required>
          </div>
          <div class="form-group">
            <label for="senha">Senha:</label>
            <input type="password" name="senha" class="form-control" id="" placeholder="Crie uma senha">
          </div>
          <div class="form-group">
            <label for="confirme">Confirme a senha:</label>
            <input type="password" name="confirmesenha" class="form-control" id="" placeholder="digite sua senha ">
          </div>
          <!--  botton  -->
          <a type="submit" class="btn btn-block boton" data-toggle="modal" data-target="#siteModal">Entrar</a>
          <a href="./index.php"> Ja tem conta? </a>
        </form>  

      </div>
    </div>

    <footer class="footer mt-auto  py-2   fixed-bottom footercolor ">
      <div class="container text-center">
          <span class="text-muted"> FavelAção</span>
      </div>
  </footer>

<!-- Modal -->
<div class="modal fade" id="siteModal" tabindex="-1" role="dialog"'>
  <div class="modal-dialog modal-lg" role="document" >
    <div class="modal-content ">

      <div class="modal-header">        
          <h5 class="modal-title"> Escolha sua personagem </h5>
          <button type="button" class="close" data-dismiss="modal">
            <span>&times;</span>
          </button>          
      </div>

      <div class="modal-body">
        <div class="container-fluid">
          <div class="card-deck mb-3 text-center">

            <div class="card mb-4 shadow-sm">            
                  <div class="card-body">
                    <img class="card-img-top" src="./img/perso1.png" alt="Card image cap">
                          <form action="" method="">
                          <!-- <label for=""> Apelido </label> -->
                              <input type="text" class="form-control" id=""  placeholder=" Insira seu apelido ">
                          <button type="button"  name="btn_cadastra" class="btn btn-sm btn-block btn-outline-primary">Escolher</button> 
                          </form>                      
                  </div>
            </div>

            <div class="card mb-4 shadow-sm">            
                  <div class="card-body">
                    <img class="card-img-top" src="./img/perso2.png" alt="Card image cap">
                          <form action="" method="">
                          <!-- <label for="#">Apelido</label> -->
                              <input type="text" class="form-control" id=""  placeholder="Insira seu apelido ">
                          <button type="button" class="btn btn-sm btn-block btn-outline-primary">Escolher </button> 
                          </form>                      
                  </div>
            </div>

            <div class="card mb-4 shadow-sm">            
                  <div class="card-body">
                    <img class="card-img-top" src="./img/perso3.png" alt="Card image cap">
                          <form action="" method="" >
                          <label for="">Apelido</label>
                              <input type="text" class="form-control" id=""  placeholder="Insira seu apelido ">
                          <a href="./index.php" type="button" class="btn btn-sm btn-block btn-outline-primary"> Escolher </a>
                          </form>                      
                  </div>
            </div>
                  
          </div>
        </div>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-danger"  data-dismiss="modal"> Fechar </button>
      </div>

    </div>
  </div>
</div>

    <!-- JavaScript (Opcional) -->
    <!-- jQuery primeiro, depois Popper.js, depois Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  </body>
</html>
<!doctype html>
<html lang="pt-br">
  <head>
  <!-- Meta tags Obrigatórias -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <link rel="stylesheet" href="css/cadastroUsuario.css">
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@700;900&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="sortcut icon" href="./img/logo_Megafone_Grande.png" type="image/x-icon" />

  <!-- <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"> -->

  <title>Cadastro</title>
  </head>

  <body>
      <header>  
         <!--menu-->
        <?php
          include("./templates/menu.php")
        ?>
      </header>
    <main>
        <div>
          <!-- I'm an element that is block-like with my siblings and we're centered in a row. -->

        </div>

        <div class="card-body">
            <h3>Faça seu cadastro</h3>
          <form action="../backend/api/user/create.php" method="POST">
            <!-- <h3>Faça seu cadastro</h3> -->
            
            <div class="form-group">
                <label>Nome:</label>
                <input type="text" name="nome" id="nome" class="form-control" maxlength="25"  minlength="5"  class="form-control" pattern="[a-zA-Zá-Zãâéêíîóôõú\s]+$" placeholder="Digite aqui:" required/>
            
                <label>Data de nascimento:</label>
                <input type="date" name="dataNascimento" maxlength="10" pattern="dd-mm-yyyy" min="1900-01-01" max="2020-01-30" class="form-control"/> 
            
                <label>E-mail</label>
                <input type="email" name="email" class="form-control" maxlength="50" placeholder="Digite seu E-mail"required/>
            
                <label>Telefone:</label>
                <input type="text" name="telefone" class="form-control" pattern="^\d{2}-\d{5}-\d{4}$"  placeholder="xx-xxxxx-xxxx" required/>
            
                <label>Senha:</label>
                <input type="password" name="senha" class="form-control" minlength="8" placeholder="Digite uma senha com 8 dígitos" required/>
            
                <label>Confirme:</label>
                <input type="password" name="confirmarSenha" class="form-control" placeholder="Confirme a senha" required/>
            
                <label >Apelido:</label>
                <input type="text" name="apelido" id="apelido"  class="form-control" pattern="[a-zA-Zá-Zãâéêíîóôõú\s]+$" placeholder="Digite seu Apelido aqui:" required/>
            

              <div class="wid">
                <div class="row wid">
                    <img  src="./img/perso1.png" alt="person1" class="">
                  
                    <img src="./img/perso2.png" alt="person2" class="rounded">

                    <img src="./img/perso3.png" alt="person3" class="rounded">
                </div>  
              </div>
                <div class="container row wid">
                  <div class="row col wid">
                    <input type="radio" name="imgAvatar" value="perso1.png" required/>
                  </div>
                  <div class="row col wid">
                    <input type="radio" name="imgAvatar" value="perso2.png" required/>
                  </div>     
                  <div class="row col-2 wid">
                    <input TYPE="radio" name="imgAvatar" value="perso3.png" required/>
                  </div>
                </div>
              </div>                
            <button name="btn_cadastra" type="submit" class="btn btn-block boton mt-3"> Cadastre-se</button>
                        
            <a class="acor" href="./login.php"> Já tem conta? </a><br>

          </form>
        </div>
        <div>
          <!-- I'm an element that is block-like with my siblings and we're centered in a row. -->
        </div>
      </main>
      <?php
        include("./templates/rodape.php")
      ?>
 
  </body>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</html>
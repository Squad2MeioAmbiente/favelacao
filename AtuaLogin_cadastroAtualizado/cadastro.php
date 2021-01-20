<!doctype html>
<html lang="pt-br">
  <head>
  <!-- Meta tags Obrigatórias -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <link rel="stylesheet" href="css/cadastroUsuario.css">
  <title>Login</title>
  </head>

  <body>
      <header>  
         <!--menu-->
          <?php
          include_once('menu.html');
          ?>
       
       </header>
    <main>
        <div>
          <!-- I'm an element that is block-like with my siblings and we're centered in a row. -->

        </div>

        <div class="card-body ">
            <h3>faça seu cadastro</h3>
          <form action="http://localhost/favelacao-patricia/api/user/conect.php" method="POST">
            <!-- <h3>Faça seu cadastro</h3> -->
            
            <div class="form-group">
                <label>Nome:</label>
                <input type="text" name="nome" id="nome"  class="form-control" placeholder="Digite aqui:">
            </div>

            <div class="form-group col-sm">
                <label>Data de nascimento:</label>
                <input type="date" name="dataNascimento" maxlength="10" class="form-control"/> 
            </div>
        
            <div class="form-group">
                <label>E-mail</label>
                <input type="email" name="email" class="form-control" maxlength="50" placeholder="Digite seu E-mail"/>
            </div>

            <div class="form-group">
                <label>Telefone:</label>
                <input type="text" name="telefone" class="form-control" placeholder="( ) xxxxx-xxxx" />
            </div> 
        
            <div class="form-group">
                <label>Senha:</label>
                <input type="password" name="senha" class="form-control" minlength="8" placeholder="Digite uma senha"/>
            </div>

            <div class="form-group">
                <label>Confirme:</label>
                <input type="password" name="confirmarSenha" class="form-control" placeholder="Confirme a senha" />
            </div>
            <div class="form-group">
                <label >Apelido:</label>
                <input type="text" name="apelido" id="apelido"  class="form-control" placeholder="Digite seu Apelido aqui:">
            </div>

            <div class="row wid">
                <div class="col-4">
                    <img  src="./img/perso1.png" alt="person1" class="">
                    <INPUT type="radio"  name="imgAvatar" value="op1">
                </div>
                <div class="col-4">
                    <img src="./img/perso2.png" alt="person2" class="rounded">
                    <INPUT type="radio" name="imgAvatar" value="op2">                       
                </div>
                <div class="col-4">     
                    <img src="./img/perso3.png" alt="person3" class="rounded">
                    <INPUT TYPE="radio" name="imgAvatar" value="op3">
                </div>
            </div>                
            <button name="btn_cadastra" type="submit" class="btn btn-block boton mt-3"> Cadastre-se</button>
                        
                <!-- <div class="col-sm"><a href="index.php"><button type="button" class="btn btn-danger">Cancelar</button> </a></div> -->
            <a href="./login.php"> Ja tem conta? </a><br>

        </form>


        </div>
        <div>
          <!-- I'm an element that is block-like with my siblings and we're centered in a row. -->
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
 
  </body>
</html>
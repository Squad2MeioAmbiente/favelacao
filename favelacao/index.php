<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!--CSS/Bootstrap-->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> 
  <!--CSS-->
  
  <link rel="stylesheet" href="./frontend/css/style.css">
  <!--Fonts-->
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@700;900&display=swap" rel="stylesheet">
  <link rel="sortcut icon" href="./frontend/img/logo_Megafone_Grande.png" type="image/x-icon" />

  <title>Home</title>
</head>

<body>
<header>

<?php
  include("./templates/menu/menuIndex.php")
?>

</header>

  <div class=" bg-image fundoAzul">  
    <img  class="personagem" src="./frontend/img/helio_saudacao2.svg" alt="Hélio">  
    <div class="textoBanner">
      <img   src="./frontend/img/textoBanner2.svg" alt="Texto">
      
      <a href="./frontend/pages/perfil.php"><button class="buttonJogar">JOGAR</button></a>

    </div> 
  </div>
  <div class="textDescricao">
    <h1 class="tituloFavelacao">O que é o FavelAção? </h1>
    <p class="descricaoFavelacao">
    Já pensou aprender brincando?<br/><br/>
    É exatamente o que o Jogo FavelAção pode fazer, conclua as missões que o Hélio vai <br/>
    te indicar ao final de cada fase e ganhe medalhas!<br/>
    Seja o que mais acumula premiações, ficando no topo do nosso ranking, <br/>
   não fique fora dessa, chame seus amiguinhos e se divirtam!  <br/>

    </p>
  </div>
  <div class="premio">
    
      <h1> Aprenda com o FavelAção</h1>

      <div class="premioIcons">
        <div class="favelaIcon">
          <img src="./frontend/img/favela_icon.png" alt="Favela">
          <p>
            O único  jogo <br>
            que acontece <br>
            em Heliópolis
          </p>
        </div>
        <div class="medalIcon">
          <img src="./frontend/img/Icon awesome-medal.png" alt="Medalha">
          <p>            
            Ganhe medalhas <br>
            ao concluir cada <br>
            missão
          </p>
        </div>
        <div class="rankingIcon">
          <img src="./frontend/img/ranking_icon.png" alt="Ranking">
          <p>
            Seja o que mais <br>
            ajuda sua <br>
            comunidade
          </p>
        </div>
      </div>
  </div>
  <div class="missao">
    <h1>Cenas do jogo</h1>

    <div class="missaoBox">
      <div class="card " >
        <img src="./frontend/img/img1.png" class="card-img-top" alt="Cena 1">
        <!-- <div class="card-body">
          <p class="card-text">Cena do Jogo 1</p>
        </div> -->
      </div>
      <div class="card " >
        <img src="./frontend/img/img2.png" class="card-img-top" alt="Cena 2">
        <!-- <div class="card-body">
          <p class="card-text">Cena do Jogo 2</p>
        </div> -->
      </div>
      <div class="card " >
        <img src="./frontend/img/img3.png" class="card-img-top" alt="Cena 3>
        <!-- <div class="card-body">
          <p class="card-text">Cena do Jogo 3</p>
        </div> -->
      </div>
    </div>
    <a href="./frontend/pages/sobreJogo.php" target="_blank" title="Contato"><h3>+ Ver mais</h3></a>
    
  </div>
  

  <?php
      include("./templates/rodape/rodapeIndex.php")
  ?>
          
         

   <!--JavaScript/Bootstrap-->
   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>

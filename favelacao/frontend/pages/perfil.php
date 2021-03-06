<?php
  
  if (!isset($_SESSION)) session_start();

  if(isset($_REQUEST['confirmesenha'])){
    echo "<script>
    alert('A senha e a confirmação devem ser iguais!'); 
    window.location.href='./atualizaCadastro.php' 
  </script>";
  }

  if(isset($_REQUEST['lensenha'])){
    echo "<script>
    alert('A senha deve conter 8 dígitos!'); 
    window.location.href='./atualizaCadastro.php' 
  </script>";
  }

  if(isset($_REQUEST['sucessoatualizacao'])){
    echo "<script>
    alert('Atualização realizada com sucesso!'); 
    window.location.href='./perfil.php' 
  </script>";
  }
  
  if (!$_SESSION)
    echo "<script>
      alert('É necessário realizar Login'); 
      window.location.href='./login.php' 
    </script>";
      
    
    $totalMedalhas=0;

    if ($_SESSION['save']['missao1']=='TRUE'){
      $totalMedalhas+=1;
      
      if ($_SESSION['save']['missao2']=='TRUE'){
        $totalMedalhas+=1;
    
        if ($_SESSION['save']['missao3']=='TRUE'){
          $totalMedalhas+=1;
    
          if ($_SESSION['save']['missao4']=='TRUE'){
            $totalMedalhas+=1;

            if ($_SESSION['save']['missao5']=='TRUE'){
              $totalMedalhas+=1;

              if ($_SESSION['save']['missao6']=='TRUE'){
                $totalMedalhas+=1;

                if ($_SESSION['save']['missao7']=='TRUE'){
                  $totalMedalhas+=1;

                  if ($_SESSION['save']['missao8']=='TRUE'){
                    $totalMedalhas+=1;
                    
                    if ($_SESSION['save']['missao9']=='TRUE'){
                      $totalMedalhas+=1;

                      if ($_SESSION['save']['missao10']=='TRUE'){
                        $totalMedalhas+=1;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      } 
    }  
?>

<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <link rel="preconnect" href="https://fonts.gstatic.com/%22%3E">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link rel="sortcut icon" href="../img/logo_Megafone_Grande.png" type="image/x-icon" />
    <link rel="stylesheet" href="../css/perfil.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="../js/perfil.js"></script>
    
    <title>Página de Perfil</title>
  </head>


  <body onload="get(), abrirModal()">

    <?php 
      require "./templates/menu/menu.php";
    ?>

      <div class="titulo">
       <h1 class="tituloPerfil"><img class="imgContato" src="../img/iconPerfil.png" alt="">Perfil</h1>
      </div>
  <div class="corbug">
 
  </div>
  <div class="formulario"> 
  <div class="card-body h-25">
  <div class="container d-flex justify-content-center">
      <div class=" p-4 py-8">
        <div class="text-center"> <img src="../img/<?php echo $_SESSION['user']['imgAvatar'];?>" alt="Avatar" width="200" class="rounded-circle">
          <h3 class="mt-2"><?php echo $_SESSION['user']['apelido']; ?></h3> 
        </div>
    </div>
  </div>
   
        <form action="./atualizaCadastro.php" name="" id="idformContato" method="post"  class="needs-validation" >
        
          <div class="form-group col-sm">
            <input type="hidden" id="id" name="id" class="form-control" value="<?php echo $_SESSION['user']['id']; ?>" required>


            <div class="row">
              <div class="col-12">
                <label>Nível </label>
                <p class="float-right"> 2</p>
              </div>
            
              <div class="col-12">

              <script>
              function abrirModal(){

                var botao = document.getElementById('perfil');
            botao.click();
              }
            

              </script>
              
                <!-- Button trigger modal -->
                <a type="button" id="perfil" class="linkModal" data-bs-toggle="modal" data-bs-target="#exampleModal">
                  Medalhas Conquistadas
                </a>
                <a type="button" class="float-right linkModal" data-bs-toggle="modal" data-bs-target="#exampleModal">
                  <p><?php echo $totalMedalhas; ?></p>
                </a>

                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Suas Medalhas</h5>
                        <!-- <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button> -->
                      </div>
                      <div class="modal-body cardModal">
                        <div class="modal-body">
                          <div class="container-fluid">
                            <div class="row">
                            <?php if (!isset($_SESSION)) session_start(); ?>
                            
                              <div class="col-md-3 mt-4">
                                <!-- <div> -->
                                  <?php if ($_SESSION['medal']['medalha1'] == "TRUE" ){?>

                                    <div class="card-text">
                                      <img class="imagem" src="../img/m1.png"><br>
                                      <span class="imagem"> Entrar para o FavelAção</span>
                                    </div>

                                    <?php  }else{?>

                                    <div class="card-text justify-content-center">
                                      <img class="imagemDesativada" src="../img/m1.png">
                                    </div>
                                      
                                    <?php }?>

                                <!-- </div> -->
                              </div>

                              <div class="col-md-3 mt-4">
                                <!-- //////////////////////MEDALHA 2//////////////////// -->
                                <?php if ($_SESSION['medal']['medalha2'] == "TRUE" ){?>

                                  <div class="card-text">
                                    <img class="imagem" src="../img/m2.png"><br>
                                      <span class="imagem"> Doar brinquedo</span>
                                  </div>

                                  <?php  }else{?>

                                  <div class="card-text justify-content-center">
                                      <img class="imagemDesativada" src="../img/m2.png">
                                  </div>

                                  <?php }?>
                              </div>
                              
                              <div class="col-md-3 mt-4">
                                <!-- ///////////////////////MEDALHA 3/////////////////// -->

                                <?php if ($_SESSION['medal']['medalha3'] == "TRUE" ){?>

                                  <div class="card-text">
                                    <img  class="imagem" src="../img/m3.png"><br>
                                      <span class="imagem"> Desenhar o meio ambiente</span>
                                  </div>

                                  <?php  }else{?>

                                  <div class="card-text justify-content-center">
                                      <img class="imagemDesativada" src="../img/m3.png">
                                  </div>

                                  <?php }?>
                              </div>

                              <div class="col-md-3 mt-4">
                                <!-- ///////////////////////MEDALHA 4/////////////////// -->

                                <?php if ($_SESSION['medal']['medalha4'] == "TRUE" ){?>

                                  <div class="card-text">
                                    <img  class="imagem" src="../img/m4.png"><br>
                                      <span class="imagem"> Descartar óleo de cozinha</span>
                                  </div>

                                  <?php  }else{?>

                                  <div class="card-text justify-content-center">
                                      <img class="imagemDesativada" src="../img/m4.png">
                                  </div>

                                  <?php }?>
                              </div>

                              <div class="col-md-3 mt-4">
                                <!-- ///////////////////////MEDALHA 5/////////////////// -->

                                <?php if ($_SESSION['medal']['medalha5'] == "TRUE" ){?>

                                  <div class="card-text">
                                    <img  class="imagem" src="../img/m5.png"><br>
                                      <span class="imagem"> Recolher recicláveis</span>
                                  </div>

                                  <?php  }else{?>

                                  <div class="card-text justify-content-center">
                                      <img class="imagemDesativada" src="../img/m5.png">
                                  </div>

                                  <?php }?>
                              </div>

                              <div class="col-md-3 mt-4">
                                <!-- ///////////////////////MEDALHA 6/////////////////// -->

                                <?php if ($_SESSION['medal']['medalha6'] == "TRUE" ){?>

                                  <div class="card-text">
                                    <img  class="imagem" src="../img/m6.png"><br>
                                      <span class="imagem"> Usar sacolas retornáveis</span>
                                  </div>

                                  <?php  }else{?>

                                  <div class="card-text justify-content-center">
                                      <img class="imagemDesativada" src="../img/m6.png">
                                  </div>

                                  <?php }?>
                              </div>

                              <div class="col-md-3 mt-4">
                                <!-- ///////////////////////MEDALHA 7/////////////////// -->

                                <?php if ($_SESSION['medal']['medalha7'] == "TRUE" ){?>

                                  <div class="card-text">
                                    <img class="imagem" src="../img/m7.png"><br>
                                      <span class="imagem"> Plantar broto de feijão</span>
                                  </div>

                                  <?php  }else{?>

                                  <div class="card-text justify-content-center">
                                      <img class="imagemDesativada" src="../img/m7.png">
                                  </div>

                                  <?php }?>
                              </div>

                              <div class="col-md-3 mt-4">
                                <!-- ///////////////////////MEDALHA 8/////////////////// -->

                                <?php if ($_SESSION['medal']['medalha8'] == "TRUE" ){?>

                                  <div class="card-text">
                                    <img class="imagem" src="../img/m8.png"><br>
                                      <span class="imagem"> Retirar água parada</span>
                                  </div>

                                  <?php  }else{?>

                                  <div class="card-text justify-content-center">
                                      <img class="imagemDesativada" src="../img/m8.png">
                                  </div>

                                  <?php }?>
                              </div>

                              <div class="col-md-3 mt-4">
                                <!-- ///////////////////////MEDALHA 9/////////////////// -->

                                <?php if ($_SESSION['medal']['medalha9'] == "TRUE" ){?>

                                  <div class="card-text">
                                    <img class="imagem" src="../img/m9.png"><br>
                                      <span class="imagem"> Cores de cada lixeira de recicláveis</span>
                                  </div>

                                  <?php  }else{?>

                                  <div class="card-text justify-content-center">
                                      <img class="imagemDesativada" src="../img/m9.png">
                                  </div>

                                  <?php }?>
                              </div>


                              <div class="col-md-3 mt-4">
                                <!-- ///////////////////////MEDALHA 10/////////////////// -->

                                <?php if ($_SESSION['medal']['medalha10'] == "TRUE" ){?>

                                  <div class="card-text">
                                    <img class="imagem" src="../img/m10.png"><br>
                                      <span class="imagem"> Concluir o FavelAção</span>
                                  </div>

                                  <?php  }else{?>

                                  <div class="card-text">
                                    <img class="imagemDesativada" src="../img/m10.png">
                                  </div>

                                  <?php }?>
                              </div>
                              <!-- <div class="col-md-4 ms-auto">.col-md-4 .ms-auto</div> -->
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="boton btn" data-bs-dismiss="modal">Fechar</button>
                      </div>
                    </div>
                  </div>
                </div>
           
      
              </div>

              <div class="col-12">
                <label>Colocação no Ranking </label>
                <p class="float-right"> 5º </p>
              </div>
            </div>
            
      
            <input type="hidden" name="imgAvatar" value="<?php echo $_SESSION['user']['imgAvatar']; ?>" required/>
            <button type="submit" class="btn btn-block boton">Editar</button>
           <a href="./selectMission.php"><button type="button" class="btn btn-block boton btnJogar">Jogar</button><a>
          </div>    
        </form>
          <form method="POST" action="./validacoes/validacaoPerfil.html">
            <button type="submit" class="btn neo-button"><i class="fa fa-trash"></i></button>
          </form>
          <br/>
      </div>
   </div>      
   <br/><br/>

    
   


  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  
  <!-- Optional JavaScript; choose one of the two! -->

  <!-- Option 1: Bootstrap Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

  <!-- Option 2: Separate Popper and Bootstrap JS -->

  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>

  <footer>
    <?php
      include("./templates/rodape/rodape.php")
    ?>
  </footer>
    
</body>

</html>
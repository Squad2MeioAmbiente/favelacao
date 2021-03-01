<!doctype html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.80.0">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="sortcut icon" href="./img/logo_Megafone_Grande.png" type="image/x-icon" />

    <title>Alterar Missão</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

    <!-- icones boottrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

    <!-- chart.js gráficos  -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>

    

    <!-- Custom styles for this template -->
    <link href="./dashboard.css" rel="stylesheet">
  </head>
  <body>
              <!-- Header   -->
    <?php
      include("./menus/menuHorizontal.html")
    ?>
    
    <div class="container">
      <div class="row">
          <!-- Nav vertical esquerdo -->
        <?php
            include("./menus/menuVertical.html")
        ?>

        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
          <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
            <h1 class="h2 text-secondary"> Alterar Missão </h1>
          </div>
         
          <!-- <form action="../backend/missao/create.php" method="POST"> -->
            
            <div class="row">
              <div class="col-sm-6">
                <div class="card">
                  <div class="card-body">
                    <label>Título da missão: </label>
                    <input type="text" name="tituloMissao" id="tituloMissao" class="mt-3 form-control inputs" maxlength="25"  minlength="5"  class="form-control" pattern="^[^-\s][a-zA-ZÀ-ú ]*" placeholder="Título da missão salva" required/>
                  </div>
                </div>
              </div>


              <div class="col-sm-6">
                <div class="container mt-3">
                  <label>Personagem: </label>
                </div>
                <div class="card-group">
                  <div class="card-body">
                    <input type="alterarPersonagem" name="alterarPersonagem" class="alterarperson form-control inputs" maxlength="25"  minlength="5"  class="form-control" pattern="^[^-\s][a-zA-ZÀ-ú ]*" placeholder="Nome do personagem salvo" required/> 
                  </div>
                  <div class="row botoesL">
                    <button type="submit" class="btn neo-button"><i class=" fa fa-pencil"></i></button>
                    <button type="submit" class="btn neo-button"><i class=" fa fa-trash"></i></button>
                  </div>
                </div>
              </div>  
            </div>
  <!-- ------------------------------------------------------------- -->
            <div class="row">
              <div class="col-sm-6">
                <div class="card">
                  <div class="card-body">
                    <input type="text" name="tituloMissao" id="tituloMissao" class="form-control inputs" maxlength="25"  minlength="5"  class="form-control" pattern="^[^-\s][a-zA-ZÀ-ú ]*" placeholder="Título da missão salva" required/>
                  </div>
                </div>
              </div>

              <div class="col-sm-6">
                <!-- <div class="card-body"> -->
                
                  <div class="card-group">
                      <div class="card-body">
                        <input type="alterarPersonagem" name="alterarPersonagem" class="alterarperson form-control inputs" maxlength="25"  minlength="5"  class="form-control" pattern="^[^-\s][a-zA-ZÀ-ú ]*" placeholder="Nome do personagem salvo" required/> 
                      </div>
                      <div class="row botoesL">
                        <!-- <form action="../../Painel-ADM-FavelAcao/backend/missao/updat.php" method="POST"> -->
                        <button href="../Painel-ADM-FavelAcao/backend/missao/updat.php" type="submit" class="btn neo-button"><i class=" fa fa-pencil"></i></button>
                        <!-- </form> -->
                        <!-- <form action="../../Painel-ADM-FavelAcao/backend/missao/delet.php" method="POST"> -->
                        <button href="../Painel-ADM-FavelAcao/backend/missao/updat.php"  type="submit" class="btn neo-button"><i class="fa fa-trash"></i></button>
                        <!-- </form>   -->
                      </div>

                    
                  </div>
                <!-- </div>   -->
              </div>
            </div>


          <!-- </form> -->
         
        </main>
      </div>
    </div>

    


    <!-- Optional JavaScript; choose one of the two! -->

      <!-- Option 1: Bootstrap Bundle with Popper -->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

      <!-- Option 2: Separate Popper and Bootstrap JS -->
      
      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
    
  </body>
</html>
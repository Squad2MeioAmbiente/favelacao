<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.80.0">
    <title>FavelAçao</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">


    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
 
    <!-- Custom styles for this template -->
    <link href="./dashboard.css" rel="stylesheet">
  </head>
  <body>
      
          <!-- Header Menu horizontal  -->
    <?php
      include("./menus/menuHorizontal.html")
    ?>
    
    <div class="container-fluid">
      <div class="row">
          <!-- Nav vertical esquerdo -->
        <?php
          include("./menus/menuVertical.html")
        ?>
        <!-- Título do gráfico -->
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
          <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
            <h1 class="h2">Público-alvo</h1>
            <div class="btn-toolbar mb-2 mb-md-0">
            </div>
          </div>
          <!-- Gráficos -->
          <canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas>   
          <script>
              var ctx = document.getElementById("myChart").getContext("2d");
              var myChart= new Chart(ctx,{
                  type:"pie",
                  data:{
                      labels:['6', '7', '8', '9', 'Outros'],
                      datasets:[{
                          label:'Num dados',
                          data:[10, 9, 15,34, 12, 33, 11, 11],
                          backgroundColor:[
                              'rgb(66, 134, 244, 0.5)',
                              'rgb(74, 33, 72, 0.5)',
                              'rgb(48, 12, 211,  0.5)',
                              'rgb(229, 49, 50, 0.5)',
                              'rgb(29, 39, 50, 0.5)',
                              'rgb(529, 5, 50, 0.5)',
                              'rgb(59, 20, 50, 0.5)',
                              'rgb(329, 49, 50, 0.5)',
                              'rgb(19, 49, 40, 0.5)',
                              'rgb(29, 9, 0, 0.5)',
                              'rgb(25, 39, 57, 0.5)',

                          ]

                      }]
                  },
                  options:{
                      scales:{
                          yAxes:[{
                              ticks:{
                                  beginAtZero:true
                              }
                          }]
                      }
                  }
              });

          </script>
      
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
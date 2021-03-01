<!doctype html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.80.0">
    <title>FavelAçao</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

    <!-- icones boottrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

    <!-- chart.js gráficos  -->
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

  

            
  <?php
  
      include_once './backend/config/conexaobd.php';

        $sql = "SELECT * FROM usuarios"; 
        $result = mysqli_query($conn, $sql);

        $totalUsuarios=0;
        if ($result){
          $totalInicial=1;
          while($row= mysqli_fetch_assoc($result)){
            $totalUsuarios+=1;
          }
          $totalUsuariosDeletados=$totalUsuarios-$totalInicial;
        }  
            
    ?>

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

              <h1 class="h2 text-secondary"> Painel Geral </h1>

          </div>

          <!-- Cards  de dados -->
          <div>
             <!-- Content Row -->
              <div class="row">

                <!-- Usuários Cadastrados-->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-primary shadow h-100 py-2  bg-info bg-gradient">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <span>Usuários</span>
                                  
                                    <div class="text-xs font-weight-bold text-dark text-uppercase mb-1">
                                        Cadastrados</div>

                                    <div class="h5 mb-0 font-weight-bold text-gray-800"> <?php echo $totalUsuarios ?> </div>

                                </div>
                                <div class="col-auto">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-plus" viewBox="0 0 16 16">
                                  <path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H1s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C9.516 10.68 8.289 10 6 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
                                  <path fill-rule="evenodd" d="M13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z"/>
                                </svg>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Usuários cadastrados no mes -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-success shadow h-100 py-2 bg-success bg-gradient">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <span>Usuários</span>
                                    <div class="text-xs font-weight-bold text-dark text-uppercase mb-1">
                                        cadastrados no (mês)</div>

                                    <div class="h5 mb-0 font-weight-bold text-gray-800">60</div>

                                </div>
                                <div class="col-auto">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-file-person" viewBox="0 0 16 16">
                                      <path d="M12 1a1 1 0 0 1 1 1v10.755S12 11 8 11s-5 1.755-5 1.755V2a1 1 0 0 1 1-1h8zM4 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H4z"/>
                                      <path d="M8 10a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                                    </svg>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Usuários Deletados-->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-success shadow h-100 py-2  bg-danger bg-gradient">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <span>Usuários</span>
                                    <div class="text-xs font-weight-bold text-dark text-uppercase mb-1">
                                        Deletados</div>

                                    <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $totalUsuariosDeletados ?></div>

                                </div>
                                <div class="col-auto">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-dash" viewBox="0 0 16 16">
                                  <path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H1s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C9.516 10.68 8.289 10 6 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
                                  <path fill-rule="evenodd" d="M11 7.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5z"/>
                                </svg>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

              </div>            
          </div>
            

          <!-- Primeiro  Graficos!!! -->
          <div>
              <div class="row">

                <div class="col-sm-6">
                  <div class="card">
                    <div class="card-body">
                      <h5 class="card-title">Idade das crianças cadastradas </h5>
                      <canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas>
                    </div>
                  </div>
                </div>
                
                <div class="col-sm-6">
                  <div class="card">
                    <div class="card-body">
                      <h5 class="card-title">Conclusão de missões por criança</h5>
                      <canvas class="my-4 w-100" id="myIdade" width="900" height="380"></canvas>
                    </div>
                  </div>
                </div>

              </div>
          <div>
          <!-- fim  -- -->

          <script>
            var ctx = document.getElementById("myChart").getContext("2d");
            var myPieChart= new Chart(ctx,{
                type:"pie",
                data:{
                    labels:['6', '7', '8', '9','Outros'],
                    datasets:[{
                        label:'Num dados',
                        data:[10, 9, 15,34, 12],
                        backgroundColor:[
                            'rgb(66, 134, 244, 0.5)',
                            'rgb(74, 33, 72, 0.5)',
                            'rgb(48, 12, 211,  0.5)',
                            'rgb(329, 49, 50, 0.5)',
                            'rgb(29, 39, 50, 0.5)',

                        ]

                    }]
                },
                options:{
                    cutoutPercentage: 10,
                    // title: {
                    //   display: true,
                    //   text: "Grafico um",
                    //   fontSize: 55,
                    //   fontColor: "#453222"
                    // },
                    animation: {
                      animateScale: true
                    },
                    legend: {
                      position: 'bottom',
                      labels: {
                        boxWidth: 16,
                        fontSize: 12,
                      }
                    },
                    // plugins: {
                    //   color: '#4ddd',
                    //   anchor:'end',
                    //   align: 'start',
                    //   offset: -10,
                    // },
                    //Tooltips são os textos que aparecem ao passar o mouse em cima do frafic
                    // Tooltips: {
                    //   mode: "Index",
                    //   callbacks: {
                    //     //INCLUIR 
                    //     label: function(tooltipItem, data) {
                    //       // Ex. legenda : 
                    //       return data.datasets[tooltipItem.datasetIndex].label + ': R$' + data.datasets[tooltipItem.datasetIndex].data[tooltipItem.index]
                    //     }
                    //   }
                    // },
                }
            });

          </script>

         <!-- Segundo gráfico  -->
          <script>
            var ctx = document.getElementById("myIdade").getContext("2d");
            var myIdade= new Chart(ctx,{
                type:"bar",
                data:{
                    labels:['1°', '2°', '3°', '4°','5°', '6°', '7°', '8°', '9', '10°'],
                    datasets:[{
                        label:'Missão',
                        data:[10, 9, 15,34, 12, 50, 11, 11],
                        backgroundColor:[
                            'rgb(32, 108, 223,0.6)',
                            'rgb(32, 108, 223,0.6)',
                            'rgb(32, 108, 223,0.6)',
                            'rgb(32, 108, 223,0.6)',
                            'rgb(32, 108, 223,0.6)',
                            'rgb(32, 108, 223,0.6)',
                            'rgb(32, 108, 223,0.6)',
                            'rgb(32, 108, 223,0.6)',
                            'rgb(32, 108, 223,0.6)',
                            'rgb(32, 108, 223,0.6)',
                            'rgb(32, 108, 223,0.6)',
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
                    },
                    legend: {
                      position: 'bottom',

                    }

                }
            });

          </script>

          <div class="mt-3 text-secondary">
            <h4><b>Comentarios:</b></h4>
          </div>

          <div class="container">  
            <div class="row">

              <div class="col-sm-6 mb-2">
                <div class="card">
                  <div class="card-header">
                  <h5 class="card-title">Autor:  </h5>
                  </div>
                  <div class="card-body">
                    <!-- <a href="#" class="btn btn-primary">Go somewhere</a> -->
                    <blockquote class="blockquote mb-0">
                      <p>Comentário do autor.</p>
                      <footer class="blockquote-footer">Registrado em: <cite title="Source Title">autor/local/data</cite></footer>
                    </blockquote>
                  </div>
                </div>
              </div>

              <div class="col-sm-6 mb-2">
                <div class="card">
                  <div class="card-header">
                    <h5 class="card-title">Autor: </h5>
                  </div>
                  <div class="card-body">
                    <blockquote class="blockquote mb-0">
                      <p>Comentário do autor.</p>
                      <footer class="blockquote-footer">Registrado em : <cite title="Source Title">autor/local/data</cite></footer>
                    </blockquote>
                  </div>
                </div>
              </div>
              
              <div class="col-sm-6 mb-2">
                <div class="card">
                  <div class="card-header">
                    <h5 class="card-title">Autor: </h5>
                  </div>
                  <div class="card-body">
                    <blockquote class="blockquote mb-0">
                      <p>Comentário do autor.</p>
                      <footer class="blockquote-footer">Registrado em : <cite title="Source Title">autor/local/data</cite></footer>
                    </blockquote>
                  </div>
                </div>
              </div>

              

            </div>
          </div>

  
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
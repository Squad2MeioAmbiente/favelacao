
 var count = 0

async function next (dados){
  var response = await fetch("http://projetos/entregaGame/api/enredo/read.php") 
     dados = await response.json()
    console.log(dados)

  var txt =document.getElementById("txt")

  txt.innerHTML = dados[count].frase


  count ++
  console.log(count)
 
}
    
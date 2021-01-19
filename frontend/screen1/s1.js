
 var count = 0

async function next (){
    
  var response = await fetch("http://projetos/entregaGame/api/enredo/read.php") 
     dados = await response.json()
   

  var txt =document.getElementById("txt")
  txt.innerHTML = dados[count].frase


  var img = document.getElementById("teste")
  var caminho = `../img/character/${dados[count].personagem}`
  img.src= caminho
  console.log(caminho)

  var fundo = document.getElementById("fundo")
  if (count == 9){
    fundo.style.backgroundImage = "url('http://projetos/entregaGame/frontend/img/background/b2.jpg')";}
    else if (count == 12){
      fundo.style.backgroundImage = "url('http://projetos/entregaGame/frontend/img/background/b3.jpg')";
    }

  count ++
  console.log(count)

}
var contador = 0
 function mute () {
  var turn = document.getElementById("turn")
  var mute = document.getElementById("mudo")
   if (contador == 0){
      mute.pause()
      contador = 1
      turn.innerHTML = "Ligar Música"
   }
   else {
     mute.play()
     contador = 0
     turn.innerHTML = "Desligar Música"
   } 
}

function btnsound(){
  var btnsound = document.getElementById("btnsound")
  btnsound.play()
}
  
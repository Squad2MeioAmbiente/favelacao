
 var count = 0

async function next (){
    
  var response = await fetch("../../../backend/api/enredo/read.php") 
     dados = await response.json()
   

  var txt =document.getElementById("txt")
  txt.innerHTML = dados[count].frase


  var img = document.getElementById("teste")
  var caminho = `../img/character/${dados[count].personagem}`
  img.src= caminho
  console.log(caminho)

  var fundo = document.getElementById("fundo")
  if (count == 0){
    fundo.style.backgroundImage = "url('../img/background/bg2.jpg')";
  }else if (count == 5){
      fundo.style.backgroundImage = "url('../img/background/bg4.jpg')";
    } else if (count ==20){
      fundo.style.backgroundImage = "url('../img/background/bg3.jpg')";
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
  
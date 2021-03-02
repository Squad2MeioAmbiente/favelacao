
 var count = 14

async function next (){
    
  var response = await fetch("../../../../backend/api/enredo/read.php") 
     dados = await response.json()
   

  var txt =document.getElementById("txt")
  txt.innerHTML = dados[count].frase


  var img = document.getElementById("personagemImg")
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

/////////////CÓDIGO DE GANHO DE MEDALHA

    if(count == 15){
      

    var alertMedal = document.createElement('div')
    alertMedal.setAttribute("class", "alert alert-primary mx-auto mt-4 w-75")
    alertMedal.setAttribute("role", "alert")
    alertMedal.setAttribute("id", "rmAlert")
    alertMedal.textContent = "MEDALHA ADQUIRIDA : Bem Vindo Ao Favelação!!"

    var alertMedalDiv = document.getElementById("alertMedal")

    alertMedalDiv.appendChild(alertMedal)

    var alertRemove = document.getElementById("rmAlert")
    setTimeout(() => {alertRemove.remove()}, 4000)

    
      var medalSound = document.getElementById("medalSound")
      medalSound.play()

      //ATUALIZAR MEDALHA NO BANCO
      var url = "../../../../backend/api/user/userMedal.php"
      var updateMedal = {"medal" : "TRUE"}
    
      fetch(url,{
        method:"POST",
        body: updateMedal
    }).then().then(()=> console.log("Atualizou a medalha"))


    

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
  
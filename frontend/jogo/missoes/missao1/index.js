
 var contFrase = 1
 var contCenario = 1
 var contPersonagem = 1
 var contadorSom = 0

 async function back (){
  var response = await fetch("../../../../backend/api/enredo/read.php") 
  var dados = await response.json()   
  var txt =document.getElementById("txt")
  var imgCenario = document.getElementById("fundo")
  var imgPersonagem = document.getElementById("personagemImg")

  if(contFrase >= 1 && contPersonagem >= 1 && contCenario >=1){
    contFrase--
    contPersonagem--
    contCenario--
    txt.innerHTML = dados[contFrase].frase
  }
  imgPersonagem.src= `../img/character/${dados[contPersonagem].personagem}`
  imgCenario.style.backgroundImage = `url('../img/background/${dados[contCenario].cenario}')`;

  if(contFrase == 46) {
    questionario()
    medalhaGanhas()
  } else {
    
  }

}

//Fim função Back

async function next (){ 
  var response = await fetch("../../../../backend/api/enredo/read.php") 
  var dados = await response.json()   
  var txt =document.getElementById("txt")
  var imgCenario = document.getElementById("fundo")
  var imgPersonagem = document.getElementById("personagemImg")
    contFrase++
    contPersonagem++
    contCenario++
    txt.innerHTML = dados[contFrase].frase  
  imgPersonagem.src= `../img/character/${dados[contPersonagem].personagem}`
  imgCenario.style.backgroundImage = `url('../img/background/${dados[contCenario].cenario}')`;
  
  if(contFrase == 45) {
    questionario()
    
  } else  if(contFrase == 47) {
    medalhaGanhas()
  }
  
}

function medalhaGanhas() {

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
       var url = "../../../../backend/api/user/userMedal/userMedal1.php"
       var updateMedal = {"medal" : "TRUE"}
     
       fetch(url,{
         method:"POST",
         body: updateMedal
     }).then().then(()=> console.log("Atualizou a medalha"))
}

function questionario() {
  var btnQuestionario = document.getElementById("questionario")
  
  var yes = document.createElement('img');
    yes.setAttribute("onClick", "btnsound()")
    yes.setAttribute("onClick", "yes()")
    yes.setAttribute("id", "rmyes")
    yes.setAttribute("src", "../img/icones/iconeSim.png") ;
  
  var no = document.createElement('img');
    no.setAttribute("onClick", "btnsound()")
    no.setAttribute("onClick", "no()")
    no.setAttribute("id", "rmno")
    no.setAttribute("src", "../img/icones/iconeNao.png");
  
  btnQuestionario.appendChild(yes)
  btnQuestionario.appendChild(no)
  
  var btnNext = document.getElementById("prox")
  var btnAnterior = document.getElementById("anterior")
  
  btnNext.remove()
  btnAnterior.remove()

  
}



function yes(){
  txt.innerHTML = "Parabéns você acertou !"
  
      var salvar = document.createElement('button');
      salvar.setAttribute("class", "btn btn-info")
      salvar.setAttribute("onClick", "fetchSalvar()")
      salvar.textContent = "Continuar Jogo"

      var quest = document.getElementById("questionario")

     quest.appendChild(salvar)
  
      var rmyes = document.getElementById("rmyes")
      var rmno = document.getElementById("rmno")
      rmyes.remove()
      rmno.remove()
}

function no(){
  txt.innerHTML = "Hum, vamos tentar novamente ?"
}

function fetchSalvar(){
  var url = "../../../../backend/api/saveGame/save1.php"
  
  fetch(url,{
    method:"POST"   
  }).then().then(()=> console.log("salvou"))
  }

function mute () {
    var turn = document.getElementById("turn")
    var mute = document.getElementById("mudo")
      if (contadorSom == 0){
          mute.pause()
          document.getElementById("turn").src = "../img/icones/iconeSomDesligado.png";
          contadorSom = 1
          turn.innerHTML = "Ligar Música"
      }
      else {
        mute.play()
        document.getElementById("turn").src = "../img/icones/iconeSomLiga.png";
        contadorSom = 0
        turn.innerHTML = "Desligar Música"
      } 
}
function btnsound(){
    var btnsound = document.getElementById("btnsound")
    btnsound.play()
}
  
 var contFrase = 358
 var contCenario = 358
 var contPersonagem = 358
 var contadorSom = 0

 function botaoVoltar(){
  document.getElementById("anterior").style.display = "none"; 

 }
 
 function exibeBotao(){
  document.getElementById("anterior").style.display = "none"; 
  document.getElementById("prox").style.display = "block"; 

 }

 async function back (){
   if((contFrase>359) && (contCenario>359) && (contPersonagem >359)){
   
  console.log(contFrase)
  contFrase--
  contPersonagem--
  contCenario--

  var response = await fetch("../../../../backend/api/enredo/read.php") 
  var dados = await response.json()   
  var txt =document.getElementById("txt")
  var imgCenario = document.getElementById("fundo")
  var imgPersonagem = document.getElementById("personagemImg")
txt.innerHTML = dados[contFrase].frase
  imgPersonagem.src= `../img/character/${dados[contPersonagem].personagem}`
  imgCenario.style.backgroundImage = `url('../img/background/${dados[contCenario].cenario}')`;

  if(contFrase == 491) {
    questionario()
    medalhaGanhas()
  } else {
    
  }
  
}else {


  document.getElementById("anterior").style.display = "none"; 

}

}


async function next (){ 
  document.getElementById("anterior").style.display = "block"; 
  if((contFrase<=492) && (contCenario<=492) && (contPersonagem <=492)){
  console.log(contFrase)
    contFrase++
    contPersonagem++
    contCenario++


  var response = await fetch("../../../../backend/api/enredo/read.php") 
  var dados = await response.json()   
  var txt =document.getElementById("txt")
  var imgCenario = document.getElementById("fundo")
  var imgPersonagem = document.getElementById("personagemImg")
    txt.innerHTML = dados[contFrase].frase  
  imgPersonagem.src= `../img/character/${dados[contPersonagem].personagem}`
  imgCenario.style.backgroundImage = `url('../img/background/${dados[contCenario].cenario}')`;
  
  

  if(contFrase == 491) {
    questionario()
    
    
  } else  if(contFrase == 45) {
   
  }

} else {

  document.getElementById("prox").style.display = "none"; 

}
  
}

function medalhaGanhas() {

    var alertMedal = document.createElement('div')
    alertMedal.setAttribute("class", "alert alert-primary mx-auto mt-4 w-75")
    alertMedal.setAttribute("role", "alert")
    alertMedal.setAttribute("id", "rmAlert")
    alertMedal.textContent = "MEDALHA ADQUIRIDA : Parabéns, você concluiu o favelação!!!"
    var alertMedalDiv = document.getElementById("alertMedal")
    alertMedalDiv.appendChild(alertMedal)
    var alertRemove = document.getElementById("rmAlert")
    setTimeout(() => {alertRemove.remove()}, 4000)
      var medalSound = document.getElementById("medalSound")
      medalSound.play()
       //ATUALIZAR MEDALHA NO BANCO
       var url = "../../../../backend/api/user/userMedal/userMedal10.php"
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
    yes.setAttribute("onClick", "yes(),  medalhaGanhas()")
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
      salvar.textContent = "Finalizar Jogo"

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
  var url = "../../../../backend/api/saveGame/save10.php"
  window.location.href ="../../../pages/perfil.php";

 
  
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
  
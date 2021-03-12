var contFrase = 104
var contCenario = 104
var contPersonagem = 104
var contadorSom = 0



function botaoVoltar(){
 document.getElementById("anterior").style.display = "none"; 

}

function exibeBotao(){
 document.getElementById("anterior").style.display = "none"; 
 document.getElementById("prox").style.display = "block"; 

}

async function back (){
  if((contFrase>104) && (contCenario>104) && (contPersonagem >104)){
  
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

 if(contFrase == 105) {
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
 if((contFrase<=107) && (contCenario<=107) && (contPersonagem <=107)){
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
 
 

 if(contFrase == 99) {
  enviarImagem()
 
   
   
 } else  if(contFrase == 105) {
  questionario()
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
   alertMedal.textContent = "MEDALHA ADQUIRIDA : Desenhar o meio ambiente!"
   var alertMedalDiv = document.getElementById("alertMedal")
   alertMedalDiv.appendChild(alertMedal)
   var alertRemove = document.getElementById("rmAlert")
   setTimeout(() => {alertRemove.remove()}, 4000)
     var medalSound = document.getElementById("medalSound")
     medalSound.play()
      //ATUALIZAR MEDALHA NO BANCO
      var url = "../../../../backend/api/user/userMedal/userMedal3.php"
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
 var url = "../../../../backend/api/saveGame/save3.php"
 window.location.href ="../../../pages/selectMission.php";
 
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

function enviarImagem() {

  var questionario = document.getElementById("questionario")

  var formImg = document.createElement('form');
    formImg.setAttribute("method", "POST")
    formImg.setAttribute("enctype", "multipart/form-data")
  formImg.setAttribute("action", "../../../../backend/api/mural/creat.php")
    formImg.setAttribute("id", "formImg")

  questionario.appendChild(formImg)

  ////////////////Logica de criação do input da imagem
  var formularioImg = document.getElementById("formImg")

  var inputImg = document.createElement('input');
    inputImg.setAttribute("type", "file")
    inputImg.setAttribute("name", "arquivo")
    inputImg.setAttribute("required", "TRUE")
    inputImg.setAttribute("id", "campoImg")
  //////////////// Logica criação do Botão de enviar
  var inputImgSalvar = document.createElement('input');
    inputImgSalvar.setAttribute("type", "submit")
    !document.getElementById("campoImg")=="" ? 
     inputImgSalvar.setAttribute("onClick", "aparecerBotao()")
    :
    inputImgSalvar.setAttribute("value", "salvar")
    inputImgSalvar.setAttribute("class", "btn btn-info")        

  formularioImg.appendChild(inputImg)
  formularioImg.appendChild(inputImgSalvar)

  document.getElementById("prox").style.display = "none";
  document.getElementById("anterior").style.display = "none";

}

function aparecerBotao(){
  
  document.getElementById("prox").style.display = "block";
  document.getElementById("anterior").style.display = "block";
}


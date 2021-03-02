
 var count =55

async function next (){

  var txt =document.getElementById("txt")
  var img = document.getElementById("personagemImg")
  var fundo = document.getElementById("fundo")
  
/////FETCH
  var response = await fetch("../../../../backend/api/enredo/read.php") 
      dados = await response.json()
   
      
      ////////////TESTE
  if(count == 60){

      txt.innerHTML = "Agora que finalizou a missão, tenho algumas perguntas pra você, tudo bem?"
      count ++

    }
      ////////////TESTE
  else{
      //////////TROCAR PERSONAGEM E TEXTO
  var caminho = `../img/character/${dados[count].personagem}`

    txt.innerHTML = dados[count].frase  
    img.src= caminho


 //TROCAR FUNDO
  if (count == 7){
    fundo.style.backgroundImage = "url('../img/background/bg2.jpg')";
  }else if (count == 5){
      fundo.style.backgroundImage = "url('../img/background/bg4.jpg')";
    } else if (count ==20){
      fundo.style.backgroundImage = "url('../img/background/bg3.jpg')";
    } 
    

  count ++
  console.log(count)


  ////////////LÓGICA DO QUESTIONARIO  

var btnQuestionario = document.getElementById("questionario")

var yes = document.createElement('button');
  yes.setAttribute("onClick", "btnsound()")
  yes.setAttribute("onClick", "yes()")
  yes.setAttribute("class", "btn btn-info")
  yes.setAttribute("id", "rmyes")
  yes.textContent = "SIM"

var no = document.createElement('button');
  no.setAttribute("onClick", "btnsound()")
  no.setAttribute("onClick", "no()")
  no.setAttribute("class", "btn btn-info")
  no.setAttribute("id", "rmno")
  no.textContent = "NÂO"



btnQuestionario.appendChild(yes)
btnQuestionario.appendChild(no)

var btnNext = document.getElementById("prox")

btnNext.remove()


}


}



function yes(){
  txt.innerHTML = "Resposta correta!!!"
      ///////CRIAÇÃO DO BOTAO QUE ENVIAM O UPDATE
      //////////////BOTAO SALVAR
      var salvar = document.createElement('button');
      salvar.setAttribute("class", "btn btn-info")
      salvar.setAttribute("onClick", "fetchSalvar()")
      salvar.textContent = "SALVAR GAME"

      var quest = document.getElementById("questionario")

     quest.appendChild(salvar)

      

    ////REMOVER BOTÕES DE YES e NO
      var rmyes = document.getElementById("rmyes")
      var rmno = document.getElementById("rmno")
      rmyes.remove()
      rmno.remove()
}

function no(){
  txt.innerHTML = "Resposta errada!!!"
}
////////SALVAR JOGO NO BANCO
function fetchSalvar(){
  var url = "../../../../backend/api/saveGame/save1.php"
  var updateSave = {"salvar" : "TRUE"}

  fetch(url,{
    method:"POST",
    body: updateSave
}).then().then(()=> console.log("salvou"))
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

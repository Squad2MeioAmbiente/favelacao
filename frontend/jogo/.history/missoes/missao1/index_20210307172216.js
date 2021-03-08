
 var count = 0

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
    fundo.style.backgroundImage = "url('../img/background/heliopolis.jpg')";
  }else if (count == 5){
      fundo.style.backgroundImage = "url('../img/background/rua7.jpg')";
    } else if (count ==20){
      fundo.style.backgroundImage = "url('../img/background/rua7.jpg')";
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
      var url = "../../../../backend/api/user/userMedal/userMedal1.php"
      var updateMedal = {"medal" : "TRUE"}
    
      fetch(url,{
        method:"POST",
        body: updateMedal
    }).then().then(()=> console.log("Atualizou a medalha"))

    }
////////////LÓGICA DO QUESTIONARIO 
if(count == 45){       

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

btnNext.remove()
    }
 
  count ++
  console.log(count)

}




async function back (){
    
  var response = await fetch("../../../../backend/api/enredo/read.php") 
     dados = await response.json()   

  var txt =document.getElementById("txt")
  txt.innerHTML = dados[count].frase

  var img = document.getElementById("personagemImg")
  var caminho = `../img/character/${dados[count--].personagem}`
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

  

  count --
  console.log(count)

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
  
  fetch(url,{
    method:"POST"   
}).then().then(()=> console.log("salvou"))
  }


var contador = 0

function mute () {
    var turn = document.getElementById("turn")
    var mute = document.getElementById("mudo")
      if (contador == 0){
          mute.pause()
          document.getElementById("turn").src = "../img/icones/iconeSomDesligado.png";
          contador = 1
          turn.innerHTML = "Ligar Música"
      }
      else {
        mute.play()
        document.getElementById("turn").src = "../img/icones/iconeSomLiga.png";
        contador = 0
        turn.innerHTML = "Desligar Música"
      } 
}

function btnsound(){
    var btnsound = document.getElementById("btnsound")
    btnsound.play()
}
  
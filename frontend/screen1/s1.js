

async function getText() {
    var response = await fetch("http://projetos/USEPHPAQUI/MEUfseletro/em%20react/Back-End/") 
     dados = await response.json()
    console.log(dados)
       
}
// console.log(dados)
// var dados
// async function getText() {
//     fetch("http://projetos/USEPHPAQUI/MEUfseletro/em%20react/Back-End/")
//     .then(res => res.json() ) .then(res => dados = res)
// console.log(dados)

// }

var count = 0
var frases = [{"texto":"Frase1"},{"texto":"Frase2"},{"texto":"Frase3"},{"texto":"Frase4"},{"texto":"Frase5"},]

// var frases = [
//     {
//     "idcliente": "1",
//     "nome": "Ruan Lima ",
//     "email": "devd8727@gmail.com",
//     "produto": "Geladeira frost free",
//     "review": "Muito boa, consome pouca energia e é super espaçosa"
//     },
//     {
//     "idcliente": "2",
//     "nome": "josé",
//     "email": "josé123@gmail.com",
//     "produto": "Microondas",
//     "review": "Muito útil. Coube certinho aqui na prateleira de casa!"
//     },
//     {
//     "idcliente": "3",
//     "nome": "Luan",
//     "email": "luangameplay@gmail.com",
//     "produto": "Fogão 4 Bocas",
//     "review": "Adorei!! Super econômico"
//     }
//     ]
 

function next (dados){

  var txt =document.getElementById("txt")

  txt.innerHTML = frases[count].texto


  count ++
  console.log(count)
 
}
    
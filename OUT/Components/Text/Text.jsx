const Text = () => {

    // const [talk,setTalk] =  React.useState([])

    // React.useEffect(
    //     async function getApi(){
            
    //             const response = await fetch("http://projetos/USEPHPAQUI/Entrega%2020%20do%201/testeapi.php")
    //             const dados = await response.json()
    //         setTalk(dados)
    //     },  )

    // let teste = ["Primeira frase", "Segunda frase", "Terceira frase"]



    let teste= ["Olá, jogaram lixo do lado da pracinha, você consegue vir me ajudar?",
    "Meu nome é manoel, prazer!",
    "Aqui em heliópolis ultimamente esta um caos,",
    "As pessoas jogam lixo em qualquer lugar!!!",
    "Você pode me ajudar recolhendo 10 garrafas pet, vamos começar?"]

    var num = 0

    let next = () => {
        
       var p1 = document.getElementById("teste");
       p1.innerHTML = teste[num];
      
        
       console.log(num)
    //    console.log(talk)
       num++
    }

    return(
        <div className="container  text">
            <p id="teste" className="text-dark h4 pt-4 pl-4">{teste[0]}</p>
            <button onClick={next} className="btn btn-info next ">Sim</button>
        </div>
    )
}
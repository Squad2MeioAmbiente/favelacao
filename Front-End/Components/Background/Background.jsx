
const Background = () => {
    return (
        <div className="container-fluid">
            {/* <img src="back.jpg" width="100%" /> */}
        </div>
    ) 
}

// Ja que o <img> está sendo rendenizado em index.html, a imagem deve ser puxada para lá. e não aqui
// Dá erro porquie você chama a imagem aqui em background porem nao envia ela para ser rendenizada, chega la não tem imagem
// Para resolver, aqui mesmo você deve colocar o caminho referente a index.html e não para cá
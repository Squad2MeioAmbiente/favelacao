async function next (){
    
  var response = await fetch("../../../backend/api/contato/read.php") 
     dados = await response.json()
   

  var txt =document.getElementById("txt")
  txt.innerHTML = dados[count].nome

  count ++
  console.log(count)

}


<form method="POST" action="">
<!-- ../../favelacao/backend/api/contato/read.php -->
  <button onClick="next()" name="btn_cadastra" type="submit" class="btn btn-block boton mt-3"> Cadastre-se</button>
</form>


<?php echo $_SESSION['user']['mensagem'];?> 
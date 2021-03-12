
<?php

require_once('../config/dblogincad.php');
session_start();




if(isset($_FILES['arquivo'])){
    //Aqui pego os 4 ultimos digitos e mando pra lowercase
    $extensao = strtolower(substr($_FILES['arquivo']['name'], -4));
    //Aqui crio um novo titulo único e adiciono a extensao formatada
    $novo_nome = md5(time()) . $extensao;
    //Aqui seleciono para onde quero mudar a foto
    $diretorio = "../../../frontend/img/mural/";
    //Aqui mudo o titulo do arquivo e seleciono para onde mover ele, a partir da pasta que o php armazena
    //por default
    move_uploaded_file($_FILES['arquivo']['tmp_name'],$diretorio.$novo_nome);

$nome = $_SESSION['user']['apelido'];

$imagem = $novo_nome;


$sql = "INSERT INTO `mural` (`nome`, `imagem`) VALUES ( '".$nome."' , '".$imagem."' )";
    
$result = mysqli_query($conn, $sql);

}
?>


<html>

<?php echo "<script>
                alert ('Imagem Salva!')
                window.location.href='../../../frontend/jogo/missoes/missao3/index2.html'
            </script>";?>

</html>



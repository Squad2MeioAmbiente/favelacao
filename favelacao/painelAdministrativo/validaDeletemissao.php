<!-- <?php
  if (isset($_REQUEST['idmissaod']))
?> -->

<script>

  var confirmaExclusao = confirm('Deseja realmente deletar esta missão?');

  if(confirmaExclusao) {

  window.location.href='../painelAdministrativo/backend/missao/delet.php?idmissao=<?php echo $_REQUEST['idmissaod']?>'
  } else {
    window.location.href='./alterarmissao.php?idmissao=<?php echo $_REQUEST['idmissaod']?>'
  }
</script>

  
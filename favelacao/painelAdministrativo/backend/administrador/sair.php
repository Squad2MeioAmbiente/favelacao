<script>
	var logout = confirm('Deseja realmente sair?');

	if(logout) {
        <?php

            if (!isset($_SESSION)) session_start();

            $_SESSION['userAdmin']['email']="";
            $_SESSION['userAdmin']['senha']="";
            session_destroy();
            // header("Location: ../../index.php?encerrar=true"); 

        ?>
	    window.location.href='../../index.php'
	} else {
		window.location.href='../../dashboard.php' 
	}
</script>


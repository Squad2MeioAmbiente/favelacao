<?php 

class Enredo {
    private $conn;
    private $nomeTabela = "enredo";

    public $idenredo;
    public $frase;
    public $personagem;
    public $cenario;


    public function __construct($db) {
        $this->conn = $db;
    }

   
function read(){

    $sql = "SELECT e.idenredo, e.frase, p.imagem personagem, c.imagemCenario cenario  from " . $this->nomeTabela . " as e
    INNER JOIN personagens as p on p.idPersonagem = e.IdPersonagem 
    INNER JOIN cenarios as c on c.idCenario = e.idCenario ORDER BY e.idenredo";
   
    
    $stmt = $this->conn->prepare($sql);
    $stmt->execute();

    return $stmt;
}


function readOne(){
  
    $sql = "SELECT * FROM " . $this->nomeTabela . " WHERE idenredo = ? LIMIT 0,1";
  
    $stmt = $this->conn->prepare( $sql );
  
    $stmt->bindParam(1, $this->idenredo);
  
    $stmt->execute();
  

    $row = $stmt->fetch(PDO::FETCH_ASSOC);
  
    $this->idenredo = $row['idenredo'];
    $this->frase = $row['frase'];
    $this->personagem = $row['personagem'];
  
}

}

?>
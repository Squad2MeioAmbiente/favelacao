<?php 

class Enredo {
    private $conn;
    private $nomeTabela = "enredo";

    public $idenredo;
    public $frase;


    public function __construct($db) {
        $this->conn = $db;
    }

   
function read(){
    $sql= "SELECT * from "  . $this->nomeTabela;

    $stmt = $this->conn->prepare($sql);
    $stmt->execute();

    return $stmt;
}
}

?>
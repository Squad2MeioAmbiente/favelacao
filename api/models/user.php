<?php 

class User {
    private $conn;
    private $nomeTabela = "usuarios";

    public $id;
    public $nome;
    public $dataNascimento;
    public $email;
    public $telefone;
    public $senha;
    public $confirmarSenha;
    public $apelido;
    public $imgAvatar;

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
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
 

function create(){
    
    $sql = "INSERT INTO
                " . $this->nomeTabela . "
            SET
                nome=:nome, dataNascimento=:dataNascimento, email=:email, telefone=:telefone, senha=:senha, confirmarSenha=:confirmarSenha, apelido=:apelido, imgAvatar=:imgAvatar";
    
    $stmt = $this->conn->prepare($sql);

    
    $this->nome=htmlspecialchars(strip_tags($this->nome));
    $this->dataNascimento=htmlspecialchars(strip_tags($this->dataNascimento));
    $this->email=htmlspecialchars(strip_tags($this->email));
    $this->telefone=htmlspecialchars(strip_tags($this->telefone));
    $this->senha=htmlspecialchars(strip_tags($this->senha));
    $this->confirmarSenha=htmlspecialchars(strip_tags($this->confirmarSenha));
    $this->apelido=htmlspecialchars(strip_tags($this->apelido));
    $this->imgAvatar=htmlspecialchars(strip_tags($this->imgAvatar));


    $stmt->bindParam(":nome", $this->nome);
    $stmt->bindParam(":dataNascimento", $this->dataNascimento);
    $stmt->bindParam(":email", $this->email);
    $stmt->bindParam(":telefone", $this->telefone);
    $stmt->bindParam(":senha", $this->senha);
    $stmt->bindParam(":confirmarSenha", $this->confirmarSenha);
    $stmt->bindParam(":apelido", $this->apelido);
    $stmt->bindParam(":imgAvatar", $this->imgAvatar);

    
    if($stmt->execute()){
        return true;
    }

    return false;
    
}

function read(){
    $sql= "SELECT * from "  . $this->nomeTabela;

    $stmt = $this->conn->prepare($sql);
    $stmt->execute();

    return $stmt;
}


function update(){
  
    $sql = "UPDATE " . $this->nomeTabela . "
    SET
                nome = :nome,
                dataNascimento = :dataNascimento,
                email = :email,
                telefone = :telefone,
                senha = :senha,
                confirmarSenha = :confirmarSenha,
                apelido = :apelido,
                imgAvatar = :imgAvatar
    WHERE
                id = :id";
  

    $stmt = $this->conn->prepare($sql);
  
    $this->nome=htmlspecialchars(strip_tags($this->nome));
    $this->dataNascimento=htmlspecialchars(strip_tags($this->dataNascimento));
    $this->email=htmlspecialchars(strip_tags($this->email));
    $this->telefone=htmlspecialchars(strip_tags($this->telefone));
    $this->senha=htmlspecialchars(strip_tags($this->senha));
    $this->confirmarSenha=htmlspecialchars(strip_tags($this->confirmarSenha));
    $this->apelido=htmlspecialchars(strip_tags($this->apelido));
    $this->imgAvatar=htmlspecialchars(strip_tags($this->imgAvatar));
    $this->id=htmlspecialchars(strip_tags($this->id));
  
    $stmt->bindParam(':nome', $this->nome);
    $stmt->bindParam(':dataNascimento', $this->dataNascimento);
    $stmt->bindParam(':email', $this->email);
    $stmt->bindParam(':telefone', $this->telefone);
    $stmt->bindParam(':senha', $this->senha);
    $stmt->bindParam(':confirmarSenha', $this->confirmarSenha);
    $stmt->bindParam(':apelido', $this->apelido);
    $stmt->bindParam(':imgAvatar', $this->imgAvatar);
    $stmt->bindParam(':id', $this->id);
  
    if($stmt->execute()){
        return true;
    }
  
    return false;
}

function delete(){
    
    $sql = "DELETE FROM " . $this->nomeTabela . " WHERE id = ?";
  
    $stmt = $this->conn->prepare($sql);
  
    $this->id=htmlspecialchars(strip_tags($this->id));
  
    $stmt->bindParam(1, $this->id);
  
    if($stmt->execute()){
        return true;
    }
  
    return false;
}

}
?>
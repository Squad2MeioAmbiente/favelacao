CREATE DATABASE IF NOT EXISTS `squad2`;
USE squad2;

CREATE TABLE IF NOT EXISTS `cadastro` (
  `idcadastro` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `data_nascimento` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(32) NOT NULL,
  `senha` varchar(32) NOT NULL,
  PRIMARY KEY (`idcadastro`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `cadastro_jogo` (
  `idcadastro_jogo` int NOT NULL AUTO_INCREMENT,
  `apelido` varchar(15) NOT NULL,  
  `avatar` varchar(100) NOT NULL,  
  PRIMARY KEY (`idcadastro_jogo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `contato` (
  `idcontato` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mensagem` varchar(800) NOT NULL,
  PRIMARY KEY (`idcontato`)  
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `enredo` (
  `idenredo` int NOT NULL AUTO_INCREMENT,
  `frase` varchar(800) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  PRIMARY KEY (`idenredo`)  
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

INSERT INTO `squad2`.`cadastro`(`nome`, `data_nascimento`,`email`, `telefone`, `senha`)
VALUES ('Pessoa A', '00/00/0000', 'pessoa@gmail.com', '(11) 99999-9999', 'senhamd5');

INSERT INTO `squad2`.`cadastro_jogo`(`apelido`, `avatar`)
VALUES ('PA', 'avatar1.jpg');

INSERT INTO `squad2`.`contato`(`nome`, `email`, `mensagem`)
VALUES ('Pessoa A', 'pessoa@gmail.com', 'Parabéns pelo site!!');

INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Oi, tudo bem? Prazer sou o Hélio!', 'imagem1.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Oi, Hélio, prazer! Eu sou o X.', 'imagem2.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Nunca te vi por aqui, você é novo?', 'imagem3.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Sou, sim.', 'imagem4.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Que legal você também vai estudar na EMEI Cidade do Sol?', 'imagem5.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Sim, isso mesmo!', 'imagem6.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Também estudo lá. Se quiser eu posso te mostrar Heliópolis, onde comprar picolé, bolinha de gude, essas coisas.', 'imagem7.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Nossa! Quero sim, vai ser bem legal.', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Ai!', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('O que aconteceu?', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Acho que pisei em um prego.', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Nossa! Você se machucou?', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Ainda bem que não, só furou meu chinelo.', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Menos mal! Infelizmente essas coisas podem acontecer mesmo, temos que prestar muita atenção onde pisamos, os adultos jogam muitos lixos na rua.', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Isso não é legal!', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Não mesmo, por isso eu e meus amigos criamos o FavelAção.', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('O que é isso?', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Um grupo, formado por crianças para ajudar o meio ambiente. Você poderia participar, será bem-vindo!', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Hum! Mas o que é meio... Meio o que mesmo?', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Ambiente! É o local onde se desenvolve a vida no planeta, é a natureza com todos os seres vivos e não vivos que moram aqui.', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Ah entendi, é o local onde vivemos.', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Isso! E ai? Topa?', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Topo sim!', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Certo, mas antes você tem que concluir uma missão.', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Ok, qual missão? Missão 1: Você tem que mostrar pra sua família como separar o lixo reciclável, e fazer essa separação por pelo menos uma semana, e colocar o lixo onde a coleta seletiva possa pegar.', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Podemos chamar essa ação de separar recicláveis de reciclagem, com ela diminuímos as retiradas de matéria-prima da natureza, geramos economia de água e energia e reduzimos a disposição inadequada do lixo. É maravilhoso né?', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Mas você sabe quais são os lixos recicláveis.', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Não sei, quais são?', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Temos muitos, mas os materiais mais reciclados são o vidro, o metal, o papel e o plástico.', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Por exemplo: Garrafas de vidro, latinhas de alumínio, embalagens de leite e garrafas de refrigerante.', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Nossa! Quanta coisa.', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Ah! E a Coleta Seletiva passa de segunda, quarta e sexta lá na Rua X. ', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Vou já contar pra minha família!', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Parabéns! Agora você faz parte da turma do FavelAção.', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Teremos muito trabalho pela frente...', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Mas antes de começar quero te apresentar para a turma.', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Essa é a Babi, ela contribui muito no FavelAção.', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Esse é o João, pensa num menino gente fina, que ajuda demais.', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Oi, X, seja bem-vindo!', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Prazer, X! Que bom ter você com a gente, ajuda nunca é demais! Estamos precisando mesmo.', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Nós temos a política dos 5 R’s da sustentabilidade ela deve ser aplicada em ordem de importância, assim : reduzir, reutilizar e reciclar. ', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Reduzir o consumo ao máximo, reutilizar produtos e materiais enquanto puderem ser reutilizados e, por último, reciclar aqueles que tiverem chegado ao fim de sua vida útil.', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Pensando nisso, que tal reutilizarmos algum brinquedo?', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Missão 2 : Para completar a missão encontre algum brinquedo ou livro que você não brinca mais e doe a algum amiguinho. Assim você estará REUTILIZANDO e fazendo outra criança feliz. ', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Ajudar o meio ambiente e os outros faz bem!  Bom trabalho!!', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Lembra que eu te expliquei o que é meio ambiente?', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Vamos relembrar...', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Meio ambiente é o local onde se desenvolve a vida na terra, ou seja, é a natureza com todos os seres vivos e não vivos que nela habitam e interagem.', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Missão 3: Para essa missão, você deve desenhar algo que te lembre o meio ambiente e nos enviar. Vamos lá!', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Parabéns! Desenhar estimula a criatividade e outros sentidos, isso é fantástico!', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Você sabia que o óleo de cozinha descartado de forma incorreta contamina nosso meio ambiente podendo poluir as águas, o solo e até mesmo a atmosfera (camada de ar que envolve a Terra)?', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Vamos fazer nossa parte e descarta-lo de forma correta!', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Missão 4: Fale para sua família do mal que o mal descarte do óleo de cozinha pode causar, e pede para um adulto despejar o óleo que não será mais utilizado em uma garrafa pet, vazia e limpa, por exemplo de amaciante.', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Depois acompanhado de um adulto entregue a garrafa com o óleo a uma pessoa que queira reaproveita-lo, por exemplo, fazendo sabão em barra.', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Uau! Parabéns você avançou de fase!', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Já aprendemos muitas coisas. Vamos relembrar?', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Agora você já sabe o que é meio ambiente, e algumas atitudes que temos que pode ajuda-lo, como separar o lixo, reduzir, reutilizar e reciclar, descartar o óleo de cozinha da forma correta.', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Ah! E não podemos esquecer que você já sabe os dias da coleta seletiva de Heliópolis e onde ela passa.', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Não esqueça que nosso dever, principalmente como membro do FavelAção é de ajudar o meio ambiente e passar nosso conhecimento para outras pessoas.', 'imagem8.jpg');
INSERT INTO `squad2`.`enredo`(`frase`, `imagem`)
VALUES ('Nos vemos na próxima fase!', 'imagem8.jpg');



-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Jan-2021 às 01:41
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `favelacao`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `enredo`
--

CREATE TABLE `enredo` (
  `idenredo` int(11) NOT NULL,
  `frase` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `enredo`
--

INSERT INTO `enredo` (`idenredo`, `frase`) VALUES
(1, 'Oi, tudo bem? Prazer sou o Hélio!'),
(2, 'Oi, Hélio, prazer! Eu sou o X.'),
(3, 'Nunca te vi por aqui, você é novo?'),
(4, 'Sou, sim.'),
(5, 'Que legal você também vai estudar na EMEI Cidade do Sol?'),
(6, 'Sim, isso mesmo!'),
(7, 'Também estudo lá. Se quiser eu posso te mostrar Heliópolis, onde comprar picolé, bolinha de gude, essas coisas.'),
(8, 'Nossa! Quero sim, vai ser bem legal.'),
(9, 'Ai!'),
(10, 'O que aconteceu?'),
(11, 'Acho que pisei em um prego.'),
(12, 'Nossa! Você se machucou?'),
(13, 'Ainda bem que não, só furou meu chinelo.'),
(14, 'Menos mal! Infelizmente essas coisas podem acontecer mesmo, temos que prestar muita atenção onde pisamos, os adultos jogam muitos lixos na rua.'),
(15, 'Isso não é legal!'),
(16, 'Não mesmo, por isso eu e meus amigos criamos o FavelAção.'),
(17, 'O que é isso?'),
(18, 'Um grupo, formado por crianças para ajudar o meio ambiente. Você poderia participar, será bem-vindo!'),
(19, 'Hum! Mas o que é meio... Meio o que mesmo?'),
(20, 'Ambiente! É o local onde se desenvolve a vida no planeta, é a natureza com todos os seres vivos e não vivos que moram aqui.'),
(21, 'Ah entendi, é o local onde vivemos.'),
(22, 'Isso! E ai? Topa?'),
(23, 'Topo sim!'),
(24, 'Certo, mas antes você tem que concluir uma missão.'),
(25, 'Ok, qual missão? Missão 1: Você tem que mostrar pra sua família como separar o lixo reciclável, e fazer essa separação por pelo menos uma semana, e colocar o lixo onde a coleta seletiva possa pegar.'),
(26, 'Podemos chamar essa ação de separar recicláveis de reciclagem, com ela diminuímos as retiradas de matéria-prima da natureza, geramos economia de água e energia e reduzimos a disposição inadequada do lixo. É maravilhoso né?'),
(27, 'Mas você sabe quais são os lixos recicláveis.'),
(28, 'Não sei, quais são?'),
(29, 'Temos muitos, mas os materiais mais reciclados são o vidro, o metal, o papel e o plástico.'),
(30, 'Por exemplo: Garrafas de vidro, latinhas de alumínio, embalagens de leite e garrafas de refrigerante.'),
(31, 'Nossa! Quanta coisa.'),
(32, 'Ah! E a Coleta Seletiva passa de segunda, quarta e sexta lá na Rua X. '),
(33, 'Vou já contar pra minha família!'),
(34, 'Parabéns! Agora você faz parte da turma do FavelAção.'),
(35, 'Teremos muito trabalho pela frente...'),
(36, 'Mas antes de começar quero te apresentar para a turma.'),
(37, 'Essa é a Babi, ela contribui muito no FavelAção.'),
(38, 'Esse é o João, pensa num menino gente fina, que ajuda demais.'),
(39, 'Oi, X, seja bem-vindo!'),
(40, 'Prazer, X! Que bom ter você com a gente, ajuda nunca é demais! Estamos precisando mesmo.'),
(41, 'Nós temos a política dos 5 R’s da sustentabilidade ela deve ser aplicada em ordem de importância, assim : reduzir, reutilizar e reciclar. '),
(42, 'Reduzir o consumo ao máximo, reutilizar produtos e materiais enquanto puderem ser reutilizados e, por último, reciclar aqueles que tiverem chegado ao fim de sua vida útil.'),
(43, 'Pensando nisso, que tal reutilizarmos algum brinquedo?'),
(44, 'Missão 2 : Para completar a missão encontre algum brinquedo ou livro que você não brinca mais e doe a algum amiguinho. Assim você estará REUTILIZANDO e fazendo outra criança feliz. '),
(45, 'Ajudar o meio ambiente e os outros faz bem!  Bom trabalho!!'),
(46, 'Lembra que eu te expliquei o que é meio ambiente?'),
(47, 'Vamos relembrar...'),
(48, 'Meio ambiente é o local onde se desenvolve a vida na terra, ou seja, é a natureza com todos os seres vivos e não vivos que nela habitam e interagem.'),
(49, 'Missão 3: Para essa missão, você deve desenhar algo que te lembre o meio ambiente e nos enviar. Vamos lá!'),
(50, 'Parabéns! Desenhar estimula a criatividade e outros sentidos, isso é fantástico!'),
(51, 'Você sabia que o óleo de cozinha descartado de forma incorreta contamina nosso meio ambiente podendo poluir as águas, o solo e até mesmo a atmosfera (camada de ar que envolve a Terra)?'),
(52, 'Vamos fazer nossa parte e descarta-lo de forma correta!'),
(53, 'Missão 4: Fale para sua família do mal que o mal descarte do óleo de cozinha pode causar, e pede para um adulto despejar o óleo que não será mais utilizado em uma garrafa pet, vazia e limpa, por exemplo de amaciante.'),
(54, 'Depois acompanhado de um adulto entregue a garrafa com o óleo a uma pessoa que queira reaproveita-lo, por exemplo, fazendo sabão em barra.'),
(55, 'Uau! Parabéns você avançou de fase!'),
(56, 'Já aprendemos muitas coisas. Vamos relembrar?'),
(57, 'Agora você já sabe o que é meio ambiente, e algumas atitudes que temos que pode ajuda-lo, como separar o lixo, reduzir, reutilizar e reciclar, descartar o óleo de cozinha da forma correta.'),
(58, 'Ah! E não podemos esquecer que você já sabe os dias da coleta seletiva de Heliópolis e onde ela passa.'),
(59, 'Não esqueça que nosso dever, principalmente como membro do FavelAção é de ajudar o meio ambiente e passar nosso conhecimento para outras pessoas.'),
(60, 'Nos vemos na próxima fase!');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `dataNascimento` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `senha` varchar(8) NOT NULL,
  `confirmarSenha` varchar(8) NOT NULL,
  `apelido` varchar(255) NOT NULL,
  `imgAvatar` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `dataNascimento`, `email`, `telefone`, `senha`, `confirmarSenha`, `apelido`, `imgAvatar`) VALUES
(1, 'Patricia', '29/10/1996', 'patricia.dstorres@hotmail.com', '11975893133', '12345678', '12345678', 'Pathy', 'imagem01');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `enredo`
--
ALTER TABLE `enredo`
  ADD PRIMARY KEY (`idenredo`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `enredo`
--
ALTER TABLE `enredo`
  MODIFY `idenredo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

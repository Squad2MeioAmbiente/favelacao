-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Mar-2021 às 00:41
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Estrutura da tabela `administrador`
--

CREATE TABLE `administrador` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `dataNascimento` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `senha` varchar(34) NOT NULL,
  `confirmarSenha` varchar(34) NOT NULL,
  `categoriaSecreta` varchar(55) NOT NULL,
  `respSecreta` varchar(55) NOT NULL,
  `data` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `administrador`
--

INSERT INTO `administrador` (`id`, `nome`, `dataNascimento`, `email`, `telefone`, `senha`, `confirmarSenha`, `categoriaSecreta`, `respSecreta`, `data`) VALUES
(3, 'admin', '2011-12-31', 'admin@gmail.com', '11-91234-1234', '0192023a7bbd73250516f069df18b500', '0192023a7bbd73250516f069df18b500', 'Desenho preferido', 'tom & jerry', '2021-03-07 01:48:12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cenarios`
--

CREATE TABLE `cenarios` (
  `idCenario` int(11) NOT NULL,
  `imagemCenario` varchar(255) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cenarios`
--

INSERT INTO `cenarios` (`idCenario`, `imagemCenario`, `descricao`) VALUES
(1, 'dia.jpg', 'Cenário Dia'),
(2, 'heliopolis.jpg', 'Cenário Heliopolis Cima'),
(3, 'noite.jpg', 'Cenário  Noite'),
(4, 'rua1.jpg', 'Rua 1'),
(5, 'rua2.jpg', 'Rua 2'),
(6, 'rua3.jpg', 'Rua 3'),
(7, 'rua4.jpg', 'Rua 4'),
(8, 'rua5.gif', 'Rua 5'),
(9, 'rua6.jpg', 'Rua 6'),
(10, 'rua7.jpg', 'Rua 7'),
(11, 'rua8.jpg', 'Rua 8'),
(12, 'rua9.jpg', 'Rua 9'),
(13, 'rua10.jpg', 'Rua 10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE `contato` (
  `idcontato` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `assunto` varchar(200) DEFAULT NULL,
  `mensagem` varchar(800) DEFAULT NULL,
  `data` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `contato`
--

INSERT INTO `contato` (`idcontato`, `nome`, `email`, `assunto`, `mensagem`, `data`) VALUES
(1, 'Pathy', 'patricia.dstorres@hotmail.com', 'Legal', 'Olá, gostaria de dizer que o site está lindo!', '2021-03-07 12:21:09');

-- --------------------------------------------------------

--
-- Estrutura da tabela `enredo`
--

CREATE TABLE `enredo` (
  `idenredo` int(11) NOT NULL,
  `frase` varchar(800) NOT NULL,
  `idCenario` int(11) DEFAULT NULL,
  `IdPersonagem` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `enredo`
--

INSERT INTO `enredo` (`idenredo`, `frase`, `idCenario`, `IdPersonagem`) VALUES
(1, 'Oi, tudo bem? Prazer sou o Hélio!', 10, 1),
(2, 'Oi, Hélio, prazer!', 10, 2),
(3, 'Nunca te vi por aqui, você se mudou agora?', 10, 1),
(4, 'Mudei sim.', 10, 1),
(5, 'Que legal você também vai estudar na EMEI Cidade do Sol?', 10, 3),
(6, 'Sim, isso mesmo!', 10, 1),
(7, 'Também estudo lá.', 10, 1),
(8, ' Se quiser eu posso te mostrar Heliópolis, ', 10, 2),
(9, 'onde comprar pipa, açaí, essas coisas', 10, 1),
(10, 'Nossa! Quero sim, vai ser bem legal.', 10, 1),
(11, 'Ai!', 11, 1),
(12, 'O que aconteceu?', 11, 4),
(13, 'Acho que pisei em um prego.', 11, 1),
(14, 'Nossa! Você se machucou?', 11, 1),
(15, 'Ainda bem que não, só furou meu chinelo.', 11, 1),
(16, 'Menos mal! Infelizmente essas coisas acontecem mesmo,', 11, 3),
(17, ' temos que prestar muita atenção onde pisamos,', 11, 1),
(18, ' os adultos jogam muitos lixos na rua.', 11, 1),
(19, 'Isso não é legal!', 11, 1),
(20, 'Não mesmo, por isso eu e meus amigos criamos o FavelAção.', 11, 1),
(21, 'O que é isso?', 11, 1),
(22, 'Um grupo, formado por crianças para ajudar o meio ambiente.', 11, 2),
(23, ' Você poderia participar!', 11, 1),
(24, 'Hum! Mas o que é meio... Meio o que mesmo?', 11, 1),
(25, 'Ambiente! É o local onde se desenvolve a vida no planeta,', 11, 1),
(26, ' é a natureza com todos os seres vivos e não vivos que moram aqui.', 11, 1),
(27, 'Ah entendi, é o local onde vivemos.', 11, 1),
(28, 'Isso! E ai? Topa?', 11, 1),
(29, 'Topo sim!', 11, 1),
(30, 'Certo, mas antes você tem que concluir uma missão.', 11, 1),
(31, 'Ok, qual missão?', 11, 1),
(32, 'MISSÃO: Você tem que mostrar pra sua família como separar o lixo reciclável,', 11, 1),
(33, ' fazer essa separação por pelo menos uma semana,e colocar o lixo onde a coleta seletiva possa pegar.', 11, 1),
(34, 'Podemos chamar essa brincadeira de separar recicláveis,', 11, 1),
(35, ' com ela diminuímos as retiradas de matéria-prima da natureza,', 11, 1),
(36, 'geramos economia de água e energia e reduzimos a disposição inadequada do lixo.', 11, 1),
(37, ' É maravilhoso né?', 11, 1),
(38, 'Mas você sabe quais são os lixos recicláveis.', 11, 1),
(39, 'Não sei, quais são?', 11, 1),
(40, 'Temos muitos, mas os materiais mais reciclados são o vidro, o metal, o papel e o plástico.', 11, 1),
(41, 'Por exemplo: Garrafas de vidro, latinhas de alumínio,', 11, 1),
(42, 'embalagens de leite e garrafas de refrigerante.', 11, 1),
(43, 'Nossa! Quanta coisa.', 11, 1),
(44, 'Vou já contar pra minha família!', 11, 1),
(45, 'Parabéns! Agora você faz parte da turma do FavelAção.', 11, 1),
(46, 'Caixa de leite é feita de papel, plástico e alumínio, portanto ela é reciclável?', 11, 1),
(47, 'Teremos muito trabalho pela frente...', 11, 1),
(48, 'Mas antes de começar quero te apresentar para a turma.', 11, 1),
(49, 'Essa é a Babi, ela contribui muito no FavelAção.', 11, 1),
(50, 'Esse é o João, pensa num menino gente fina, que ajuda demais.', 11, 1),
(51, 'Olá', 11, 1),
(52, 'Que bom ter você com a gente, ajuda nunca é demais! Estamos precisando mesmo.', 11, 1),
(53, 'Tenho que ir para casa, nos vemos por ai, tchau tchau!', 11, 1),
(54, 'Tchau', 11, 1),
(55, 'Tchau', 11, 1),
(56, 'Oi Hélio, bom dia! Tudo bem? ', 12, 1),
(57, 'Eu estou ótimo e você ? ', 1, 1),
(58, 'Não dormi direito,  muita ansiedade para o meu primeiro dia na escola ', 1, 1),
(59, 'Ah relaxa, vão te receber bem.', 1, 1),
(60, ' Deixa eu perguntar você não contou pra sua mãe que faz parte do FavelAção não né? ', 1, 1),
(61, 'Não, por quê? ', 1, 1),
(62, 'Esqueci de falar, é segredo,', 1, 1),
(63, 'os adultos não entendem muito isso de cuidar do meio ambiente', 1, 1),
(64, 'Por que será né, do jeito que você fala, essas ações ajudam muito eles', 1, 1),
(65, 'Ah seila, deve ser preguiça ', 1, 1),
(66, 'Vixi minha mãe sempre fala que preguiça é ruim, ', 1, 1),
(67, 'principalmente quando eu não arrumo minha cama', 1, 1),
(68, 'Minha avó fala que devemos começar o dia arrumando a cama para ter um dia bom,', 1, 1),
(69, ' eu arrumo né, vou arriscar nada', 1, 1),
(70, 'Kkkkkkkk', 1, 1),
(71, 'É aqui, essa é nossa escola, você vai curtir ', 1, 1),
(72, 'Valeu, minha mãe  disse que eu tenho que falar com a diretora,', 1, 1),
(73, ' você sabe onde ela fica? ', 1, 1),
(74, 'Humm, por ali, entra a direita na última porta ', 1, 1),
(75, 'Ah valeu, vamos voltar juntos né? ', 1, 1),
(76, 'Opa, claro eu te espero, temos uma missão hoje ', 1, 1),
(77, 'Beleza, eu vou lá, se não vou me atrasar ', 1, 1),
(78, 'Até depois !', 1, 1),
(79, 'Até! ', 1, 1),
(80, 'Oi, eu sou a professora de vocês, pode sentar ali do lado do Hélio', 1, 1),
(81, 'Hélio?  Nossa cara que legal, estamos na mesma sala!', 1, 1),
(82, 'Poxa, que dahora!', 1, 1),
(83, 'Bora para casa, para depois fazermos a missão de hoje?', 1, 1),
(84, 'Claro!', 1, 1),
(85, 'Você sabia que nós temos a política dos 3 R’s da sustentabilidade?', 1, 1),
(86, ' Ela deve ser aplicada em ordem de importância, assim : reduzir, reutilizar e reciclar. ', 1, 1),
(87, 'Reduzir o consumo ao máximo, reutilizar produtos e materiais enquanto puderem ser reutilizados e, ', 1, 1),
(88, 'por último, reciclar aqueles que tiverem chegado ao fim de sua vida útil.', 1, 1),
(89, 'Pensando nisso, que tal reutilizarmos algum brinquedo?', 1, 1),
(90, 'MISSÃO: Para completar a missão encontre algum brinquedo ou livro', 1, 1),
(91, ' que você não brinca mais e doe a algum amiguinho.', 1, 1),
(92, ' Assim você estará REUTILIZANDO e fazendo outra criança feliz.', 1, 1),
(93, 'Ajudar o meio ambiente e os outros faz bem!  Bom trabalho!!', 1, 1),
(94, 'Restar faz parte da política dos 3 R’s?', 1, 1),
(95, 'Lembra que eu te expliquei o que é meio ambiente?', 1, 1),
(96, 'Vamos relembrar...', 1, 1),
(97, 'Meio ambiente é o local onde se desenvolve a vida na terra, ou seja,', 1, 1),
(98, ' é a natureza com todos os seres vivos e não vivos que nela habitam e interagem.', 1, 1),
(99, 'MISSÃO: Para essa missão, você deve desenhar algo que te lembre o meio ambiente', 1, 1),
(100, 'E nos enviar, por esse botão \'Fazer upload\'  Vamos lá!', 1, 1),
(101, 'Acho que você vai demorar um pouquinho para pensar no que desenhar,', 1, 1),
(102, ' eu tenho que ajudar minha mãe em umas coisas em casa. ', 1, 1),
(103, 'Nos vemos amanhã!', 1, 1),
(104, 'Tá bom Hélio, boa tarde!', 1, 1),
(105, 'Boa tarde!', 1, 1),
(106, 'Parabéns! Desenhar estimula a criatividade e outros sentidos, isso é fantástico!', 1, 1),
(107, 'Meio ambiente é onde vivemos?', 1, 1),
(108, 'Oi', 1, 1),
(109, 'Oi Hélio, você não foi para a escola hoje, aconteceu alguma coisa?', 1, 1),
(110, 'Desculpa não avisar, mas você acredita que a pia da cozinha entupiu?', 1, 1),
(111, ' Precisei ajudar minha mãe, meu pai ia trabalhar e minha avó é de idade.', 1, 1),
(112, 'Nossa! Foi nada! Mas entupiu muito?', 1, 1),
(113, 'Sim, mas já resolvemos. Acho que foi óleo de cozinha,', 1, 1),
(114, 'mas estranho porque eu já falei pra minha mãe que não pode', 1, 1),
(115, 'Não pode?', 1, 1),
(116, 'Não, o óleo de cozinha descartado de forma incorreta contamina nosso meio ambiente', 1, 1),
(117, ' podendo poluir as águas, o solo e até mesmo a atmosfera (camada de ar que envolve a Terra)', 1, 1),
(118, 'Vamos fazer nossa parte e descarta-lo de forma correta!', 1, 1),
(119, 'MISSÃO: Fale para sua família do mal que o mau descarte do óleo de cozinha pode causar,', 1, 1),
(120, 'e pede para um adulto despejar o óleo que não será mais utilizado em uma garrafa pet,', 1, 1),
(121, 'vazia e limpa, por exemplo de amaciante.', 1, 1),
(122, 'Depois acompanhado de um adulto entregue a garrafa com o óleo', 1, 1),
(123, 'a uma pessoa que queira reaproveita-lo, por exemplo, fazendo sabão em barra.', 1, 1),
(124, 'Uau! Parabéns você cumpriu a missão com sucesso!', 1, 1),
(125, 'É verdade que o óleo de cozinha mal descartado pode poluir  as águas?', 1, 1),
(126, 'Mas e aí vamos brincar?', 1, 1),
(127, 'Demoro!', 1, 1),
(128, 'E aí Charlie, podemos entrar?', 1, 1),
(129, 'Hum, sei não, estamos completos', 1, 1),
(130, 'Mas o que que tem? Revezamos', 1, 1),
(131, 'Ok, mas se der uma de frango, sai fora hein', 1, 1),
(132, 'Foi divertido!', 1, 1),
(133, 'Foi mesmo, 8 a 5 kkkk', 1, 1),
(134, 'Qual é a do Charlie?', 1, 1),
(135, 'Sei lá viu, não liga para ele não, ele é meio chatinho assim mesmo', 1, 1),
(136, 'Entendi, ele sabe do FavelAção?', 1, 1),
(137, 'Xiuuuu! Não, e nem vai saber', 1, 1),
(138, 'Não está mais aqui quem falou', 1, 1),
(139, 'Vou entrar, boa noite Hélio!', 1, 1),
(140, 'Boa noite!', 1, 1),
(141, 'Vamos esperar o João, lembra dele?', 1, 1),
(142, 'Opa! Lembro sim', 1, 1),
(143, 'Eai mano?', 1, 1),
(144, 'Eai, está gostando da escola?', 1, 1),
(145, 'Sim, se acredita que estou na mesma sala que o Hélio?', 1, 1),
(146, 'Que dahora.', 1, 1),
(147, 'Você contou Hélio?', 1, 1),
(148, 'O que? Ahhh! Ainda não', 1, 1),
(149, 'O que gente?', 1, 1),
(150, 'Estão acontecendo umas coisas estranhas ultimamente', 1, 1),
(151, 'Tipo o que? Tem a ver com o FavelAção?', 1, 1),
(152, 'Fala baixo, as pessoas não conhecem o grupo', 1, 1),
(153, 'A gente ajuda, mas as pessoas não sabem?', 1, 1),
(154, 'Não, não contamos. Já dizia minha avó, o que a mão direita faz,', 1, 1),
(155, ' a esquerda não precisa ficar sabendo.', 1, 1),
(156, 'Aos poucos a quebrada está se acostumando com novos hábitos', 1, 1),
(157, 'Entendi, desculpa! Mas o que está acontecendo?', 1, 1),
(158, 'Ontem eu coloquei uma caixa com embalagens recicláveis na frente de casa,', 1, 1),
(159, ' porque a Dona Maria passa e pega para juntar uma grana, mas quando eu sai para brincar,', 1, 1),
(160, ' estava tudo espalhado na pracinha', 1, 1),
(161, 'Nossa, quem fez isso?', 1, 1),
(162, 'É o que temos que descobrir!', 1, 1),
(163, 'Que horas você colocou as embalagens para fora?', 1, 1),
(164, 'Acho que umas seis horas da tarde, ela pega de manhã', 1, 1),
(165, 'Hum, entendi', 1, 1),
(166, 'Bom gente, vou almoçar vejo vocês daqui a pouco, tragam luvas', 1, 1),
(167, 'Blz', 1, 1),
(168, 'Luvas? ', 1, 1),
(169, 'É vamos precisar', 1, 1),
(170, 'Ok', 1, 1),
(171, 'Eai?', 1, 1),
(172, 'Eai?', 1, 1),
(173, 'MISSÃO: Sua missão será recolher todo lixo reciclável que encontrar na pracinha,', 1, 1),
(174, 'lembre-se de usar luvas.  Coloque em um saco ou caixa e jogue no lugar correto.', 1, 1),
(175, 'Além de recolher os recicláveis você descobrir onde pode jogar lixo reciclável, perto da pracinha.', 1, 1),
(176, 'Nossa pessoal, pegamos tudo! Parabéns', 1, 1),
(177, 'Lixo reciclável é jogado separado de lixo comum?', 1, 1),
(178, 'Valeu gente pela ajuda, até amanhã!', 1, 1),
(179, 'Até!', 1, 1),
(180, 'Até!', 1, 1),
(181, 'Bom dia, tudo bem?', 1, 1),
(182, 'Bom dia Hélio, estou triste, meu peixinho morreu', 1, 1),
(183, 'Eita, que triste, sinto muito', 1, 1),
(184, 'Valeu!', 1, 1),
(185, 'Falando nisso, você sabe qual o lixo que mais faz mal aos animais marinhos?  ', 1, 1),
(186, 'Não sei não', 1, 1),
(187, 'O plástico nos mares é um dos piores poluidores da atualidade.', 1, 1),
(188, 'A presença desse tipo de resíduo prejudica a vida aquática,', 1, 1),
(189, 'pois animais marinhos podem confundi-los com comida ou serem sufocados.', 1, 1),
(190, ' Isso acontece porque todo plástico no oceano tem uma fina camada de micróbios,', 1, 1),
(191, ' normalmente chamada de \'plastisfério\'.', 1, 1),
(192, 'Serio? Muitos peixes morrem por causa do plástico?', 1, 1),
(193, 'Sim, infelizmente, nós não temos noção do mal que fazemos ao consumir produtos do tipo', 1, 1),
(194, 'E o que fazemos para ajudar Hélio?', 1, 1),
(195, 'MISSÃO: Pensando nisso vamos selecionar outra opção além de plástico que podemos utilizar.', 1, 1),
(196, 'Na próxima vez que for ao mercado com um adulto, leve Sacola Retornável,', 1, 1),
(197, 'assim você e sua família não irão precisar das sacolas plásticas e vamos ajudar a salvar muitos peixinhos.', 1, 1),
(198, 'Parabéns pela ajuda! Com certeza, os animais marinhos agradecem!', 1, 1),
(199, 'Papelão é o material que mais faz mal aos animais marinhos?', 1, 1),
(200, 'Mas agora vamos para a aula', 1, 1),
(201, 'Está melhor?', 1, 1),
(202, 'Estou sim, mas triste por todos bichinhos do mar', 1, 1),
(203, 'Então já sabe o que pode fazer para ajudar, reduzir o plástico', 1, 1),
(204, 'Ô Babi', 1, 1),
(205, 'Oi Hélio, tudo bem com vocês?', 1, 1),
(206, 'Vamos jogar alguma coisa lá na rua hoje?', 1, 1),
(207, 'Nossa Hélio, não dá. Acredita que alguém entrou no quintal e destruiu as plantinhas da minha avó? Ela está bem tristinha, vou ajuda-la', 1, 1),
(208, 'Como assim? Outro dia foi o lixo do João, hoje as plantas da sua avó, está muito estranho tudo isso', 1, 1),
(209, 'Que chato Babi, se quiser posso ajudar! ', 1, 1),
(210, 'Ai seria ótimo', 1, 1),
(211, 'Se não tiver problema, vou também', 1, 1),
(212, 'Problema nenhum, toda ajuda é bem vinda!', 1, 1),
(213, 'Quem sabe eu não acho alguma pista', 1, 1),
(214, 'Avó da Babi: Obrigada por virem meninos', 1, 1),
(215, 'Que isso Dona Isaura, sabe que pode contar sempre com a gente', 1, 1),
(216, 'Sabiam que as plantas são muito importantes, porque nos dão ar puro para respirar?', 1, 1),
(217, 'A maioria das plantas são compostas por várias partes,', 1, 1),
(218, 'a raiz por onde se alimenta e se segura à terra, o caule que mantém a planta direita e transporta a água', 1, 1),
(219, 'e os nutrientes a todas as partes da planta e folhas por onde respiram', 1, 1),
(220, 'Que legal! Por isso árvores são tão importantes', 1, 1),
(221, 'MISSÃO: Para ganhar mais um medalha complete a frase plantando um broto de feijão. ', 1, 1),
(222, 'Você vai precisar de:', 1, 1),
(223, 'Um copo plástico descartável', 1, 1),
(224, 'Cerca de 5 gramas de algodão', 1, 1),
(225, 'Um grão de feijão', 1, 1),
(226, 'Água', 1, 1),
(227, 'Como plantar:', 1, 1),
(228, 'Primeiro você precisa umedecer o algodão com a água.', 1, 1),
(229, 'Depois forre o fundo do copo descartável com o algodão umedecido.', 1, 1),
(230, 'Coloque seu feijão sobre o algodão, coloque o copo em um local iluminado', 1, 1),
(231, ' e não deixe o algodão secar. Vá colocando água sempre e aos pouquinhos.', 1, 1),
(232, 'Mais ou menos em 3 dias a raiz começará a aparecer e um pouco mais tarde seu feijão vai começar a nascer.', 1, 1),
(233, 'Muito obrigada queridos, pela ajuda', 1, 1),
(234, 'É verdade que as plantas geram ar puro?', 1, 1),
(235, 'A senhora realmente não viu nada Dona Isaura?', 1, 1),
(236, 'Não vi Hélio', 1, 1),
(237, 'É Babi, assim vai ser difícil achar o culpado', 1, 1),
(238, 'Verdade! Obrigada pela ajuda gente', 1, 1),
(239, 'Imagina Babi, precisando só chamar', 1, 1),
(240, 'Que estranho né Hélio', 1, 1),
(241, 'Bota estranho nisso', 1, 1),
(242, 'Olha os meninos jogando bola, vamos lá!', 1, 1),
(243, 'Bora!', 1, 1),
(244, 'Eai mano?', 1, 1),
(245, 'Plantando flores agora kkkk', 1, 1),
(246, 'Estávamos ajudando nossa amiga, algum problema? Mas quem te falou?', 1, 1),
(247, 'Um passarinho me contou', 1, 1),
(248, 'Hum, entendi, mas e aí está com medo de perder de novo?', 1, 1),
(249, 'Aquele dia vocês tiveram sorte', 1, 1),
(250, 'Vamos ver então', 1, 1),
(251, 'É acho que não foi sorte não kkk', 1, 1),
(252, 'Você achou estranho o Charlie saber que estávamos ajudando a vó da Babi?', 1, 1),
(253, 'Não, não parei para pensar nisso, talvez ela falou para ele', 1, 1),
(254, 'Eles não conversam, a Babi não suporta o Charlie', 1, 1),
(255, 'Hum então tá estranho', 1, 1),
(256, 'Nossa o jogo acabou mais tarde hoje, minha mãe vai brigar comigo, deixa eu entrar, boa noite', 1, 1),
(257, 'Boa noite!', 1, 1),
(258, 'Hoje podíamos jogar aquele jogo hein Babi?', 1, 1),
(259, 'Hoje pode ser sim!', 1, 1),
(260, 'E vocês podem?', 1, 1),
(261, 'Eu posso!', 1, 1),
(262, 'Eu tenho que fazer o dever, mas faço amanhã', 1, 1),
(263, 'Beleza então, depois do almoço, podem ir na minha casa', 1, 1),
(264, 'Gente, o que é aquilo?', 1, 1),
(265, 'Parece pneu', 1, 1),
(266, 'Não acredito!', 1, 1),
(267, 'Sério? Tem uma placa bem grande escrito proibido jogar lixo', 1, 1),
(268, 'O pessoal não respeita mesmo', 1, 1),
(269, 'Pneu pode trazer doenças', 1, 1),
(270, 'Por causa do formato dele é fácil ficar com água parada', 1, 1),
(271, 'e assim pode trazer dengue entre outras doenças.', 1, 1),
(272, 'Ai gente, mas uma missão pro FavelAção!', 1, 1),
(273, 'Nosso jogo vai ficar pra próxima, depois do almoço vamos tirar isso daqui e jogar no local certo, onde o lixeiro pode pegar!', 1, 1),
(274, 'Minha mãe faz casinha de cachorro com pneu careca', 1, 1),
(275, 'Ai vamos ajudar limpando isso, e trazendo uma grana para sua mãe, fecho?', 1, 1),
(276, 'Fechado gente', 1, 1),
(277, 'Gente olha aqui', 1, 1),
(278, 'Nossa! Tem até rato', 1, 1),
(279, 'Ai credo, que medo!', 1, 1),
(280, 'Pode até trazer leptospirose', 1, 1),
(281, 'Lep ... o que?', 1, 1),
(282, 'Leptospirose a doença causada por animais, como ratos', 1, 1),
(283, 'A professora estava explicando esses dias mesmo', 1, 1),
(284, 'É uma infecção aguda', 1, 1),
(285, 'Nossa!', 1, 1),
(286, 'Gente é bem sério', 1, 1),
(287, 'Vamos pedir ajuda de adultos e tragam luvas', 1, 1),
(288, 'Beleza Hélio', 1, 1),
(289, 'Até já', 1, 1),
(290, 'Héeeeelio, Héeeelio', 1, 1),
(291, 'Que foi gente?', 1, 1),
(292, 'Olha só, botaram fogo nos pneus', 1, 1),
(293, 'Como assim fogo?', 1, 1),
(294, 'Pois é, além das doenças, também poluição', 1, 1),
(295, 'Tão de brincadeira', 1, 1),
(296, 'Vamos chamar os bombeiros', 1, 1),
(297, 'Vou pedir para minha avó chamar', 1, 1),
(298, 'Gente, aquele ali não é o Charlie?', 1, 1),
(299, 'É sim!', 1, 1),
(300, 'Chaaarlie, Chaaalie', 1, 1),
(301, 'Oi', 1, 1),
(302, 'Você viu que fez isso?', 1, 1),
(303, 'Não, não vi, cheguei agora', 1, 1),
(304, 'Entendi, valeu', 1, 1),
(305, 'Nossa gente, que perigo', 1, 1),
(306, 'Né, não sei no que a pessoa estava pensando', 1, 1),
(307, 'Hélio, quando você entrou pra chamar sua avó,', 1, 1),
(308, 'nós vimos o Charlie e fomos perguntar pra ele se viu quem fez aquilo', 1, 1),
(309, 'O Charlie? E ele viu?', 1, 1),
(310, 'Não, disse que tinha acabado de chegar', 1, 1),
(311, 'Sei, parece que ele sabe de tudo ', 1, 1),
(312, 'É mesmo ', 1, 1),
(313, 'É gente, tivemos uma tarde agitada', 1, 1),
(314, 'Ainda bem que tudo se resolveu ', 1, 1),
(315, 'Ainda bem mesmo', 1, 1),
(316, 'Mas ainda estou achando estranho, tudo isso acontecendo', 1, 1),
(317, 'Nem me fale Hélio, vamos ficar de olho', 1, 1),
(318, 'Podemos jogar amanhã?', 1, 1),
(319, 'Eu tenho que fazer o dever de casa galera, fica pra próxima', 1, 1),
(320, 'Entendi, tudo bem!', 1, 1),
(321, 'Amanhã vou com minha avó no centro', 1, 1),
(322, 'Tudo bem!', 1, 1),
(323, 'E você João?', 1, 1),
(324, 'Vou ficar com meu pai, ele está de folga amanhã', 1, 1),
(325, 'Okok', 1, 1),
(326, 'MISSÃO: Agora que você sabe que água parada pode trazer doença,', 1, 1),
(327, ' retire todas embalagens e tudo que pode ficar com água parada do ar livre.', 1, 1),
(328, ' Coloque em local coberto, onde não pode cair água da chuva por exemplo.', 1, 1),
(329, 'Uau! Parabéns! Assim você se protege e protege todos ao seu redor', 1, 1),
(330, ' de pegar doença causada por água parada.', 1, 1),
(331, 'Deixar água parada permite ambiente propício para a criação de mosquitos,', 1, 1),
(332, ' inclusive o mosquito da dengue?', 1, 1),
(333, 'Tchau gente ', 1, 1),
(334, 'Tchau', 1, 1),
(335, 'Boa noite!', 1, 1),
(336, 'Héliooo', 1, 1),
(337, 'Oi, ', 1, 1),
(338, 'Cara eu não estou conseguindo fazer o dever de casa', 1, 1),
(339, 'O das cores das lixeiras ', 1, 1),
(340, 'Sim', 1, 1),
(341, 'A professora explicou, mas eu esqueci', 1, 1),
(342, 'Quer ajuda?', 1, 1),
(343, 'Se você puder, eu quero sim', 1, 1),
(344, 'Entra ai!', 1, 1),
(345, 'Com licença', 1, 1),
(346, 'Beleza, vamos lá! Em muitos lugares tem lixeiras com a cor de cada material,', 1, 1),
(347, 'facilita a separação do lixo. Na lata de lixo azul jogamos papel e papelão', 1, 1),
(348, 'na vermelha, plástico', 1, 1),
(349, ' na verde , vidro', 1, 1),
(350, ' e na amarela, metal.', 1, 1),
(351, 'Ai é só pintar cada lixeira com a cor certa.', 1, 1),
(352, ' Temos feito um bom trabalho, vejo melhoras em Heliópolis,', 1, 1),
(353, 'Na próxima vez que você ver latas de lixos com essas cores, você vai saber onde jogar o seu lixo.', 1, 1),
(354, 'Muito obrigada Hélio, me ajudou demais', 1, 1),
(355, 'Imagina, sempre que precisar pode me chamar.', 1, 1),
(356, 'Terminei antes que eu imaginava, podemos brincar', 1, 1),
(357, 'Verdade!', 1, 1),
(358, 'MISSÃO: Conte para pelo menos um amigo qual a cor da lixeira de cada lixo reciclável.', 1, 1),
(359, 'Muito bem! Agora você sabe a cor certa para o descarte de cada lixeira de lixo.', 1, 1),
(360, 'Devemos jogar metal na lixeira verde?', 1, 1),
(361, 'Podemos brincar de esconde- esconde, vamos ver se tem crianças na rua', 1, 1),
(362, 'Faz tempo que eu não brinco de esconde - esconde, vamos sim', 1, 1),
(363, '“Na rua”', 1, 1),
(364, 'Oi Emily, bora brincar de esconde – esconde?', 1, 1),
(365, 'Íamos jogar bola, mas jogamos direto, vou chamar o pessoal!', 1, 1),
(366, 'Eai mano?', 1, 1),
(367, 'Eai!', 1, 1),
(368, 'Bora brincar!', 1, 1),
(369, 'Dois ou um?', 1, 1),
(370, 'Demorou', 1, 1),
(371, 'Charlie você deixou alguma coisa, seu isqueiro. Isqueiro?', 1, 1),
(372, 'Valeu', 1, 1),
(373, 'Por que você carrega um isqueiro?', 1, 1),
(374, 'Problema meu', 1, 1),
(375, 'O Charlie estava com um isqueiro hoje', 1, 1),
(376, 'Por quê?', 1, 1),
(377, 'Ele não disse, isso faz eu ter certeza que ele está fazendo essas coisas com o lixo', 1, 1),
(378, 'Verdade, foi ele quem colocou fogo no pneu', 1, 1),
(379, 'Vamos ir contar pro pessoal!', 1, 1),
(380, 'Baaaaabi', 1, 1),
(381, 'Ela ia sair com a avó dela, será que já voltou', 1, 1),
(382, 'Não sei', 1, 1),
(383, 'Oi, gente, eu falei que não ia conseguir brincar hoje', 1, 1),
(384, 'Não é para brincar, temos algo para te contar', 1, 1),
(385, 'Para você e o João', 1, 1),
(386, 'Ah sim', 1, 1),
(387, 'Pode sair?', 1, 1),
(388, 'Rapidinho posso, já está tarde', 1, 1),
(389, 'Vamos chamar o João', 1, 1),
(390, 'Vamos', 1, 1),
(391, 'Jooooão', 1, 1),
(392, 'Eai pessoal', 1, 1),
(393, 'Temos algo para te contar', 1, 1),
(394, 'Entrem ai', 1, 1),
(395, 'Com licença', 1, 1),
(396, 'Gente, eu sei quem botou fogo nos pneus e está fazendo aquelas coisas com o lixo, plantas...', 1, 1),
(397, 'Quem?', 1, 1),
(398, 'O Charlie', 1, 1),
(399, 'Nossa!', 1, 1),
(400, 'Ele é xarope, mas não pensava que ele fosse capaz de tanta maldade', 1, 1),
(401, 'Como você descobriu isso?', 1, 1),
(402, 'Estávamos brincando de esconde – esconde e ele derrubou um isqueiro', 1, 1),
(403, 'Nossa!', 1, 1),
(404, 'Amanhã encurralamos ele', 1, 1),
(405, 'Ele tem que parar', 1, 1),
(406, 'Se ele não quer ajudar Héliopolis pelo menos não atrapalha né', 1, 1),
(407, 'Verdade!', 1, 1),
(408, 'Charlie', 1, 1),
(409, 'Oi', 1, 1),
(410, 'Nós sabemos de tudo', 1, 1),
(411, 'Sabemos o que anda fazendo', 1, 1),
(412, 'Como assim?', 1, 1),
(413, 'Você sabe', 1, 1),
(414, 'Sabemos que foi você que espalhou o lixo pela praça', 1, 1),
(415, 'Você destruiu as plantas da minha avó', 1, 1),
(416, 'Jogou o pneu onde chove  ', 1, 1),
(417, 'E colocou fogo depois', 1, 1),
(418, 'Vocês estão enganados, eu não fiz nada disso', 1, 1),
(419, 'Como você explica saber que estávamos ajudando a Avó da Babi?', 1, 1),
(420, 'E ter um isqueiro?', 1, 1),
(421, 'Sua avó contou pra minha mãe, por isso eu sabia', 1, 1),
(422, 'E o isqueiro, eu escondo pro meu pai não fumar mais', 1, 1),
(423, 'Então se não é você, quem pode ser?', 1, 1),
(424, 'Eu não sei, mas podemos descobrir', 1, 1),
(425, 'Como?', 1, 1),
(426, 'Bom não sei, talvez colocar mais lixo para fora e ficar espionando', 1, 1),
(427, 'É, é uma boa!', 1, 1),
(428, 'Desculpa Charlie, achamos que era você de verdade', 1, 1),
(429, 'Tudo bem, mas agora vamos descobrir quem é ', 1, 1),
(430, 'Não aparece ninguém', 1, 1),
(431, 'Charlie Charlie', 1, 1),
(432, 'Não sou eu, é sério', 1, 1),
(433, 'Pera, eu vi o lixo se mexendo', 1, 1),
(434, 'Kkkk Como assim?', 1, 1),
(435, 'Lixo não se mexe sozinho, vamos ver mais de perto', 1, 1),
(436, 'Gente, é um rato', 1, 1),
(437, 'Pega ele', 1, 1),
(438, 'Não consigo', 1, 1),
(439, 'Peguei!', 1, 1),
(440, 'Então é você!', 1, 1),
(441, 'Você quem está sujando nossa quebrada!', 1, 1),
(442, 'Me descobriram!', 1, 1),
(443, 'Você fala?', 1, 1),
(444, 'Que rato é você?', 1, 1),
(445, 'Não importa, deixa eu sair', 1, 1),
(446, 'Não sem nos dar explicação', 1, 1),
(447, 'Fala logo', 1, 1),
(448, 'Eu e meus amigos ratos, viemos até aqui porque nos falaram', 1, 1),
(449, ' que os adultos já não se importavam com a limpeza e o meio ambiente, ', 1, 1),
(450, 'mas não sabíamos que encontraríamos vocês', 1, 1),
(451, 'É lutamos para manter Heliópolis limpa e você e seu amigos chegam e querem sujar tudo', 1, 1),
(452, 'Achamos que vocês não iam perceber e iam colocar a culpa em algum adulto', 1, 1),
(453, 'Mas encontramos vocês, e para seu próprio bem e de seus amigos,', 1, 1),
(454, ' saiam daqui da nossa favela, agora!', 1, 1),
(455, 'Eu não acredito!', 1, 1),
(456, 'Nem eu', 1, 1),
(457, 'Era um rato esse tempo todo', 1, 1),
(458, 'E ele fala, que louco!', 1, 1),
(459, 'Charlie você provou ser leal, por isso te convidamos para fazer parte do FavelAção', 1, 1),
(460, 'O que é isso?', 1, 1),
(461, 'Te contamos, mas só na próxima fase...', 1, 1),
(462, 'Agora que descobrimos quem estava causando desordem aqui,', 1, 1),
(463, ' podemos deixar nossa quebrada ainda mais bonita', 1, 1),
(464, 'MISSÃO: Que tal fazermos uma horta vertical?', 1, 1),
(465, 'Vamos reutilizar as garrafas de plástico encontradas por Heliópolis?', 1, 1),
(466, 'Para concluir sua jornada no FavelAção, recolha das ruas e praças de Heliópolis,', 1, 1),
(467, '3 garrafas pet’s e vamos construir um  jardim vertical. ', 1, 1),
(468, 'Peça a ajuda de um adulto para os cortes e para colocar na parede. Boa sorte!', 1, 1),
(469, 'Você vai precisar de:', 1, 1),
(470, '3 Garrafas PET de dois litros (vazias e limpas)', 1, 1),
(471, 'Tesoura', 1, 1),
(472, 'Barbante  ou corda de varal', 1, 1),
(473, 'Terra e muda de planta.', 1, 1),
(474, 'Como fazer:', 1, 1),
(475, ' Todas garrafas devem ser cortadas da mesma forma, com uma espécie de janela,', 1, 1),
(476, ' que será a abertura por onde a planta irá crescer.', 1, 1),
(477, ' A distância entre a parte debaixo da garrafa e a abertura pode ser de “três dedos”', 1, 1),
(478, 'na parte de cima pode ser contado um palmo até o corte.', 1, 1),
(479, 'Fure a garrafa na região próxima às aberturas, na parte de cima e de baixo.', 1, 1),
(480, ' Será por este espaço que o cordão que segura as garrafas irá passar.', 1, 1),
(481, ' O ideal é que todas tenham marcações em distâncias equivalentes,', 1, 1),
(482, 'para ficarem bem parecidas quando forem penduradas na parede.', 1, 1),
(483, 'O fundo de todas as garrafas deve ter um furo, que permita a saída do excesso de água na terra.', 1, 1),
(484, 'Dê um nó no barbante ou corda de varal na altura em que a garrafa deverá ficar e passe pelos furos da garrafa.', 1, 1),
(485, 'Prenda o barbante ou corda de varal em um parafuso na parede,', 1, 1),
(486, ' sempre alinhadas, coloque terra, semente e cuide para as plantas crescerem saudáveis.', 1, 1),
(487, 'Muito bem! Agora seu ambiente com certeza ficou ainda mais bonito', 1, 1),
(488, 'Parabéns por ter cumprido todas missões!', 1, 1),
(489, 'Você se tornou um grande herói para nosso planeta!', 1, 1),
(490, 'Não esqueça os ratos podem voltar se não cuidarmos do meio ambiente,', 1, 1),
(491, 'Continue cuidando!', 1, 1),
(492, 'Agora acho que temos que ir para casa....', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `expressao`
--

CREATE TABLE `expressao` (
  `idExpressao` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `expressao`
--

INSERT INTO `expressao` (`idExpressao`, `descricao`) VALUES
(1, 'Triste'),
(2, 'Feliz'),
(3, 'Saudação'),
(4, 'Raiva'),
(5, 'Choro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `medalhas`
--

CREATE TABLE `medalhas` (
  `idmedalhas` int(11) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `medalha1` varchar(45) DEFAULT NULL,
  `medalha2` varchar(45) DEFAULT NULL,
  `medalha3` varchar(45) DEFAULT NULL,
  `medalha4` varchar(45) DEFAULT NULL,
  `medalha5` varchar(45) DEFAULT NULL,
  `medalha6` varchar(45) DEFAULT NULL,
  `medalha7` varchar(45) DEFAULT NULL,
  `medalha8` varchar(45) DEFAULT NULL,
  `medalha9` varchar(45) DEFAULT NULL,
  `medalha10` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `medalhas`
--

INSERT INTO `medalhas` (`idmedalhas`, `email`, `medalha1`, `medalha2`, `medalha3`, `medalha4`, `medalha5`, `medalha6`, `medalha7`, `medalha8`, `medalha9`, `medalha10`) VALUES
(2, 'devd8727@gmail.com', 'TRUE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE'),
(3, 'patricia.dstorres@hotmail.com', 'TRUE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `missao`
--

CREATE TABLE `missao` (
  `idmissao` int(11) NOT NULL,
  `tituloMissao` varchar(255) NOT NULL,
  `missao` varchar(500) NOT NULL,
  `personagem` varchar(255) NOT NULL,
  `expressao` varchar(20) DEFAULT NULL,
  `posicao` varchar(255) NOT NULL,
  `cenario` varchar(55) NOT NULL,
  `data` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mural`
--

CREATE TABLE `mural` (
  `idmural` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `imagem` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mural`
--

INSERT INTO `mural` (`idmural`, `nome`, `imagem`) VALUES
(1, 'Bárbara', 'mural1.jpg'),
(2, 'João', 'mural1.jpg'),
(3, 'Anna', 'mural1.jpg'),
(4, 'José', 'mural1.jpg'),
(5, 'Guilherme', 'mural1.jpg'),
(6, 'Ruan Lima Ribeiro', '43d107afa086281562c8636e0f3af8c3.jpg'),
(7, 'Ruan Lima Ribeiro', 'f58aec0b7b9c23bb201a5eac135ca395.png'),
(8, 'Ruan Lima Ribeiro', '4d3b150d588cc6cc665bdf733ab54d4d.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `personagens`
--

CREATE TABLE `personagens` (
  `idPersonagem` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `expressaoId` int(11) NOT NULL,
  `imagem` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `personagens`
--

INSERT INTO `personagens` (`idPersonagem`, `nome`, `expressaoId`, `imagem`) VALUES
(1, 'Hélio', 3, 'helioSaudacao.png'),
(2, 'João', 3, 'joaoSaudacao.png'),
(3, 'Babi', 2, 'babiFeliz.png'),
(4, 'Hélio', 2, 'helioFeliz.png'),
(5, 'Hélio', 1, 'helioTriste.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `savegame`
--

CREATE TABLE `savegame` (
  `idsavegame` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `missao1` varchar(45) DEFAULT NULL,
  `missao2` varchar(45) DEFAULT NULL,
  `missao3` varchar(45) DEFAULT NULL,
  `missao4` varchar(45) DEFAULT NULL,
  `missao5` varchar(45) DEFAULT NULL,
  `missao6` varchar(45) DEFAULT NULL,
  `missao7` varchar(45) DEFAULT NULL,
  `missao8` varchar(45) DEFAULT NULL,
  `missao9` varchar(45) DEFAULT NULL,
  `missao10` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `savegame`
--

INSERT INTO `savegame` (`idsavegame`, `email`, `missao1`, `missao2`, `missao3`, `missao4`, `missao5`, `missao6`, `missao7`, `missao8`, `missao9`, `missao10`) VALUES
(2, 'devd8727@gmail.com', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE'),
(3, 'patricia.dstorres@hotmail.com', 'TRUE', 'TRUE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `teste`
--

CREATE TABLE `teste` (
  `idteste` int(11) NOT NULL,
  `testecol` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `teste`
--

INSERT INTO `teste` (`idteste`, `testecol`) VALUES
(1, ''),
(2, ''),
(3, ''),
(4, 'TRUE'),
(5, 'TRUE'),
(6, 'TRUE'),
(7, 'TRUE'),
(8, 'TRUE'),
(9, 'TRUE'),
(10, 'TRUE'),
(11, 'TRUE'),
(12, 'TRUE'),
(13, 'TRUE'),
(14, 'TRUE'),
(15, 'TRUE'),
(16, 'TRUE'),
(17, 'TRUE'),
(18, 'TRUE'),
(19, 'TRUE'),
(20, 'TRUE'),
(21, 'TRUE'),
(22, 'TRUE'),
(23, 'TRUE'),
(24, 'TRUE'),
(25, 'TRUE'),
(26, 'TRUE'),
(27, 'TRUE'),
(28, 'TRUE');

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
  `senha` varchar(34) NOT NULL,
  `confirmarSenha` varchar(34) NOT NULL,
  `categoriaSecreta` varchar(55) NOT NULL,
  `respSecreta` varchar(55) NOT NULL,
  `apelido` varchar(255) NOT NULL,
  `imgAvatar` varchar(400) DEFAULT NULL,
  `data` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `dataNascimento`, `email`, `telefone`, `senha`, `confirmarSenha`, `categoriaSecreta`, `respSecreta`, `apelido`, `imgAvatar`, `data`) VALUES
(3, 'Patrícia Torres Graciano', '2013-10-29', 'patricia.dstorres@hotmail.com', '11-97589-3133', '5e8667a439c68f5145dd2fcbecf02209', '5e8667a439c68f5145dd2fcbecf02209', 'Super herói preferido', 'Mulher Maravilha', 'Pathy', 'perso2.png', '2021-03-06 22:51:17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuariosdeletados`
--

CREATE TABLE `usuariosdeletados` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `dataNascimento` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `senha` varchar(34) NOT NULL,
  `confirmarSenha` varchar(34) NOT NULL,
  `categoriaSecreta` varchar(55) NOT NULL,
  `respSecreta` varchar(55) NOT NULL,
  `apelido` varchar(255) NOT NULL,
  `imgAvatar` varchar(400) DEFAULT NULL,
  `data` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cenarios`
--
ALTER TABLE `cenarios`
  ADD PRIMARY KEY (`idCenario`);

--
-- Índices para tabela `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`idcontato`);

--
-- Índices para tabela `enredo`
--
ALTER TABLE `enredo`
  ADD KEY `fk_personagem` (`IdPersonagem`),
  ADD KEY `fk_cenarios` (`idCenario`);

--
-- Índices para tabela `expressao`
--
ALTER TABLE `expressao`
  ADD PRIMARY KEY (`idExpressao`);

--
-- Índices para tabela `medalhas`
--
ALTER TABLE `medalhas`
  ADD PRIMARY KEY (`idmedalhas`);

--
-- Índices para tabela `missao`
--
ALTER TABLE `missao`
  ADD PRIMARY KEY (`idmissao`);

--
-- Índices para tabela `mural`
--
ALTER TABLE `mural`
  ADD PRIMARY KEY (`idmural`);

--
-- Índices para tabela `personagens`
--
ALTER TABLE `personagens`
  ADD PRIMARY KEY (`idPersonagem`),
  ADD KEY `fk_expressao` (`expressaoId`);

--
-- Índices para tabela `savegame`
--
ALTER TABLE `savegame`
  ADD PRIMARY KEY (`idsavegame`);

--
-- Índices para tabela `teste`
--
ALTER TABLE `teste`
  ADD PRIMARY KEY (`idteste`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `cenarios`
--
ALTER TABLE `cenarios`
  MODIFY `idCenario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `contato`
--
ALTER TABLE `contato`
  MODIFY `idcontato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `expressao`
--
ALTER TABLE `expressao`
  MODIFY `idExpressao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `medalhas`
--
ALTER TABLE `medalhas`
  MODIFY `idmedalhas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `missao`
--
ALTER TABLE `missao`
  MODIFY `idmissao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mural`
--
ALTER TABLE `mural`
  MODIFY `idmural` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `personagens`
--
ALTER TABLE `personagens`
  MODIFY `idPersonagem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `savegame`
--
ALTER TABLE `savegame`
  MODIFY `idsavegame` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `teste`
--
ALTER TABLE `teste`
  MODIFY `idteste` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `enredo`
--
ALTER TABLE `enredo`
  ADD CONSTRAINT `fk_cenarios` FOREIGN KEY (`idCenario`) REFERENCES `cenarios` (`idCenario`),
  ADD CONSTRAINT `fk_personagem` FOREIGN KEY (`IdPersonagem`) REFERENCES `personagens` (`idPersonagem`);

--
-- Limitadores para a tabela `personagens`
--
ALTER TABLE `personagens`
  ADD CONSTRAINT `fk_expressao` FOREIGN KEY (`expressaoId`) REFERENCES `expressao` (`idExpressao`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Mar-2021 às 02:48
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.2

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
(1, 'comercio.gif', 'Rua com comercios'),
(2, 'dia.jpg', 'dia'),
(3, 'heliopolis.jpg', 'heliopolis'),
(4, 'indoPCasaNoite.jpg', 'indoPCasaNoite'),
(5, 'noite.jpg', 'noite'),
(6, 'ruaBabi.jpg', 'ruaBabi'),
(7, 'ruaComercio.jpg', 'ruaComercio'),
(8, 'ruaComLixo.jpg', 'ruaComLixo'),
(9, 'ruaFutebol.jpg', 'ruaFutebol'),
(10, 'ruaHelio.jpg', 'ruaHelio'),
(11, 'ruaIdaEscola.jpg', 'ruaIdaEscola'),
(12, 'ruaJoao.jpg', 'ruaJoao'),
(13, 'ruaDescida.jpg', 'ruaDescida'),
(14, 'ruaJogo.jpg', 'ruaJogo'),
(15, 'ruaVoltaEscola.jpg', 'ruaVoltaEscola'),
(16, 'salaAula.jpg', 'salaAula'),
(17, 'escola.jpg', 'Escola');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `enredo`
--

INSERT INTO `enredo` (`idenredo`, `frase`, `idCenario`, `IdPersonagem`) VALUES
(1, 'Oi, tudo bem? Prazer sou o Hélio!', 8, 1),
(2, 'Oi, Hélio, prazer!', 8, 2),
(3, 'Nunca te vi por aqui, você se mudou agora?', 8, 2),
(4, 'Mudei sim', 8, 2),
(5, 'Que legal você também vai estudar na EMEI Cidade do Sol?', 8, 2),
(6, 'Sim, isso mesmo!', 8, 2),
(7, 'Também estudo lá', 8, 2),
(8, ' Se quiser eu posso te mostrar Heliópolis, ', 8, 2),
(9, 'onde comprar pipa, açaí, essas coisas', 8, 2),
(10, 'Nossa! Quero sim, vai ser bem legal.', 8, 2),
(11, 'Ai!', 8, 2),
(12, 'O que aconteceu?', 8, 3),
(13, 'Acho que pisei em um prego.', 8, 3),
(14, 'Nossa! Você se machucou?', 8, 3),
(15, 'Ainda bem que não, só furou meu chinelo.', 8, 3),
(16, 'Menos mal! Infelizmente essas coisas acontecem mesmo,', 8, 4),
(17, ' temos que prestar muita atenção onde pisamos,', 8, 4),
(18, ' os adultos jogam muitos lixos na rua.', 8, 4),
(19, 'Isso não é legal!', 8, 3),
(20, 'Não mesmo, por isso eu e meus amigos criamos o FavelAção.', 1, 3),
(21, 'O que é isso?', 1, 2),
(22, 'Um grupo, formado por crianças para ajudar o meio ambiente.', 1, 2),
(23, ' Você poderia participar!', 1, 2),
(24, 'Hum! Mas o que é meio... Meio o que mesmo?', 1, 2),
(25, 'Ambiente! É o local onde se desenvolve a vida no planeta,', 1, 2),
(26, ' é a natureza com todos os seres vivos e não vivos que moram aqui.', 1, 2),
(27, 'Ah entendi, é o local onde vivemos.', 1, 2),
(28, 'Isso! E ai? Topa?', 1, 2),
(29, 'Topo sim!', 1, 2),
(30, 'Certo, mas antes você tem que concluir uma missão.', 1, 2),
(31, 'Ok, qual missão?', 1, 2),
(32, 'MISSÃO: Você tem que mostrar pra sua família como separar o lixo reciclável,', 1, 2),
(33, ' fazer essa separação por pelo menos uma semana,e colocar o lixo onde a coleta seletiva possa pegar.', 1, 2),
(34, 'Podemos chamar essa brincadeira de separar recicláveis,', 1, 2),
(35, ' com ela diminuímos as retiradas de matéria-prima da natureza,', 1, 2),
(36, 'geramos economia de água e energia e reduzimos a disposição inadequada do lixo.', 1, 2),
(37, ' É maravilhoso né?', 1, 2),
(38, 'Mas você sabe quais são os lixos recicláveis.', 1, 2),
(39, 'Não sei, quais são?', 1, 2),
(40, 'Temos muitos, mas os materiais mais reciclados são o vidro, o metal, o papel e o plástico.', 1, 2),
(41, 'Por exemplo: Garrafas de vidro, latinhas de alumínio,', 1, 2),
(42, 'embalagens de leite e garrafas de refrigerante.', 1, 2),
(43, 'Nossa! Quanta coisa.', 1, 2),
(44, 'Vou já contar pra minha família!', 1, 2),
(45, 'Caixa de leite é feita de papel, plástico e alumínio, portanto ela é reciclável?', 1, 8),
(46, 'Parabéns! Agora você faz parte da turma do FavelAção.', 1, 7),
(47, 'Teremos muito trabalho pela frente...', 14, 2),
(48, 'Mas antes de começar quero te apresentar para a turma.', 14, 2),
(49, 'Essa é a Babi, ela contribui muito no FavelAção.', 14, 17),
(50, 'Esse é o João, pensa num menino gente fina, que ajuda demais.', 14, 13),
(51, 'Olá', 14, 2),
(52, 'Que bom ter você com a gente, ajuda nunca é demais! Estamos precisando mesmo.', 14, 17),
(53, 'Tenho que ir para casa, nos vemos por ai, tchau tchau!', 14, 26),
(54, 'Tchau', 14, 2),
(55, 'Tchau', 14, 17),
(56, 'Oi Hélio, bom dia! Tudo bem? ', 2, 25),
(57, 'Eu estou ótimo e você ? ', 13, 2),
(58, 'Não dormi direito,  muita ansiedade para o meu primeiro dia na escola ', 13, 2),
(59, 'Ah relaxa, vão te receber bem.', 13, 2),
(60, ' Deixa eu perguntar você não contou pra sua mãe que faz parte do FavelAção não né? ', 11, 8),
(61, 'Não, por quê? ', 11, 8),
(62, 'Esqueci de falar, é segredo,', 11, 9),
(63, 'os adultos não entendem muito isso de cuidar do meio ambiente', 11, 9),
(64, 'Por que será né, do jeito que você fala, essas ações ajudam muito eles', 11, 3),
(65, 'Ah seila, deve ser preguiça ', 11, 3),
(66, 'Vixi minha mãe sempre fala que preguiça é ruim, ', 11, 3),
(67, 'principalmente quando eu não arrumo minha cama', 11, 3),
(68, 'Minha avó fala que devemos começar o dia arrumando a cama para ter um dia bom,', 11, 3),
(69, ' eu arrumo né, vou arriscar nada', 11, 2),
(70, 'Kkkkkkkk', 11, 2),
(71, 'É aqui, essa é nossa escola, você vai curtir ', 11, 2),
(72, 'Valeu, minha mãe  disse que eu tenho que falar com a diretora,', 17, 2),
(73, ' você sabe onde ela fica? ', 17, 2),
(74, 'Humm, por ali, entra a direita na última porta ', 17, 8),
(75, 'Ah valeu, vamos voltar juntos né? ', 17, 2),
(76, 'Opa, claro eu te espero, temos uma missão hoje ', 17, 2),
(77, 'Beleza, eu vou lá, se não vou me atrasar ', 17, 2),
(78, 'Até depois !', 17, 2),
(79, 'Até! ', 17, 2),
(80, 'Oi, eu sou a professora de vocês, pode sentar ali do lado do Hélio', 16, 22),
(81, 'Hélio?  Nossa cara que legal, estamos na mesma sala!', 16, 2),
(82, 'Poxa, que dahora!', 16, 2),
(83, 'Bora para casa, para depois fazermos a missão de hoje?', 15, 2),
(84, 'Claro!', 15, 2),
(85, 'Você sabia que nós temos a política dos 3 R’s da sustentabilidade?', 15, 2),
(86, ' Ela deve ser aplicada em ordem de importância, assim : reduzir, reutilizar e reciclar. ', 15, 2),
(87, 'Reduzir o consumo ao máximo, reutilizar produtos e materiais enquanto puderem ser reutilizados e, ', 15, 2),
(88, 'por último, reciclar aqueles que tiverem chegado ao fim de sua vida útil.', 15, 2),
(89, 'Pensando nisso, que tal reutilizarmos algum brinquedo?', 15, 2),
(90, 'MISSÃO: Para completar a missão encontre algum brinquedo ou livro', 15, 2),
(91, ' que você não brinca mais e doe a algum amiguinho.', 15, 2),
(92, ' Assim você estará REUTILIZANDO e fazendo outra criança feliz', 15, 2),
(93, 'Restar faz parte da política dos 3 R’s?', 15, 8),
(94, 'Ajudar o meio ambiente e os outros faz bem!  Bom trabalho!', 15, 7),
(95, 'Lembra que eu te expliquei o que é meio ambiente?', 15, 2),
(96, 'Vamos relembrar...', 15, 2),
(97, 'Meio ambiente é o local onde se desenvolve a vida na terra, ou seja,', 15, 2),
(98, ' é a natureza com todos os seres vivos e não vivos que nela habitam e interagem.', 15, 2),
(99, 'MISSÃO: Para essa missão, você deve desenhar algo que te lembre o meio ambiente', 15, 2),
(100, 'Acho que você vai demorar um pouquinho para pensar no que desenhar,', 15, 2),
(101, ' eu tenho que ajudar minha mãe em umas coisas em casa. ', 15, 8),
(102, 'Nos vemos amanhã!', 15, 8),
(103, 'Tá bom Hélio, boa tarde!', 15, 2),
(104, 'Boa tarde, até mais!!', 15, 2),
(105, 'Depois de desenhar nos envie, por esse botão logo abaixo, Vamos lá!', 15, 2),
(106, 'Agora responda, meio ambiente é onde vivemos?', 15, 8),
(107, 'Parabéns!', 15, 6),
(108, 'Oi', 10, 1),
(109, 'Oi Hélio, você não foi para a escola hoje, aconteceu alguma coisa?', 10, 2),
(110, 'Desculpa não avisar, mas você acredita que a pia da cozinha entupiu?', 10, 3),
(111, ' Precisei ajudar minha mãe, meu pai ia trabalhar e minha avó é de idade.', 10, 3),
(112, 'Nossa! Foi nada! Mas entupiu muito?', 10, 3),
(113, 'Sim, mas já resolvemos. Acho que foi óleo de cozinha,', 10, 3),
(114, 'mas estranho porque eu já falei pra minha mãe que não pode jogar óleo no ralo da pia', 10, 8),
(115, 'Não pode?', 10, 8),
(116, 'Não, o óleo de cozinha descartado de forma incorreta contamina nosso meio ambiente', 10, 8),
(117, ' podendo poluir as águas, o solo e até mesmo a atmosfera (camada de ar que envolve a Terra)', 10, 8),
(118, 'Vamos fazer nossa parte e descarta-lo de forma correta!', 10, 2),
(119, 'MISSÃO: Fale para sua família do mal que o mau descarte do óleo de cozinha pode causar,', 10, 2),
(120, 'e pede para um adulto despejar o óleo que não será mais utilizado em uma garrafa pet,', 10, 2),
(121, 'vazia e limpa, por exemplo de amaciante.', 10, 2),
(122, 'Depois acompanhado de um adulto entregue a garrafa com o óleo', 10, 2),
(123, 'a uma pessoa que queira reaproveita-lo, por exemplo, fazendo sabão em barra.', 10, 2),
(124, 'É verdade que o óleo de cozinha mal descartado pode poluir  as águas?', 10, 8),
(125, 'Uau! Parabéns você cumpriu a missão com sucesso!', 10, 7),
(126, 'Mas e aí vamos brincar?', 10, 5),
(127, 'Demoro!', 10, 2),
(128, 'E aí Charlie, podemos entrar?', 9, 2),
(129, 'Hum, sei não, estamos completos', 9, 23),
(130, 'Mas o que que tem? Revezamos', 9, 2),
(131, 'Ok, mas se der uma de frango, sai fora hein', 9, 23),
(132, 'Foi divertido!', 9, 2),
(133, 'Foi mesmo, 8 a 5 kkkk', 9, 7),
(134, 'Qual é a do Charlie?', 9, 2),
(135, 'Sei lá viu, não liga para ele não, ele é meio chatinho assim mesmo', 9, 8),
(136, 'Entendi, ele sabe do FavelAção?', 9, 2),
(137, 'Xiuuuu! Não, e nem vai saber', 9, 9),
(138, 'Não está mais aqui quem falou', 9, 9),
(139, 'Vou entrar, boa noite Hélio!', 13, 2),
(140, 'Boa noite!', 5, 1),
(141, 'Vamos esperar o João, lembra dele?', 15, 2),
(142, 'Opa! Lembro sim', 15, 2),
(143, 'Eai mano?', 15, 1),
(144, 'Eai, está gostando da escola?', 15, 13),
(145, 'Sim, se acredita que estou na mesma sala que o Hélio?', 15, 2),
(146, 'Que dahora', 15, 2),
(147, 'Você contou Hélio?', 15, 14),
(148, 'O que? Ahhh! Ainda não', 15, 3),
(149, 'O que gente?', 15, 3),
(150, 'Estão acontecendo umas coisas estranhas ultimamente', 15, 8),
(151, 'Tipo o que? Tem a ver com o FavelAção?', 15, 8),
(152, 'Fala baixo, as pessoas não conhecem o grupo', 15, 9),
(153, 'A gente ajuda, mas as pessoas não sabem?', 15, 9),
(154, 'Não, não contamos. Já dizia minha avó, o que a mão direita faz,', 15, 2),
(155, ' a esquerda não precisa ficar sabendo', 15, 2),
(156, 'Aos poucos a quebrada está se acostumando com novos hábitos', 15, 26),
(157, 'Entendi, desculpa! Mas o que está acontecendo?', 15, 2),
(158, 'Ontem eu coloquei uma caixa com embalagens recicláveis na frente de casa,', 15, 14),
(159, ' porque a Dona Maria passa e pega para juntar uma grana, mas quando eu sai para brincar,', 15, 14),
(160, ' estava tudo espalhado na pracinha', 15, 14),
(161, 'Nossa, quem fez isso?', 15, 8),
(162, 'É o que temos que descobrir!', 15, 16),
(163, 'Que horas você colocou as embalagens para fora?', 15, 8),
(164, 'Acho que umas seis horas da tarde, ela pega de manhã', 15, 14),
(165, 'Hum, entendi', 15, 3),
(166, 'Bom gente, vou almoçar vejo vocês daqui a pouco, tragam luvas', 15, 13),
(167, 'Beleza!', 15, 2),
(168, 'Luvas? ', 15, 2),
(169, 'É vamos precisar', 15, 26),
(170, 'Ok', 15, 2),
(171, 'Eai?', 1, 1),
(172, 'Eai?', 1, 13),
(173, 'MISSÃO: Sua missão será recolher todo lixo reciclável que encontrar na pracinha,', 1, 2),
(174, 'lembre-se de usar luvas.  Coloque em um saco ou caixa e jogue no lugar correto.', 1, 2),
(175, 'Além de recolher os recicláveis você tem que descobrir onde pode jogar lixo reciclável, perto da pracinha', 1, 2),
(176, 'Lixo reciclável é jogado separado de lixo comum?', 1, 8),
(177, 'Nossa pessoal, pegamos tudo! Parabéns', 1, 15),
(178, 'Valeu gente pela ajuda, até amanhã!', 12, 13),
(179, 'Até!', 12, 2),
(180, 'Até!', 12, 2),
(181, 'Bom dia, tudo bem?', 2, 1),
(182, 'Bom dia Hélio, estou triste, meu peixinho morreu', 2, 3),
(183, 'Eita, que triste, sinto muito', 13, 3),
(184, 'Valeu!', 13, 3),
(185, 'Falando nisso, você sabe qual o lixo que mais faz mal aos animais marinhos?  ', 13, 8),
(186, 'Não sei não', 13, 8),
(187, 'O plástico nos mares é um dos piores poluidores da atualidade.', 13, 2),
(188, 'A presença desse tipo de resíduo prejudica a vida aquática,', 13, 2),
(189, 'pois animais marinhos podem confundi-los com comida ou serem sufocados.', 13, 2),
(190, ' Isso acontece porque todo plástico no oceano tem uma fina camada de micróbios,', 13, 2),
(191, ' normalmente chamada de \'plastisfério\'.', 13, 2),
(192, 'Serio? Muitos peixes morrem por causa do plástico?', 13, 2),
(193, 'Sim, infelizmente, nós não temos noção do mal que fazemos ao consumir produtos do tipo', 13, 2),
(194, 'E o que fazemos para ajudar Hélio?', 13, 2),
(195, 'MISSÃO: Pensando nisso vamos selecionar outra opção além de plástico que podemos utilizar', 11, 2),
(196, 'Na próxima vez que for ao mercado com um adulto, leve Sacola Retornável,', 11, 2),
(197, 'assim você e sua família não irão precisar das sacolas plásticas e vamos ajudar a salvar muitos peixinhos.', 11, 2),
(198, 'Papelão é o material que mais faz mal aos animais marinhos?', 11, 8),
(199, 'Parabéns pela ajuda! Com certeza, os animais marinhos agradecem!', 11, 7),
(200, 'Mas agora vamos para a aula', 17, 2),
(201, 'Está melhor?', 17, 2),
(202, 'Estou sim, mas triste por todos bichinhos do mar', 17, 2),
(203, 'Então já sabe o que pode fazer para ajudar, reduzir o plástico', 17, 2),
(204, 'Ô Babi', 17, 2),
(205, 'Oi Hélio, tudo bem com vocês?', 17, 17),
(206, 'Vamos jogar alguma coisa lá na rua hoje?', 17, 2),
(207, 'Nossa Hélio, não dá. Acredita que alguém entrou no quintal e destruiu as plantinhas da minha avó? Ela está bem tristinha, vou ajuda-la', 17, 20),
(208, 'Como assim? Outro dia foi o lixo do João, hoje as plantas da sua avó, está muito estranho tudo isso', 17, 8),
(209, 'Que chato Babi, se quiser posso ajudar! ', 17, 3),
(210, 'Ai seria ótimo', 17, 21),
(211, 'Se não tiver problema, vou também', 17, 2),
(212, 'Problema nenhum, toda ajuda é bem vinda!', 17, 18),
(213, 'Quem sabe eu não acho alguma pista', 17, 8),
(214, 'Obrigada por virem meninos', 14, 28),
(215, 'Que isso Dona Isaura, sabe que pode contar sempre com a gente', 14, 2),
(216, 'Sabiam que as plantas são muito importantes, porque nos dão ar puro para respirar?', 14, 28),
(217, 'A maioria das plantas são compostas por várias partes,', 14, 28),
(218, 'a raiz por onde se alimenta e se segura à terra, o caule que mantém a planta direita e transporta a água', 14, 28),
(219, 'e os nutrientes a todas as partes da planta e folhas por onde respiram', 14, 28),
(220, 'Que legal! Por isso árvores são tão importantes', 14, 2),
(221, 'MISSÃO: Para ganhar mais um medalha complete a frase plantando um broto de feijão. ', 14, 28),
(222, 'Você vai precisar de:', 14, 28),
(223, 'Um copo plástico descartável', 14, 28),
(224, 'Cerca de 5 gramas de algodão', 14, 28),
(225, 'Um grão de feijão', 14, 28),
(226, 'Água', 14, 28),
(227, 'Como plantar:', 14, 28),
(228, 'Primeiro você precisa umedecer o algodão com a água.', 14, 28),
(229, 'Depois forre o fundo do copo descartável com o algodão umedecido.', 14, 28),
(230, 'Coloque seu feijão sobre o algodão, coloque o copo em um local iluminado', 14, 28),
(231, ' e não deixe o algodão secar. Vá colocando água sempre e aos pouquinhos.', 14, 28),
(232, 'Mais ou menos em 3 dias a raiz começará a aparecer e um pouco mais tarde seu feijão vai começar a nascer.', 14, 28),
(233, 'É verdade que as plantas geram ar puro?', 14, 28),
(234, 'Muito obrigada queridos, pela ajuda', 14, 28),
(235, 'A senhora realmente não viu nada Dona Isaura?', 14, 8),
(236, 'Não vi Hélio', 14, 28),
(237, 'É Babi, assim vai ser difícil achar o culpado', 14, 3),
(238, 'Verdade! Obrigada pela ajuda gente', 14, 17),
(239, 'Imagina Babi, precisando só chamar', 14, 2),
(240, 'Que estranho né Hélio', 14, 8),
(241, 'Bota estranho nisso', 14, 8),
(242, 'Olha os meninos jogando bola, vamos lá!', 9, 2),
(243, 'Bora!', 9, 2),
(244, 'Eai mano?', 9, 2),
(245, 'Plantando flores agora kkkk', 9, 23),
(246, 'Estávamos ajudando nossa amiga, algum problema? Mas quem te falou?', 9, 4),
(247, 'Um passarinho me contou', 9, 23),
(248, 'Hum, entendi, mas e aí está com medo de perder de novo?', 9, 2),
(249, 'Aquele dia vocês tiveram sorte', 9, 23),
(250, 'Vamos ver então', 9, 2),
(251, 'É acho que não foi sorte não kkk', 4, 7),
(252, 'Você achou estranho o Charlie saber que estávamos ajudando a vó da Babi?', 4, 8),
(253, 'Não, não parei para pensar nisso, talvez ela falou para ele', 4, 8),
(254, 'Eles não conversam, a Babi não suporta o Charlie', 4, 8),
(255, 'Hum então tá estranho', 4, 8),
(256, 'Nossa o jogo acabou mais tarde hoje, minha mãe vai brigar comigo, deixa eu entrar, boa noite', 4, 1),
(257, 'Boa noite!', 5, 1),
(258, 'Hoje podíamos jogar aquele jogo hein Babi?', 17, 2),
(259, 'Hoje pode ser sim!', 17, 15),
(260, 'E vocês podem?', 17, 2),
(261, 'Eu posso!', 17, 13),
(262, 'Eu tenho que fazer o dever, mas faço amanhã', 17, 2),
(263, 'Beleza então, depois do almoço, podem ir na minha casa', 17, 2),
(264, 'Gente, o que é aquilo?', 15, 19),
(265, 'Parece pneu', 10, 31),
(266, 'Não acredito!', 10, 14),
(267, 'Sério? Tem uma placa bem grande escrito proibido jogar lixo', 10, 4),
(268, 'O pessoal não respeita mesmo', 10, 4),
(269, 'Pneu pode trazer doenças', 10, 14),
(270, 'Por causa do formato dele é fácil ficar com água parada', 10, 14),
(271, 'e assim pode trazer dengue entre outras doenças.', 10, 14),
(272, 'Ai gente, mas uma missão pro FavelAção!', 10, 3),
(273, 'Nosso jogo vai ficar pra próxima, depois do almoço vamos tirar isso daqui e jogar no local certo, onde o lixeiro pode pegar!', 10, 3),
(274, 'Minha mãe faz casinha de cachorro com pneu careca', 10, 3),
(275, 'Ai vamos ajudar limpando isso, e trazendo uma grana para sua mãe, fecho?', 10, 3),
(276, 'Fechado gente', 10, 18),
(277, 'Gente olha aqui', 10, 14),
(278, 'Nossa! Tem até rato', 10, 31),
(279, 'Ai credo!', 10, 31),
(280, 'Pode até trazer leptospirose', 10, 3),
(281, 'Lep ... o que?', 10, 3),
(282, 'Leptospirose a doença causada por animais, como ratos', 10, 3),
(283, 'A professora estava explicando esses dias mesmo', 10, 3),
(284, 'É uma infecção aguda', 10, 14),
(285, 'Nossa!', 10, 14),
(286, 'Gente é bem sério', 10, 3),
(287, 'Vamos pedir ajuda de adultos e tragam luvas', 10, 3),
(288, 'Beleza Hélio', 10, 3),
(289, 'Até já', 10, 18),
(290, 'Héeeeelio, Héeeelio', 10, 32),
(291, 'Que foi gente?', 10, 31),
(292, 'Olha só, botaram fogo nos pneus', 10, 14),
(293, 'Como assim fogo?', 10, 4),
(294, 'Pois é, além das doenças, também poluição', 10, 19),
(295, 'Tão de brincadeira', 10, 6),
(296, 'Vamos chamar os bombeiros', 10, 19),
(297, 'Vou pedir para minha avó chamar', 10, 3),
(298, 'Gente, aquele ali não é o Charlie?', 10, 16),
(299, 'É sim!', 10, 16),
(300, 'Chaaarlie, Chaaalie', 10, 16),
(301, 'Oi', 10, 29),
(302, 'Você viu que fez isso?', 10, 16),
(303, 'Não, não vi, cheguei agora', 10, 33),
(304, 'Entendi, valeu', 10, 14),
(305, 'Nossa gente, que perigo', 10, 14),
(306, 'Né, não sei no que a pessoa estava pensando', 10, 3),
(307, 'Hélio, quando você entrou pra chamar sua avó,', 10, 16),
(308, 'nós vimos o Charlie e fomos perguntar pra ele se viu quem fez aquilo', 10, 16),
(309, 'O Charlie? E ele viu?', 10, 3),
(310, 'Não, disse que tinha acabado de chegar', 10, 16),
(311, 'Sei, parece que ele sabe de tudo ', 10, 8),
(312, 'É mesmo ', 10, 16),
(313, 'É gente, tivemos uma tarde agitada', 10, 3),
(314, 'Ainda bem que tudo se resolveu ', 10, 18),
(315, 'Ainda bem mesmo', 10, 2),
(316, 'Mas ainda estou achando estranho, tudo isso acontecendo', 10, 8),
(317, 'Nem me fale Hélio, vamos ficar de olho', 10, 8),
(318, 'Podemos jogar amanhã?', 10, 2),
(319, 'Eu tenho que fazer o dever de casa galera, fica pra próxima', 10, 2),
(320, 'Entendi, tudo bem!', 10, 2),
(321, 'Amanhã vou com minha avó no centro', 10, 17),
(322, 'Tudo bem!', 10, 2),
(323, 'E você João?', 10, 2),
(324, 'Vou ficar com meu pai, ele está de folga amanhã', 10, 15),
(325, 'Okok', 10, 2),
(326, 'MISSÃO: Agora que você sabe que água parada pode trazer doença,', 10, 2),
(327, ' retire todas embalagens e tudo que pode ficar com água parada do ar livre.', 10, 2),
(328, ' Coloque em local coberto, onde não pode cair água da chuva por exemplo.', 10, 2),
(329, 'Deixar água parada permite ambiente propício para a criação de mosquitos,', 10, 8),
(330, ' inclusive o mosquito da dengue?', 10, 8),
(331, 'Uau! Parabéns! Assim você se protege e protege todos ao seu redor', 10, 7),
(332, ' de pegar doença causada por água parada', 10, 7),
(333, 'Tchau gente ', 10, 13),
(334, 'Tchau', 10, 1),
(335, 'Boa noite!', 5, 17),
(336, 'Héliooo', 10, 25),
(337, 'Oi, ', 10, 2),
(338, 'Cara eu não estou conseguindo fazer o dever de casa', 10, 2),
(339, 'O das cores das lixeiras ?', 10, 2),
(340, 'Sim', 10, 2),
(341, 'A professora explicou, mas eu esqueci', 10, 2),
(342, 'Quer ajuda?', 10, 2),
(343, 'Se você puder, eu quero sim', 10, 2),
(344, 'Senta ai na calçada', 10, 2),
(345, 'Eita, quase cai!', 10, 2),
(346, 'Beleza, vamos lá! Em muitos lugares tem lixeiras com a cor de cada material,', 10, 2),
(347, 'facilita a separação do lixo. Na lata de lixo azul jogamos papel e papelão', 10, 2),
(348, 'na vermelha, plástico', 10, 2),
(349, ' na verde , vidro', 10, 2),
(350, ' e na amarela, metal.', 10, 2),
(351, 'Ai é só pintar cada lixeira com a cor certa.', 10, 2),
(352, ' Temos feito um bom trabalho, vejo melhoras em Heliópolis,', 10, 2),
(353, 'Na próxima vez que você ver latas de lixos com essas cores, você vai saber onde jogar o seu lixo.', 10, 2),
(354, 'Muito obrigada Hélio, me ajudou demais', 10, 2),
(355, 'Imagina, sempre que precisar pode me chamar.', 10, 2),
(356, 'Terminei antes que eu imaginava, podemos brincar', 10, 2),
(357, 'Verdade!', 10, 2),
(358, 'MISSÃO: Conte para pelo menos um amigo qual a cor da lixeira de cada lixo reciclável.', 10, 2),
(359, 'Devemos jogar metal na lixeira verde?', 10, 8),
(360, 'Muito bem! Agora você sabe a cor certa para o descarte de cada lixeira de lixo.', 10, 7),
(361, 'Podemos brincar de esconde- esconde, vamos ver se tem crianças na rua', 10, 5),
(362, 'Faz tempo que eu não brinco de esconde - esconde, vamos sim', 10, 5),
(363, 'Oi Emily, bora brincar de esconde – esconde?', 9, 2),
(364, 'Íamos jogar bola, mas jogamos direto, vou chamar o pessoal!', 9, 30),
(365, 'Eai mano?', 9, 2),
(366, 'Eai!', 9, 29),
(367, 'Bora brincar!', 9, 2),
(368, 'Dois ou um?', 9, 29),
(369, 'Demorou', 9, 2),
(370, 'Charlie você deixou alguma coisa, seu isqueiro. Isqueiro?', 9, 8),
(371, 'Valeu', 9, 29),
(372, 'Por que você carrega um isqueiro?', 9, 8),
(373, 'Não é da sua conta!', 9, 23),
(374, 'O Charlie estava com um isqueiro hoje', 9, 8),
(375, 'Por quê?', 9, 8),
(376, 'Ele não disse, isso faz eu ter certeza que ele está fazendo essas coisas com o lixo', 9, 8),
(377, 'Verdade, foi ele quem colocou fogo no pneu', 9, 8),
(378, 'Vamos ir contar pro pessoal!', 9, 3),
(379, 'Baaaaabi', 14, 31),
(380, 'Ela ia sair com a avó dela, será que já voltou', 14, 31),
(381, 'Não sei', 14, 31),
(382, 'Oi, gente, eu falei que não ia conseguir brincar hoje', 14, 21),
(383, 'Não é para brincar, temos algo para te contar', 14, 2),
(384, 'Para você e o João', 14, 2),
(385, 'Ah sim', 14, 17),
(386, 'Pode sair?', 14, 2),
(387, 'Rapidinho posso, já está tarde', 14, 17),
(388, 'Vamos chamar o João', 14, 2),
(389, 'Vamos', 14, 17),
(390, 'Jooooão', 12, 31),
(391, 'Eai pessoal', 12, 13),
(392, 'Temos algo para te contar', 12, 3),
(393, 'Você não vai acreditar!', 12, 3),
(394, 'Falem logo!', 12, 14),
(395, 'Gente, eu sei quem botou fogo nos pneus e está fazendo aquelas coisas com o lixo, plantas...', 12, 31),
(396, 'Quem?', 12, 16),
(397, 'O Charlie', 12, 31),
(398, 'Nossa!', 12, 26),
(399, 'Ele é xarope, mas não pensava que ele fosse capaz de tanta maldade', 12, 32),
(400, 'Como você descobriu isso?', 12, 16),
(401, 'Estávamos brincando de esconde – esconde e ele derrubou um isqueiro', 12, 31),
(402, 'Nossa!', 12, 32),
(403, 'Amanhã encurralamos ele', 12, 4),
(404, 'Ele tem que parar', 12, 14),
(405, 'Se ele não quer ajudar Héliopolis pelo menos não atrapalha né', 12, 19),
(406, 'Verdade!', 12, 26),
(407, 'Charlie', 7, 4),
(408, 'Oi', 7, 29),
(409, 'Nós sabemos de tudo', 7, 34),
(410, 'Sabemos o que anda fazendo', 7, 4),
(411, 'Como assim?', 7, 33),
(412, 'Você sabe', 7, 4),
(413, 'Sabemos que foi você que espalhou o lixo pela praça', 7, 4),
(414, 'Você destruiu as plantas da minha avó', 7, 34),
(415, 'Jogou o pneu onde chove  ', 7, 14),
(416, 'E colocou fogo depois', 7, 4),
(417, 'Vocês estão enganados, eu não fiz nada disso', 7, 33),
(418, 'Como você explica saber que estávamos ajudando a Avó da Babi?', 7, 4),
(419, 'E ter um isqueiro?', 7, 4),
(420, 'Sua avó contou pra minha mãe, por isso eu sabia', 7, 33),
(421, 'E o isqueiro, eu escondo pro meu pai não fumar mais', 7, 33),
(422, 'Então se não é você, quem pode ser?', 7, 8),
(423, 'Eu não sei, mas podemos descobrir', 7, 33),
(424, 'Como?', 7, 16),
(425, 'Bom não sei, talvez colocar mais lixo para fora e ficar espionando', 7, 33),
(426, 'É, é uma boa!', 7, 2),
(427, 'Desculpa Charlie, achamos que era você de verdade', 7, 2),
(428, 'Tudo bem, mas agora vamos descobrir quem é ', 7, 29),
(429, 'Não aparece ninguém', 8, 9),
(430, 'Charlie Charlie', 8, 4),
(431, 'Não sou eu, é sério', 8, 29),
(432, 'Pera, eu vi o lixo se mexendo', 8, 16),
(433, 'Kkkk Como assim?', 8, 8),
(434, 'Lixo não se mexe sozinho, vamos ver mais de perto', 8, 26),
(435, 'Gente, é um rato!', 8, 31),
(436, 'Pega ele', 8, 2),
(437, 'Não consigo', 8, 2),
(438, 'Peguei!', 8, 7),
(439, 'Então é você!', 8, 4),
(440, 'Você quem está sujando nossa quebrada!', 8, 4),
(441, 'Me descobriram!', 8, 24),
(442, 'Você fala?', 8, 8),
(443, 'Que rato é você?', 8, 16),
(444, 'Não importa, deixa eu sair', 8, 24),
(445, 'Não sem nos dar explicação', 8, 4),
(446, 'Fala logo', 8, 19),
(447, 'Eu e meus amigos ratos, viemos até aqui porque nos falaram', 8, 24),
(448, ' que os adultos já não se importavam com a limpeza e o meio ambiente, ', 8, 24),
(449, 'mas não sabíamos que encontraríamos vocês', 8, 24),
(450, 'É lutamos para manter Heliópolis limpa e você e seu amigos chegam e querem sujar tudo', 8, 4),
(451, 'Achamos que vocês não iam perceber e iam colocar a culpa em algum adulto', 8, 24),
(452, 'Mas encontramos vocês, e para seu próprio bem e de seus amigos,', 8, 4),
(453, ' saiam daqui da nossa favela, agora!', 8, 4),
(454, 'Eu não acredito!', 1, 21),
(455, 'Nem eu', 1, 26),
(456, 'Era um rato esse tempo todo', 1, 31),
(457, 'E ele fala, que louco!', 1, 31),
(458, 'Charlie você provou ser leal, por isso te convidamos para fazer parte do FavelAção', 1, 2),
(459, 'O que é isso?', 1, 29),
(460, 'Te contamos, mas só na próxima fase...', 1, 2),
(461, 'Agora que descobrimos quem estava causando desordem aqui,', 1, 2),
(462, ' podemos deixar nossa quebrada ainda mais bonita', 1, 2),
(463, 'MISSÃO: Que tal fazermos uma horta vertical? Vimos que as plantas nos dão ar puro, então além de decorar, vamos melhorar nosso ar', 1, 2),
(464, 'Vamos reutilizar as garrafas de plástico encontradas por Heliópolis?', 1, 2),
(465, 'Para concluir sua jornada no FavelAção, recolha das ruas e praças de Heliópolis,', 1, 2),
(466, '3 garrafas pet’s e vamos construir um  jardim vertical. ', 1, 2),
(467, 'Peça a ajuda de um adulto para os cortes e para colocar na parede. Boa sorte!', 1, 2),
(468, 'Você vai precisar de:', 1, 2),
(469, '3 Garrafas PET de dois litros (vazias e limpas)', 1, 2),
(470, 'Tesoura', 1, 2),
(471, 'Barbante  ou corda de varal', 1, 2),
(472, 'Terra e muda de planta.', 1, 2),
(473, 'Como fazer:', 1, 2),
(474, ' Todas garrafas devem ser cortadas da mesma forma, com uma espécie de janela,', 1, 2),
(475, ' que será a abertura por onde a planta irá crescer', 1, 2),
(476, ' A distância entre a parte debaixo da garrafa e a abertura pode ser de “três dedos”', 1, 2),
(477, 'na parte de cima pode ser contado um palmo até o corte', 1, 2),
(478, 'Fure a garrafa na região próxima às aberturas, na parte de cima e de baixo', 1, 2),
(479, ' Será por este espaço que o cordão que segura as garrafas irá passar', 1, 2),
(480, ' O ideal é que todas tenham marcações em distâncias equivalentes,', 1, 2),
(481, 'para ficarem bem parecidas quando forem penduradas na parede', 1, 2),
(482, 'O fundo de todas as garrafas deve ter um furo, que permita a saída do excesso de água na terra', 1, 2),
(483, 'Dê um nó no barbante ou corda de varal na altura em que a garrafa deverá ficar e passe pelos furos da garrafa', 1, 2),
(484, 'Prenda o barbante ou corda de varal em um parafuso na parede,', 1, 2),
(485, ' sempre alinhadas, coloque terra, semente e cuide para as plantas crescerem saudáveis', 1, 2),
(486, 'Muito bem! Agora seu ambiente com certeza ficou ainda mais bonito', 1, 2),
(487, 'Parabéns por ter cumprido todas missões!', 3, 7),
(488, 'Você se tornou um grande herói para nosso planeta!', 3, 7),
(489, 'Não esqueça os ratos podem voltar se não cuidarmos do meio ambiente,', 3, 2),
(490, 'Continue cuidando!', 3, 2),
(491, 'Agora acho que temos que ir para casa....', 3, 2),
(492, 'Aprendemos nessa missao a criar um jardim vertical, onde podemos plantar sementes de algumas plantas. Além de decoração as pantas são importantes pois produzem fumaça?', 3, 8),
(493, 'Parabéns, você realizou todas missões do FavelAção!', 3, 7);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `medalhas`
--

INSERT INTO `medalhas` (`idmedalhas`, `email`, `medalha1`, `medalha2`, `medalha3`, `medalha4`, `medalha5`, `medalha6`, `medalha7`, `medalha8`, `medalha9`, `medalha10`) VALUES
(8, 'cleber_batista2010@hotmail.com', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'FALSE'),
(9, 'leonardo.dstorres@hotmail.com', 'TRUE', 'TRUE', 'TRUE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE'),
(7, 'patricia.dstorres@hotmail.com', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE'),
(10, 'maria.eduarda@hotmail.com', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'FALSE'),
(11, 'leonardo.torres@hotmail.com', 'TRUE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `missao`
--

INSERT INTO `missao` (`idmissao`, `tituloMissao`, `missao`, `personagem`, `expressao`, `posicao`, `cenario`, `data`) VALUES
(1, 'ESCOLA', ' ', 'Babi', 'Feliz', 'Braço para baixo', '20140603_121337.jpg', '2021-03-10 10:54:36');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mural`
--

CREATE TABLE `mural` (
  `idmural` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `imagem` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mural`
--

INSERT INTO `mural` (`idmural`, `nome`, `imagem`) VALUES
(1, 'Bárbara', 'mural1.jpg'),
(2, 'João', 'mural1.jpg'),
(3, 'Anna', 'mural1.jpg'),
(4, 'José', 'mural1.jpg'),
(5, 'Guilherme', 'mural1.jpg'),
(33, 'Maria Eduarda Monteiro', '5779f7d04028f1830a81d37188b76d8c.png'),
(30, 'Cleber Batista Graciano', 'e25c2e042e40a90e4a2b6a9e12ba0d41.png'),
(31, 'Leonardo Torres', 'aaed13b3bb1bf653722a5094069cc432.jpg'),
(32, 'Cleber Batista Graciano', 'ebfb091839566678d891c2d702e3faa8.png');

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
(1, ' helioSaudacao.png', 2, 'helioSaudacao.png'),
(2, ' helioFeliz.png', 2, 'helioFeliz.png'),
(3, ' helioTriste.png', 2, 'helioTriste.png'),
(4, ' helioBravo', 2, 'helioBravo.png'),
(5, ' helioBrincando.png', 2, 'helioBrincando.png'),
(6, ' helioChorando.png', 2, 'helioChorando.png'),
(7, ' helioComemorando.png', 2, 'helioComemorando.png'),
(8, ' helioPensativo.png', 2, 'helioPensativo.png'),
(9, ' helioSilencioso.png', 2, 'helioSilencioso.png'),
(10, ' helioTriste.png', 2, 'helioTriste.png'),
(11, ' helioJoaoFutebol.png', 2, 'helioJoaoFutebol.png'),
(12, ' nada', 2, 'nada'),
(13, 'joaoSaudacao.png', 2, 'joaoSaudacao.png'),
(14, ' joaoAssustado.png', 2, 'joaoAssustado.png'),
(15, ' joaoComemorando.png', 2, 'joaoComemorando.png'),
(16, ' joaoPensativo.png', 2, 'joaoPensativo.png'),
(17, ' babiFeliz.png', 2, 'babiFeliz.png'),
(18, ' babiComemorando.png', 2, 'babiComemorando.png'),
(19, ' babiIndecisa.png', 2, 'babiIndecisa.png'),
(20, ' babiNegando.png', 2, 'babiNegando.png'),
(21, ' babiSurpresa.png', 2, 'babiSurpresa.png'),
(22, ' professora.png', 2, 'professora.png'),
(23, ' charlieSarcastico.png', 2, 'charlieSarcastico.png'),
(24, ' rato.png', 2, 'rato.svg'),
(25, 'vazio.png', 2, 'vazio.png'),
(26, 'JoaoSurpreso', 2, 'joaoSurpreso.png'),
(27, 'babiFlores.png', 2, 'babiFlores.png'),
(28, 'avoBabi.png', 2, 'avoBabi.png'),
(29, 'charlieFeliz.png', 2, 'charlieFeliz.png'),
(30, 'emilyFeliz.png', 2, 'emilyFeliz.png'),
(31, 'helioSurpreso.png', 2, 'helioSurpreso.png'),
(32, 'babiSurpresa.png', 2, 'babiSupresa.png'),
(33, 'charlieTriste.png', 2, 'charlieTriste.png'),
(34, 'babiBrava', 2, 'babiBrava.png');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `savegame`
--

INSERT INTO `savegame` (`idsavegame`, `email`, `missao1`, `missao2`, `missao3`, `missao4`, `missao5`, `missao6`, `missao7`, `missao8`, `missao9`, `missao10`) VALUES
(7, 'patricia.dstorres@hotmail.com', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE'),
(8, 'cleber_batista2010@hotmail.com', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE'),
(9, 'leonardo.dstorres@hotmail.com', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE'),
(10, 'maria.eduarda@hotmail.com', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE'),
(11, 'leonardo.torres@hotmail.com', 'TRUE', 'TRUE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `teste`
--

CREATE TABLE `teste` (
  `idteste` int(11) NOT NULL,
  `testecol` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `dataNascimento`, `email`, `telefone`, `senha`, `confirmarSenha`, `categoriaSecreta`, `respSecreta`, `apelido`, `imgAvatar`, `data`) VALUES
(7, 'Patricia Torres', '2017-10-29', 'patricia.dstorres@hotmail.com', '11-11111-1111', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Nome do seu animal de estimação', 'Rex', 'Pathy', 'perso2.png', '2021-03-09 22:36:53'),
(8, 'Cleber Batista Graciano', '2014-08-07', 'cleber_batista2010@hotmail.com', '11-11111-1111', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Nome do seu animal de estimação', 'Rex', 'Cleber', 'perso1.png', '2021-03-10 01:45:37'),
(9, 'Leonardo Torres', '2016-06-26', 'leonardo.dstorres@hotmail.com', '11-11111-1111', 'a390227cd31b9e771ebf4d1cf0c80ec8', 'a390227cd31b9e771ebf4d1cf0c80ec8', 'Nome do seu animal de estimação', 'Rex', 'Léo', 'perso3.png', '2021-03-10 02:03:36'),
(10, 'Maria Eduarda Monteiro', '2014-09-14', 'maria.eduarda@hotmail.com', '11-11111-1111', '2ee4746a6292524cf7e33319d27c2fd6', '2ee4746a6292524cf7e33319d27c2fd6', 'Super herói preferido', 'Hulk', 'Madu', 'perso2.png', '2021-03-11 13:38:42'),
(11, 'Leonardo Torres', '2012-06-26', 'leonardo.torres@hotmail.com', '11-11111-1111', 'a390227cd31b9e771ebf4d1cf0c80ec8', 'a390227cd31b9e771ebf4d1cf0c80ec8', 'Nome do seu animal de estimação', 'Rex', 'Léo', 'perso3.png', '2021-03-11 17:53:32');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuariosdeletados`
--

INSERT INTO `usuariosdeletados` (`id`, `nome`, `dataNascimento`, `email`, `telefone`, `senha`, `confirmarSenha`, `categoriaSecreta`, `respSecreta`, `apelido`, `imgAvatar`, `data`) VALUES
(5, 'Patricia Torres', '2013-10-29', 'patricia.dstorres@hotmail.com', '11-11111-1111', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', 'Nome do seu animal de estimação', 'Rex', 'Pathy', 'perso2.png', '2021-03-09 21:50:40');

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
  ADD PRIMARY KEY (`idenredo`),
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
  MODIFY `idCenario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `contato`
--
ALTER TABLE `contato`
  MODIFY `idcontato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `enredo`
--
ALTER TABLE `enredo`
  MODIFY `idenredo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=494;

--
-- AUTO_INCREMENT de tabela `expressao`
--
ALTER TABLE `expressao`
  MODIFY `idExpressao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `medalhas`
--
ALTER TABLE `medalhas`
  MODIFY `idmedalhas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `missao`
--
ALTER TABLE `missao`
  MODIFY `idmissao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `mural`
--
ALTER TABLE `mural`
  MODIFY `idmural` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de tabela `personagens`
--
ALTER TABLE `personagens`
  MODIFY `idPersonagem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `savegame`
--
ALTER TABLE `savegame`
  MODIFY `idsavegame` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `teste`
--
ALTER TABLE `teste`
  MODIFY `idteste` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

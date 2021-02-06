-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 05-Fev-2021 às 22:34
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `amigaopet`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE IF NOT EXISTS `pedidos` (
  `id_pedidos` int(11) NOT NULL AUTO_INCREMENT,
  `nome_do_cliente` varchar(45) NOT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `nome_do_produto` varchar(45) DEFAULT NULL,
  `valor_unitario` decimal(10,0) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `valor_total` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id_pedidos`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`id_pedidos`, `nome_do_cliente`, `endereco`, `telefone`, `nome_do_produto`, `valor_unitario`, `quantidade`, `valor_total`) VALUES
(1, 'Afonso Lira', 'Rua: Curva do Horizonte, nº99 Programalina-SP', '11 99999 9999', 'Gato adulto', '500', 2, '500'),
(2, 'João Firmino', 'Rua: Alpha Lascante, nº 333 Tshurulandia-SP', '11 99999 9999', 'Gato filhote', '250', 1, '250'),
(3, 'José Leão', 'Rua: Omega Trepante, nº 77 Tshurulandia-SP', '11 96666 6666', 'Cachorro filhote', '250', 1, '250'),
(4, 'Fernanda Catacliesma', 'Rua: Tonhonhoim, nº 66 Tshurulandia-SP', '11 95555 5555', 'Cachorro adulto', '250', 1, '250'),
(5, 'Eslebão da Cunha', 'Rua: Estrela Dalva, nº 05 Tshurulandia-SP', '11 94444 4444', 'Cachorro adulto', '250', 1, '250'),
(6, 'Anibal Vicente', 'Rua:Meteóro de Pegasus, nº03 Tshurulandia-SP', '11 93333 3333', 'Cachorro filhote', '250', 1, '250'),
(7, 'Renata de Melo', 'Rua:Colera do Dragão, nº02 Tshurulandia-SP', '11 92222 2222', 'Cachorro filhote', '250', 1, '250'),
(8, 'Dolores de Barriga', 'Rua: Shiriu, nº 92 Tshurulandia-SP', '11 97777 2222', 'Cachorro filhote', '250', 1, '250'),
(9, 'Teste2', NULL, NULL, 'testando', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

DROP TABLE IF EXISTS `produto`;
CREATE TABLE IF NOT EXISTS `produto` (
  `idproduto` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(45) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `preco` decimal(8,2) DEFAULT NULL,
  `precofinal` decimal(8,2) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idproduto`),
  UNIQUE KEY `imagem` (`imagem`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`idproduto`, `categoria`, `descricao`, `preco`, `precofinal`, `imagem`) VALUES
(1, 'Gato filhote', 'Gato filhote', '500.00', '250.00', 'imagens/gfilhote1.jpg'),
(2, 'Gato filhote', 'Gato filhote', '500.00', '250.00', 'imagens/gfilhote2.jpg'),
(3, 'Gato filhote', 'Gato filhote', '500.00', '250.00', 'imagens/gfilhote3.jpg'),
(4, 'Gato filhote', 'Gato filhote', '500.00', '250.00', 'imagens/gfilhote4.jpg'),
(5, 'Gato adulto', 'Gato adulto', '500.00', '250.00', 'imagens/gadulto1.jpg'),
(6, 'Gato adulto', 'Gato adulto', '500.00', '250.00', 'imagens/gadulto2.jpg'),
(7, 'Gato adulto', 'Gato adulto', '500.00', '250.00', 'imagens/gadulto3.jpg'),
(8, 'Gato adulto', 'Gato adulto', '500.00', '250.00', 'imagens/gadulto4.jpg'),
(9, 'Cachorro filhote', 'Cachorro filhote', '500.00', '250.00', 'imagens/cfilhote1.jpg'),
(10, 'Cachorro filhote', 'Cachorro filhote', '500.00', '250.00', 'imagens/cfilhote2.jpg'),
(11, 'Cachorro filhote', 'Cachorro filhote', '500.00', '250.00', 'imagens/cfilhote3.jpg'),
(12, 'Cachorro filhote', 'Cachorro filhote', '500.00', '250.00', 'imagens/cfilhote4.jpg'),
(13, 'Cachorro adulto', 'Cachorro adulto', '500.00', '250.00', 'imagens/cadulto1.jpg'),
(14, 'Cachorro adulto', 'Cachorro adulto', '500.00', '250.00', 'imagens/cadulto2.jpg'),
(15, 'Cachorro adulto', 'Cachorro adulto', '500.00', '250.00', 'imagens/cadulto3.jpg'),
(16, 'Cachorro adulto', 'Cachorro adulto', '500.00', '250.00', 'imagens/cadulto4.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

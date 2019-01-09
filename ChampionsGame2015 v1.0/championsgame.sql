-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 16-Out-2015 às 13:46
-- Versão do servidor: 5.6.17-log
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `championsgame`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `campeonato`
--

CREATE TABLE IF NOT EXISTS `campeonato` (
  `idcamp` int(11) NOT NULL AUTO_INCREMENT,
  `nomecamp` varchar(45) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `valor` double(9,2) DEFAULT NULL,
  `data` date NOT NULL,
  `horario` char(5) NOT NULL,
  `local` varchar(45) NOT NULL,
  `vagas` int(11) NOT NULL,
  `premio` varchar(45) DEFAULT NULL,
  `imagem` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`idcamp`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `inscricao`
--

CREATE TABLE IF NOT EXISTS `inscricao` (
  `idInsc` int(11) NOT NULL AUTO_INCREMENT,
  `id_Jogador` int(11) NOT NULL,
  `id_Campeonato` int(11) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`idInsc`),
  KEY `id_Jogador` (`id_Jogador`),
  KEY `id_Campeonato` (`id_Campeonato`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogador`
--

CREATE TABLE IF NOT EXISTS `jogador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `endereco` varchar(60) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefone` char(15) NOT NULL,
  `login` varchar(15) NOT NULL,
  `senha` varchar(10) NOT NULL,
  `tipousu` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Extraindo dados da tabela `jogador`
--

INSERT INTO `jogador` (`id`, `nome`, `endereco`, `email`, `telefone`, `login`, `senha`, `tipousu`) VALUES
(1, 'Administrador Champions Game', 'Minas Gerais', 'zaptechsoftwares@gmail.com', '318500251', 'Admin', '987654321c', 1);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `inscricao`
--
ALTER TABLE `inscricao`
  ADD CONSTRAINT `inscricao_ibfk_1` FOREIGN KEY (`id_Jogador`) REFERENCES `jogador` (`id`),
  ADD CONSTRAINT `inscricao_ibfk_2` FOREIGN KEY (`id_Campeonato`) REFERENCES `campeonato` (`idcamp`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

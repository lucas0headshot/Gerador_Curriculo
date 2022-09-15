-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Set-2022 às 17:29
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `gerador_curriculo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `curriculo`
--

CREATE TABLE `curriculo` (
  `ID_Curriculo` int(3) NOT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `Funcao` varchar(50) DEFAULT NULL,
  `Informacoes_Pessoais` varchar(250) DEFAULT NULL,
  `Interesses_Pessoais` varchar(250) DEFAULT NULL,
  `Endereco` varchar(50) DEFAULT NULL,
  `Celular` varchar(14) NOT NULL,
  `E-mail` varchar(100) DEFAULT NULL,
  `Link_Portifolio` varchar(100) NOT NULL,
  `Link_LinkedIn` varchar(100) NOT NULL,
  `Link_Instagram` varchar(100) NOT NULL,
  `Nome_Escola` varchar(100) DEFAULT NULL,
  `Formacao` varchar(100) NOT NULL,
  `Informacoes_Formacao` varchar(250) NOT NULL,
  `Ultimo_Emprego` varchar(100) NOT NULL,
  `Empresa_Ultimo_Emprego` varchar(100) NOT NULL,
  `Detalhes_Ultimo_Emprego` varchar(250) NOT NULL,
  `Especializacoes` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `curriculo`
--
ALTER TABLE `curriculo`
  ADD PRIMARY KEY (`ID_Curriculo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `curriculo`
--
ALTER TABLE `curriculo`
  MODIFY `ID_Curriculo` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

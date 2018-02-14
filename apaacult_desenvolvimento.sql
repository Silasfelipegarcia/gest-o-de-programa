-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 24-Maio-2017 às 01:34
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apaacult_desenvolvimento`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acoes`
--

CREATE TABLE `acoes` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo_acao` int(11) NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `plano_id` int(10) UNSIGNED DEFAULT NULL,
  `programa_id` int(10) UNSIGNED DEFAULT NULL,
  `especie_acao_id` int(10) UNSIGNED DEFAULT NULL,
  `linguagem_acao_id` int(10) UNSIGNED DEFAULT NULL,
  `funcao_acao_id` int(10) UNSIGNED DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `regiao_acao` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) NOT NULL,
  `changed_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `acoes`
--

INSERT INTO `acoes` (`id`, `codigo_acao`, `nome`, `plano_id`, `programa_id`, `especie_acao_id`, `linguagem_acao_id`, `funcao_acao_id`, `status`, `regiao_acao`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `changed_by`, `created_by`) VALUES
(1, 4, 'Realizar apresentações', 1, 1, 3, 6, 2, 0, 'Interior', '2016-08-23 12:17:50', '2016-12-06 11:21:58', NULL, 0, 2, 1),
(2, 5, 'Realizar Apresentações de Espetáculos', 1, 2, 3, 1, 2, 0, 'Interior', '2016-08-25 11:11:14', '2016-12-06 11:21:16', NULL, 0, 2, 1),
(3, 1, 'Realizar apresentações', 1, 3, 3, 6, 2, 0, 'Interior e Litoral', '2016-08-30 12:11:15', '2016-12-06 11:23:41', NULL, 0, 2, 1),
(4, 2, 'Realizar Apresentações', 1, 4, 3, 6, 2, 0, 'Interior e Litoral', '2016-08-30 12:13:17', '2016-12-06 11:23:13', NULL, 0, 2, 1),
(5, 3, 'Realizar Evento em Rede Com Municípios Participantes', 1, 4, 5, 5, 4, 0, 'Interior e Litoral', '2016-08-30 12:17:04', '2017-05-11 14:47:59', NULL, 0, 19, 1),
(6, 6, 'Realizar apresentações na Capital', 1, 5, 3, 7, 2, 0, 'Cidade de São Paulo', '2016-10-27 14:53:47', '2016-12-06 11:20:41', NULL, 0, 2, 2),
(7, 7, 'Realizar apresentações no Interior e Litoral do Estado', 1, 5, 3, 7, 2, 0, 'Interior e Litoral', '2016-10-27 14:55:03', '2016-12-06 11:20:05', NULL, 0, 2, 2),
(8, 8, 'Iniciar a Produção e Montagem de um título novo de Ópera para estreia em 2017', 1, 5, 12, 7, 1, 0, 'Interior e Litoral', '2016-10-27 14:55:52', '2016-12-06 11:19:32', NULL, 0, 2, 2),
(9, 9, 'Apoiar e/ou realizar eventos para a cultura LGBT, na capital e interior', 1, 7, 5, 6, 2, 0, 'Estado de São Paulo', '2016-10-27 14:56:57', '2016-12-06 11:18:40', NULL, 0, 2, 2),
(10, 10, 'Realizar Oficinas para Estudantes', 1, 8, 2, 2, 3, 0, 'Interior', '2016-10-27 14:58:07', '2016-12-06 11:18:08', NULL, 0, 2, 2),
(11, 11, 'Realizar Oficinas com Profissionais de Biblioteca', 1, 8, 2, 2, 3, 0, 'Interior', '2016-10-27 14:59:06', '2016-12-06 11:17:27', NULL, 0, 2, 2),
(12, 12, 'Realizar Atividades Literárias', 1, 8, 3, 2, 2, 0, 'Interior', '2016-10-27 15:00:03', '2016-12-06 11:16:44', NULL, 0, 2, 2),
(13, 13, 'Realizar Apresentações Artísticas', 1, 8, 3, 6, 2, 0, 'Interior', '2016-10-27 15:00:46', '2016-12-06 11:16:15', NULL, 0, 2, 2),
(14, 14, 'Realizar Apresentações Artísticas', 1, 8, 3, 6, 2, 0, 'Interior', '2016-10-27 15:01:26', '2016-12-06 11:15:38', NULL, 0, 2, 2),
(15, 15, 'Realizar apresentações de espetáculos', 1, 10, 3, 6, 2, 0, 'Cidade de São Paulo', '2016-10-27 15:02:39', '2016-12-06 11:14:31', NULL, 0, 2, 2),
(16, 16, 'Realizar apresentações de espetáculos', 1, 9, 3, 6, 2, 0, 'Cidade de São Paulo', '2016-10-27 15:05:45', '2016-12-06 11:14:00', NULL, 0, 2, 2),
(17, 17, 'Realizar Apresentações', 1, 11, 3, 6, 2, 0, 'Interior', '2016-10-27 15:06:38', '2016-12-06 11:13:25', NULL, 0, 2, 2),
(18, 18, 'Realizar apresentações de arte para crianças durante uma semana (2ª a 6ª com duas sessões diárias)', 1, 11, 3, 6, 2, 0, 'Interior', '2016-10-27 15:07:35', '2016-12-06 11:12:57', NULL, 0, 2, 2),
(19, 19, 'Realizar Exposição pelo interior e litoral de São Paulo', 1, 12, 7, 3, 2, 0, 'Estado de São Paulo', '2016-10-27 15:08:31', '2016-12-06 11:12:23', NULL, 0, 2, 2),
(20, 20, 'Realizar Novas Exposições na sede do CCDS', 1, 12, 7, 3, 2, 0, 'Cidade de São Paulo', '2016-10-27 15:09:38', '2016-12-06 11:09:56', NULL, 0, 2, 2),
(21, 21, 'Realizar Adaptação Comunicacional e Apresentações de Espetáculos', 1, 13, 3, 6, 2, 0, 'Cidade de São Paulo', '2016-10-27 15:11:58', '2016-12-06 11:09:18', NULL, 0, 2, 2),
(22, 22, 'Captar Receitas', 1, 15, 4, 5, 4, 0, 'Estado de São Paulo', '2016-10-27 15:12:58', '2016-12-06 11:07:49', NULL, 0, 2, 2),
(23, 23, 'Realizar Oficinas para Estudantes', 1, 16, 2, 2, 3, 0, 'Interior', '2016-10-27 15:14:15', '2016-12-06 11:06:58', NULL, 0, 2, 2),
(24, 24, 'Realizar Oficinas com Profissionais de Biblioteca', 1, 16, 2, 2, 3, 0, 'Interior', '2016-10-27 15:14:57', '2016-12-06 11:01:27', NULL, 0, 2, 2),
(25, 25, 'Realizar Atividades Literárias', 1, 16, 3, 2, 2, 0, 'Interior', '2016-10-27 15:15:41', '2016-12-06 10:54:46', NULL, 0, 2, 2),
(26, 26, 'Realizar Apresentações Artísticas', 1, 16, 3, 6, 2, 0, 'Cidade de São Paulo', '2016-10-27 15:16:27', '2016-12-06 11:26:12', NULL, 0, 2, 2),
(27, 27, 'Realizar Apresentações Artísticas', 1, 16, 3, 6, 2, 0, 'Cidade de São Paulo', '2016-10-27 15:17:03', '2016-12-06 11:25:55', NULL, 0, 2, 2),
(30, 28, 'Realizar Espetáculos', 1, 17, 3, 6, 2, 0, 'Estado de São Paulo', '2016-10-27 15:22:07', '2016-12-06 09:20:02', NULL, 0, 2, 2),
(32, 29, 'Realizar atividades', 1, 17, 2, 6, 3, 0, 'Estado de São Paulo', '2016-10-27 15:26:52', '2016-12-06 09:18:59', NULL, 0, 2, 2),
(33, 30, 'Realizar Oficinas para Estudantes', 1, 17, 2, 6, 3, 0, 'Estado de São Paulo', '2016-10-27 15:27:58', '2016-12-06 09:17:38', NULL, 0, 2, 2),
(34, 31, 'Realizar Apresentações', 1, 18, 3, 6, 2, 0, 'Cidade de São Paulo', '2016-10-27 15:42:40', '2016-12-06 11:25:37', NULL, 0, 2, 2),
(35, 32, 'Promover a Participação de Dirigentes Culturais dos Municípios', 1, 19, 13, 5, 2, 0, 'Cidade de São Paulo', '2016-10-27 15:43:41', '2016-12-06 11:25:24', NULL, 0, 2, 2),
(36, 33, 'Realizar Atividades', 1, 19, 3, 6, 2, 0, 'Cidade de São Paulo', '2016-10-27 16:44:29', '2016-12-06 11:25:09', NULL, 0, 2, 2),
(37, 34, 'Estabelecer uma rede colaborativa para o ProAC Editais - Plataforma Virtual', 1, 19, 12, 5, 2, 0, 'Cidade de São Paulo', '2016-10-27 16:52:51', '2016-12-06 11:24:51', NULL, 0, 2, 2),
(38, 35, 'Plano Museológico - Projeto de Pesquisa', 1, 12, 12, 3, 2, 0, 'Cidade de São Paulo', '2016-10-27 16:55:56', '2016-12-06 11:24:37', NULL, 0, 2, 2),
(111, 122, 'Apresentações de espetáculos', 2, 21, 3, 6, 2, 0, 'Cidade de São Paulo', '2017-02-05 02:18:36', '2017-05-10 20:08:03', NULL, 0, 19, 1),
(112, 2, 'Realizar apresentações', 2, 22, 3, 6, 2, 0, 'Cidade de São Paulo', '2017-02-05 02:26:11', '2017-02-05 02:26:11', NULL, 0, 0, 1),
(113, 3, 'Atividades multilinguagens em espaços alternativos do teatro e adjacências', 2, 23, 3, 6, 2, 0, 'Cidade de São Paulo', '2017-02-05 02:47:18', '2017-02-05 02:47:18', NULL, 0, 0, 1),
(114, 142, 'Apresentações de espetáculos ', 3, 59, 3, 6, 2, 0, 'são paulo', '2017-02-06 23:54:31', '2017-05-11 20:02:04', '2017-05-11 20:02:04', 19, 19, 1),
(115, 233, 'Apresentações de espetáculos em parcerias ', 3, 56, 8, 6, 2, 0, 'são paulo', '2017-02-07 00:01:29', '2017-05-11 19:56:25', '2017-05-11 19:56:25', 19, 19, 1),
(116, 1, 'Adaptações Comunicacionais  de Espetáculos', 3, 56, 8, 6, 2, 0, 'são paulo', '2017-02-07 00:05:26', '2017-05-11 20:02:21', NULL, 0, 19, 1),
(117, 4, 'Apresentações com recursos de acessibilidade ', 3, 56, 8, 6, 2, 0, 'são paulo', '2017-02-07 00:07:51', '2017-05-11 20:02:13', '2017-05-11 20:02:13', 19, 0, 1),
(118, 5, 'Número Total de Público Circulante', 3, 57, 6, 6, 2, 0, 'são paulo', '2017-02-07 11:28:25', '2017-02-07 11:31:08', '2017-02-07 11:31:08', 1, 1, 1),
(119, 5, 'Realizar Apresentações de Espetáculos', 3, 57, 7, 6, 2, 0, 'são Paulo', '2017-02-07 11:30:05', '2017-05-11 20:02:11', '2017-05-11 20:02:11', 19, 1, 1),
(120, 6, 'Realizar Apresentações na Capital', 3, 58, 1, 5, 3, 0, 'são paulo', '2017-02-07 11:41:30', '2017-05-11 20:02:09', '2017-05-11 20:02:09', 19, 0, 1),
(121, 7, 'Realizar apresentações no Interior e Litoral do Estado', 3, 59, 7, 4, 3, 0, 'São Paulo', '2017-02-07 11:45:00', '2017-05-11 20:02:07', '2017-05-11 20:02:07', 19, 0, 1),
(122, 8, 'Iniciar a Produção e Montagem de um Título novo de ópera para estrela em 2017', 3, 60, 10, 3, 3, 0, 'são paulo', '2017-02-07 11:48:58', '2017-05-11 20:01:54', '2017-05-11 20:01:54', 19, 1, 1),
(123, 9, 'Apoiar e/ou realizar eventos para a cultura LGBT, na capital e interior', 3, 60, 6, 4, 2, 0, 'são paulo', '2017-02-07 11:52:45', '2017-05-11 20:01:52', '2017-05-11 20:01:52', 19, 0, 1),
(124, 10, 'Realizar Atividades Literárias', 3, 60, 6, 4, 2, 0, 'são paulo', '2017-02-07 11:54:34', '2017-05-11 20:01:50', '2017-05-11 20:01:50', 19, 0, 1),
(125, 11, 'Realziar Ofincinas com Profissionais de Biblioteca', 3, 58, 9, 3, 3, 0, 'são paulo', '2017-02-07 11:57:00', '2017-05-11 20:01:48', '2017-05-11 20:01:48', 19, 0, 1),
(126, 12, 'Realizar Atividades Literárias', 3, 55, 6, 4, 3, 0, 'são Paulo', '2017-02-07 11:58:45', '2017-05-11 20:01:36', '2017-05-11 20:01:36', 19, 0, 1),
(127, 13, 'Realizar Apresentações Artisticas', 3, 56, 10, 3, 3, 0, 'são Paulo', '2017-02-07 12:01:45', '2017-05-11 20:01:34', '2017-05-11 20:01:34', 19, 0, 1),
(128, 14, 'Não Tem Titulo', 3, 61, 10, 2, 2, 0, 'são Paulo', '2017-02-07 13:16:08', '2017-05-11 20:01:32', '2017-05-11 20:01:32', 19, 1, 1),
(129, 15, 'Realizar Apresentações de Espetáculos', 3, 61, 13, 3, 3, 0, 'são Paulo', '2017-02-07 13:18:21', '2017-05-11 20:01:29', '2017-05-11 20:01:29', 19, 0, 1),
(130, 16, 'Realizar Apresentações de Espetáculos', 3, 61, 10, 5, 4, 0, 'São Paulo', '2017-02-07 13:20:08', '2017-05-11 20:01:16', '2017-05-11 20:01:16', 19, 0, 1),
(131, 17, 'Realizar Apresentações de Espetáculos', 3, 61, 11, 1, 1, 0, 'São Paulo', '2017-02-07 13:21:54', '2017-05-11 20:01:13', '2017-05-11 20:01:13', 19, 0, 1),
(132, 18, 'Realizar Exposição pelo Interior e Litoral de São Paulo', 3, 61, 11, 2, 1, 0, 'são paulo', '2017-02-07 13:23:39', '2017-05-11 20:01:10', '2017-05-11 20:01:10', 19, 0, 1),
(133, 19, 'Realizar exposição pelo Interior e litoral de São Paulo', 3, 61, 11, 3, 3, 0, 'São Paulo', '2017-02-07 13:25:23', '2017-05-11 20:01:07', '2017-05-11 20:01:07', 19, 0, 1),
(134, 20, 'Realizar NOvas Exposições na sede do CCDS', 3, 61, 8, 5, 3, 0, 'São Paulo', '2017-02-07 13:27:41', '2017-05-11 20:01:05', '2017-05-11 20:01:05', 19, 0, 1),
(135, 21, 'Realizar Adaptação Comunicação e Apresentação de Espetáculos', 3, 61, 11, 3, 4, 0, 'São Paulo', '2017-02-07 13:30:39', '2017-05-11 20:01:03', '2017-05-11 20:01:03', 19, 0, 1),
(136, 22, 'Captar Receitas', 3, 57, 6, 3, 2, 0, 'São Paulo', '2017-02-07 13:35:00', '2017-05-11 20:01:01', '2017-05-11 20:01:01', 19, 19, 1),
(137, 1, 'Legalidade', 3, 56, 11, 2, 2, 0, 'SP', '2017-05-04 17:46:32', '2017-05-11 20:00:54', '2017-05-11 20:00:54', 19, 19, 19),
(138, 2, 'Tentando Fazer igual', 3, 57, 10, 5, 1, 0, 'SP', '2017-05-04 18:09:51', '2017-05-11 20:00:40', '2017-05-11 20:00:40', 19, 19, 19),
(139, 123, 'Testandooo totalmente', 4, 62, 8, 1, 1, 0, 'SP', '2017-05-09 17:27:23', '2017-05-09 18:27:54', '2017-05-09 18:27:54', 19, 19, 19),
(140, 2, 'Que tal assim', 3, 56, 9, 1, 2, 0, 'SP', '2017-05-11 15:04:54', '2017-05-11 18:30:22', '2017-05-11 18:30:22', 19, 0, 19),
(141, 2, 'Teste', 3, 56, 11, 1, 1, 0, 'São Paulo', '2017-05-19 15:43:07', '2017-05-19 15:43:07', NULL, 0, 0, 19),
(142, 3, 'Adaptações Comunicacionais de Espetáculos', 3, 59, 3, 6, 2, 0, 'Cidade de São Paulo', '2017-05-16 14:26:54', '2017-05-16 14:26:54', NULL, 0, 0, 2),
(143, 4, 'Apresentações com recursos de acessibilidade', 3, 59, 3, 6, 2, 0, 'Cidade de São Paulo', '2017-05-16 14:27:48', '2017-05-16 14:27:48', NULL, 0, 0, 2),
(144, 11, 'Novas exposições na sede do CCDS', 3, 60, 7, 6, 2, 0, 'Cidade de São Paulo', '2017-05-17 19:57:22', '2017-05-17 19:57:22', NULL, 0, 0, 2),
(145, 12, 'Itinerância de exposições pelo interior e litoral de São Paulo', 3, 60, 7, 6, 2, 0, 'Interior e Litoral', '2017-05-17 19:58:39', '2017-05-17 19:58:39', NULL, 0, 0, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `atividades`
--

CREATE TABLE `atividades` (
  `id` int(10) UNSIGNED NOT NULL,
  `data` datetime NOT NULL,
  `horario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dia_semana` int(11) NOT NULL,
  `data_fim` datetime NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `observacoes` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `local` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capacidade` int(11) NOT NULL,
  `num_total_pessoas` int(11) NOT NULL,
  `num_total_tecnicos` int(11) NOT NULL,
  `num_total_artistas` int(11) NOT NULL,
  `inteira` int(11) NOT NULL,
  `meia` int(11) NOT NULL,
  `morador_entorno` int(11) NOT NULL,
  `prom` int(11) NOT NULL,
  `total_pagantes` int(11) NOT NULL,
  `convite_prod` int(11) NOT NULL,
  `convite_apaa` int(11) NOT NULL,
  `educativo_producao` int(11) NOT NULL,
  `educativo_apaa` int(11) NOT NULL,
  `atend_social_producao` int(11) NOT NULL,
  `atend_social_apaa` int(11) NOT NULL,
  `sessao_acessivel` tinyint(1) NOT NULL,
  `acessibilidade_acompanhante` tinyint(1) NOT NULL,
  `bilheteria` decimal(10,2) NOT NULL,
  `porcent_bilheteria_apaa` decimal(10,2) NOT NULL,
  `artista` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `plano_id` int(10) UNSIGNED DEFAULT NULL,
  `programa_id` int(10) UNSIGNED DEFAULT NULL,
  `tipo_publico_id` int(10) UNSIGNED DEFAULT NULL,
  `realizador_id` int(10) UNSIGNED DEFAULT NULL,
  `linguagem_programa_id` int(10) UNSIGNED DEFAULT NULL,
  `municipio_id` int(10) UNSIGNED DEFAULT NULL,
  `tipo_evento_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) NOT NULL,
  `changed_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `atividades`
--

INSERT INTO `atividades` (`id`, `data`, `horario`, `dia_semana`, `data_fim`, `nome`, `observacoes`, `local`, `capacidade`, `num_total_pessoas`, `num_total_tecnicos`, `num_total_artistas`, `inteira`, `meia`, `morador_entorno`, `prom`, `total_pagantes`, `convite_prod`, `convite_apaa`, `educativo_producao`, `educativo_apaa`, `atend_social_producao`, `atend_social_apaa`, `sessao_acessivel`, `acessibilidade_acompanhante`, `bilheteria`, `porcent_bilheteria_apaa`, `artista`, `plano_id`, `programa_id`, `tipo_publico_id`, `realizador_id`, `linguagem_programa_id`, `municipio_id`, `tipo_evento_id`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `changed_by`, `created_by`) VALUES
(1, '2016-08-25 16:56:31', '22:50', 3, '2016-08-25 16:56:31', 'Atividade Teste', 'Observações Teste', 'Teste Local', 100, 98, 10, 5, 50, 40, 3, 1, 90, 2, 2, 0, 0, 0, 0, 0, 0, '1550.50', '50.00', 'Grupo Teste', 1, 1, 2, 1, 1, 47, 2, '2016-08-23 15:56:31', '2017-05-16 18:25:37', '2017-05-16 18:25:37', 19, 0, 1),
(2, '2016-08-26 16:33:10', '22:15', 4, '2016-08-26 16:33:10', 'Atividade Teste2', 'Observações 2', 'Teste Local2', 50, 50, 10, 5, 20, 5, 10, 10, 25, 10, 5, 3, 3, 3, 1, 0, 0, '780.90', '0.00', 'Banda 2 Teste', 1, 1, 1, 1, 1, 47, 2, '2016-08-24 14:54:25', '2017-05-16 18:25:45', '2017-05-16 18:25:45', 19, 1, 1),
(3, '2016-08-27 17:16:18', '03:55', 5, '2016-08-27 17:16:18', 'Atividade Teste3', 'Observações 3', 'Teste Local3', 30, 30, 10, 3, 10, 5, 5, 5, 15, 5, 5, 1, 1, 2, 1, 0, 0, '1000.00', '30.00', 'Grupo Teste3', 1, 1, 1, 1, 1, 45, 2, '2016-08-24 16:16:18', '2017-05-16 18:26:23', '2017-05-16 18:26:23', 19, 0, 1),
(4, '2016-08-28 12:14:51', '10:15', 6, '2016-08-28 12:14:51', 'Atividade 4', 'Observações Atividade 4', 'Teste Local Atividade 4', 225, 200, 10, 10, 100, 50, 10, 0, 150, 10, 10, 10, 10, 5, 5, 0, 0, '9850.50', '40.00', 'Grupo teste Atividade 5', 1, 1, 3, 1, 1, 43, 3, '2016-08-25 11:14:51', '2017-05-16 18:26:28', '2017-05-16 18:26:28', 19, 0, 1),
(5, '2016-09-01 23:24:29', '11:45', 3, '2016-09-02 23:24:29', 'Atividade Outra', 'Observações de Atividade', 'Algum local', 100, 90, 10, 3, 50, 10, 3, 5, 60, 5, 5, 5, 2, 2, 1, 0, 0, '1500.00', '0.00', 'Allman Brothers Band', 1, 4, 2, 1, 1, 47, 2, '2016-09-01 16:42:30', '2017-05-16 18:27:37', '2017-05-16 18:27:37', 19, 6, 1),
(6, '2016-09-02 10:09:54', '10:00', 4, '2016-09-03 10:09:54', 'Atividade de Teste 6', 'Apresentação de Banda 3 Guys na Virada', 'Expo Apresentações', 2500, 2345, 50, 3, 1500, 500, 20, 50, 2000, 30, 15, 50, 50, 100, 100, 1, 1, '40.00', '60.00', 'Banda 3 guys', 1, 3, 2, 1, 1, 47, 2, '2016-09-02 09:09:54', '2017-05-16 18:27:44', '2017-05-16 18:27:44', 19, 0, 1),
(7, '2016-09-05 11:25:59', '19:30', 0, '2016-09-06 11:25:59', 'Atividade 7', '', 'Praça de Apresentações', 500, 430, 20, 8, 300, 100, 0, 3, 400, 10, 5, 3, 2, 5, 5, 1, 0, '10.00', '0.00', 'Grupo Macabeth', 1, 2, 1, 1, 2, 45, 1, '2016-09-02 09:45:06', '2017-05-16 18:29:22', '2017-05-16 18:29:22', 19, 0, 1),
(11, '2016-09-08 09:16:02', '12:00', 3, '2016-09-08 09:16:02', 'Atividade de Teste de Produtor1', '', 'Local Atividade de Teste de Produtor1', 1256, 1256, 20, 4, 900, 300, 10, 3, 1200, 6, 10, 10, 10, 10, 10, 0, 0, '21000.00', '0.00', 'Banda Atividade de Teste de Produtor1', 1, 1, 2, 1, 1, 34, 2, '2016-09-06 16:40:46', '2017-05-16 18:29:28', '2017-05-16 18:29:28', 19, 3, 3),
(12, '2016-09-09 16:32:26', '20:00', 4, '2016-09-09 16:32:26', 'Atividade Produtor2', 'Observações Atividade Produtor - bddsjlkf skdjksjf sjfjslfjsd dfjslkfdj sfdjlsfjljfsdl', 'Local Atividade Produtor2', 1440, 1440, 20, 5, 600, 600, 10, 5, 1200, 50, 50, 50, 50, 20, 20, 0, 0, '72000.00', '0.00', 'Banda Atividade Produtor2', 1, 1, 3, 1, 1, 40, 2, '2016-09-08 09:21:45', '2017-05-16 18:29:37', '2017-05-16 18:29:37', 19, 1, 3),
(13, '2016-07-04 19:33:52', '18:00', 0, '2016-07-27 19:33:52', 'Tróilo& Créssida', 'blá blá blá', 'São Paulo', 824, 824, 18, 0, 69, 263, 6, 90, 455, 157, 63, 42, 197, 0, 0, 0, 0, '10269.00', '0.00', 'Tróilo& Créssida', 1, 10, 1, 1, 4, 47, 1, '2016-11-04 11:10:10', '2017-05-16 18:30:02', '2017-05-16 18:30:02', 19, 2, 2),
(14, '2016-07-01 17:19:07', '18:00', 0, '2016-07-02 17:19:07', 'O Lago dos Cisnes', 'blá blá blá', 'São Paulo', 0, 2060, 65, 0, 726, 1033, 3, 0, 1762, 228, 70, 0, 0, 0, 0, 0, 0, '84815.00', '0.00', 'O Lago dos Cisnes', 1, 9, 1, 1, 4, 47, 1, '2016-11-04 11:48:07', '2017-01-12 11:51:33', '2017-01-12 11:51:33', 16, 5, 2),
(15, '2016-08-01 23:23:25', '06:00', 0, '2016-08-05 23:23:25', 'Florilégio Musical II - Nas Ondas do Rádio', 'bla bla bla', 'Teatro de Araras', 0, 109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 'Kavantan Associados', 1, 11, 1, 1, 4, 47, 1, '2016-12-15 17:04:21', '2017-05-16 18:35:00', '2017-05-16 18:35:00', 19, 6, 6),
(16, '2016-02-01 09:26:48', '00:00', 0, '2016-02-29 09:26:48', 'Virada Cultural Paulista', 'Virada Cultural', 'São Paulo', 0, 500000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 'Vários', 1, 3, 2, 1, 7, 45, 2, '2017-01-11 17:01:38', '2017-01-23 09:26:48', NULL, 0, 2, 2),
(17, '2016-02-01 10:27:40', '13:00', 0, '2016-02-29 10:27:40', 'Virada Cultural Paulista', 'Observação X Y Z', 'Parques de São Paulo', 400000, 400000, 0, 0, 0, 0, 0, 0, 400000, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 'Artista X', 1, 3, 2, 2, 7, 44, 2, '2017-01-11 17:04:54', '2017-01-24 10:27:40', NULL, 0, 2, 2),
(18, '2017-01-01 16:37:12', '01:00', 0, '2017-01-03 16:37:12', 'atividade de teste itamar - alterado', 'teste itamar', 'local teste', 100, 125, 10, 10, 50, 50, 500, 50, 80, 10, 12, 455, 5244, 4552, 4545, 1, 1, '15254.00', '0.00', 'varios', 1, 19, 3, 1, 1, 43, 3, '2017-01-20 16:36:18', '2017-01-20 16:37:12', NULL, 0, 1, 1),
(19, '2016-03-01 11:12:11', '00:00', 4, '2017-02-01 11:12:11', 'Teste 101', 'bla bla bla...', 'São Paulo', 10000, 6500, 0, 5, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, '10000.00', '0.00', 'Banda Eu sou o bom', 1, 5, 1, 1, 1, 22, 1, '2017-02-01 11:08:26', '2017-02-01 11:12:11', NULL, 0, 2, 2),
(20, '2016-01-01 11:25:29', '00:05', 0, '2017-02-01 11:25:29', 'Teste 102', 'Foi legal.', 'São Paulo', 10000, 980, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1000.00', '400.00', 'Banda XYK2000', 1, 7, 2, 1, 6, 47, 1, '2017-02-01 11:25:29', '2017-02-01 11:25:29', NULL, 0, 0, 2),
(21, '2017-04-01 12:00:57', '00:05', 2, '2017-02-01 12:00:57', 'Teste 103', 'bla bla bla', 'São José dos Campos', 10000, 1150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '5000.00', '0.00', 'Nenhuma', 1, 8, 2, 1, 5, 41, 2, '2017-02-01 11:59:37', '2017-02-01 12:00:57', NULL, 0, 2, 2),
(22, '2016-09-01 12:08:27', '00:05', 5, '2017-02-01 12:08:27', 'Teste 104', 'xxxx', 'Sala Sérgio Cardoso', 10000, 4590, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '5000.00', '3500.00', 'Maldito Benefício', 1, 9, 1, 1, 4, 47, 1, '2017-02-01 12:08:27', '2017-02-01 12:08:27', NULL, 0, 0, 2),
(23, '2016-09-01 15:36:36', '00:05', 6, '2016-09-01 15:36:36', 'Teste 105', 'xxxxx', 'São Paulo', 10000, 9000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '4000.00', '0.00', 'Maldito Benefício', 1, 9, 1, 1, 4, 47, 1, '2017-02-01 12:21:16', '2017-02-01 15:36:36', NULL, 0, 2, 2),
(27, '2017-02-03 14:40:12', '00:00', 0, '2017-02-24 14:40:12', 'Teste itamar - Programa TSC - Espaços Alternativos', 'teste', 'Local', 125, 25, 3, 66, 50, 155, 256, 112, 45, 1, 12, 54, 44, 545, 545, 1, 1, '4522.00', '80.00', 'banda teste', 2, 23, 1, 1, 1, 46, 1, '2017-02-03 14:40:12', '2017-02-03 23:56:49', '2017-02-03 23:56:49', 1, 0, 1),
(28, '2017-05-04 16:08:59', '13:25', 0, '2017-05-04 16:08:59', 'teste acao', 'Teste', 'Campinas', 250, 250, 20, 8, 200, 50, 0, 0, 250, 0, 0, 0, 0, 0, 0, 0, 0, '1000.00', '0.00', 'Capital Inicial', 3, 9, 1, 1, 1, 15, 1, '2017-05-04 17:59:21', '2017-05-10 19:08:59', NULL, 0, 19, 19),
(29, '2017-05-04 12:56:11', '23:57', 2, '2017-05-05 12:56:11', 'Silas Testando', 'Silas Testando', 'SP', 100, 100, 10, 10, 100, 0, 10, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, '1000.00', '0.00', 'Capital', 3, 2, 1, 1, 1, 47, 1, '2017-05-04 18:13:47', '2017-05-11 15:56:11', NULL, 0, 19, 19),
(30, '2017-05-09 15:06:30', '23:55', 1, '2017-05-08 15:06:30', 'testando mesmo testando tudo', 'teste', 'SP', 200, 150, 10, 10, 100, 50, 10, 0, 0, 0, 0, 10, 0, 0, 10, 0, 1, '10000.00', '0.00', 'rs', 4, 62, 1, 1, 1, 47, 1, '2017-05-09 17:31:04', '2017-05-09 18:27:23', '2017-05-09 18:27:23', 19, 19, 19),
(31, '2017-05-10 12:33:10', '23:55', 1, '2017-05-11 12:33:10', 'TESTE DEMAIS', 'SS', 'campinas', 100, 100, 10, 1, 100, 0, 0, 0, 100, 0, 10, 0, 0, 0, 0, 0, 0, '100.00', '0.00', 'CA', 3, 58, 1, 2, 3, 34, 1, '2017-05-10 19:32:27', '2017-05-11 15:33:10', NULL, 0, 19, 19),
(32, '2017-04-11 15:14:04', '23:55', 3, '2017-04-30 15:14:04', 'teste', 'tesete', 'São Paulo', 1000, 100, 10, 2, 100, 0, 10, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, '1000.00', '0.00', 'Jorge e Mateus', 1, 12, 1, 2, 1, 34, 1, '2017-05-11 15:09:47', '2017-05-11 18:14:04', NULL, 0, 19, 19),
(33, '2017-05-01 17:16:56', '23:55', 1, '2017-05-12 17:16:56', 'Festa do Teste', 'teste', 'SP', 1000, 100, 12, 10, 100, 0, 12, 0, 100, 2, 1, 0, 0, 0, 10, 0, 0, '1000.00', '0.00', 'Jorge e Mateus', 3, 56, 1, 1, 2, 32, 1, '2017-05-11 18:27:12', '2017-05-18 15:49:14', '2017-05-18 15:49:14', 19, 19, 19),
(34, '2017-05-10 17:18:50', '23:53', 1, '2017-05-11 17:18:50', 'Festa do Teste 2', 'ase', 'SP', 100, 50, 10, 10, 50, 0, 0, 0, 50, 10, 10, 0, 0, 0, 0, 0, 0, '1000.00', '0.00', 'C2SD', 3, 56, 1, 1, 2, 47, 1, '2017-05-11 20:05:33', '2017-05-16 20:09:14', '2017-05-16 20:09:14', 19, 19, 19),
(35, '2017-05-03 17:18:41', '00:55', 1, '2017-05-09 17:18:41', 'testeteste', 'teste', 'SP', 100, 100, 10, 10, 100, 0, 10, 10, 100, 0, 0, 0, 0, 0, 0, 0, 0, '1000.00', '0.00', 'b2k', 3, 56, 1, 1, 3, 47, 1, '2017-05-11 20:11:27', '2017-05-16 18:36:16', '2017-05-16 18:36:16', 19, 19, 19),
(36, '0000-00-00 00:00:00', '00:00', 1, '0000-00-00 00:00:00', 'ATA', 'asdas', 'st', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 'asdas', 3, 56, 1, 1, 5, 31, 3, '2017-05-16 20:10:25', '2017-05-16 20:12:52', '2017-05-16 20:12:52', 19, 0, 19),
(37, '0000-00-00 00:00:00', '00:00', 0, '0000-00-00 00:00:00', 'asd', 'sda', 'Ss', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '0.00', '0.00', 'se', 2, 59, 3, 2, 3, 32, 1, '2017-05-16 20:14:00', '2017-05-16 20:14:00', NULL, 0, 0, 19),
(38, '2017-05-18 13:00:49', '00:00', 0, '2017-05-26 13:00:49', 'Vida que Segue', 'Vamos la', 'São Paulo', 100, 101, 1, 142, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '0.00', '0.00', 'SP', 3, 56, 1, 1, 2, 47, 1, '2017-05-18 15:45:21', '2017-05-22 16:00:49', NULL, 0, 19, 19),
(39, '2017-05-19 11:17:07', '00:00', 1, '2017-05-20 11:17:07', 'Life tentando', 'SS', 'SP', 1212, 122, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 1, '0.00', '0.00', 'SS', 3, 56, 1, 2, 2, 47, 1, '2017-05-18 15:48:49', '2017-05-22 14:17:07', NULL, 0, 19, 19),
(40, '2017-05-18 15:33:25', '00:00', 1, '2017-05-19 15:33:25', 'testes', 'ss', 'SP', 2, 122, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 'ss', 3, 59, 1, 1, 2, 47, 1, '2017-05-19 18:00:57', '2017-05-19 18:33:25', NULL, 0, 19, 19);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cgs`
--

CREATE TABLE `cgs` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) NOT NULL,
  `changed_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `cgs`
--

INSERT INTO `cgs` (`id`, `nome`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `changed_by`, `created_by`) VALUES
(1, '01/2004', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(2, '02/2004', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(3, '03/2005', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(4, '04/2005', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(5, '05/2005', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(6, '06/2005', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(7, '07/2005', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(8, '08/2005', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(9, '09/2005', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(10, '11/2006', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(11, '12/2006', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(12, '13/2006', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(13, '14/2006', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(14, '15/2007', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(15, '16/2007', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(16, '17/2007', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(17, '18/2007', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(18, '19/2007', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(19, '20/2007', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(20, '21/2008', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(21, '22/2008', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(22, '23/2008', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(23, '24/2008', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(24, '25/2008', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(25, '26/2008', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(26, '27/2008', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(27, '28/2008', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(28, '29/2008', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(29, '30/2008', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(30, '31/2008', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(31, '32/2008', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(32, '33/2008', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(33, '34/2008', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(34, '35/2008', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(35, '36/2008', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(36, '37/2009', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(37, '38/2009', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(38, '39/2009', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(39, '40/2009', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(40, '41/2010', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(41, '42/2010', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(42, '43/2010', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(43, '44/2010', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(44, '46/2010', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(45, '01/2011', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(46, '02/2011', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(47, '03/2011', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(48, '04/2011', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(49, '05/2011', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(50, '06/2011', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(51, '07/2011', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(52, '08/2011', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(53, '09/2011', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(54, '10/2011', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(55, '01/2012', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(56, '02/2012', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(57, '03/2012', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(58, '04/2012', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(59, '05/2012', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(60, '06/2012', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(61, '07/2012', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(62, '01/2013', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(63, '02/2013', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(64, '03/2013', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(65, '04/2013', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(66, '05/2013', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(67, '06/2013', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(68, '07/2013', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(69, '08/2013', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(70, '01/2014', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(71, '007/2016', '2017-01-19 15:42:59', '2017-01-19 15:42:59', NULL, 0, 0, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `engajamento_publicos`
--

CREATE TABLE `engajamento_publicos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) NOT NULL,
  `changed_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `engajamento_publicos`
--

INSERT INTO `engajamento_publicos` (`id`, `nome`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `changed_by`, `created_by`) VALUES
(1, 'Agendado / Mediado', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(2, 'Agente Cultural', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(3, 'Espontâneo', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(4, 'Pedagógico', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(5, 'Não se aplica', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `especie_acoes`
--

CREATE TABLE `especie_acoes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) NOT NULL,
  `changed_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `especie_acoes`
--

INSERT INTO `especie_acoes` (`id`, `nome`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `changed_by`, `created_by`) VALUES
(1, 'Ação de Acervo', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(2, 'Ação Educativa', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(3, 'Apresentação Artística', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(4, 'Desenvolvimento Institucional', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(5, 'Evento', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(6, 'Exibição', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(7, 'Exposição', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(8, 'Festival', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(9, 'Fomento', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(10, 'Mediação', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(11, 'Premiação', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(12, 'Produção de Materiais e/ou Obras Artísticas', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(13, 'Recebimento de Visitantes', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `formula_indice`
--

CREATE TABLE `formula_indice` (
  `id` int(11) NOT NULL,
  `descricao_formula` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Tabela para adicionar as formulas para os indices';

--
-- Extraindo dados da tabela `formula_indice`
--

INSERT INTO `formula_indice` (`id`, `descricao_formula`) VALUES
(1, '(select count(id) from atividades where plano_id = c.plano_id and programa_id = c.programa_id) as REALIZADO,');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcao_acoes`
--

CREATE TABLE `funcao_acoes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) NOT NULL,
  `changed_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `funcao_acoes`
--

INSERT INTO `funcao_acoes` (`id`, `nome`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `changed_by`, `created_by`) VALUES
(1, 'Criação', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(2, 'Difusão', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(3, 'Formação', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(4, 'Governança', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(5, 'Preservação', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `generos_linguagem`
--

CREATE TABLE `generos_linguagem` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linguagem_programa_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) NOT NULL,
  `changed_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `generos_linguagem`
--

INSERT INTO `generos_linguagem` (`id`, `nome`, `linguagem_programa_id`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `changed_by`, `created_by`) VALUES
(1, 'Instrumental Clássico', 1, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(2, 'Instrumental Contemporâneo', 1, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(3, 'Solista', 1, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(4, 'Jazz', 1, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(5, 'Blues', 1, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(6, 'Funk', 1, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(7, 'Soul', 1, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(8, 'Black Music', 1, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(9, 'Reggae', 1, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(10, 'Afro', 1, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(11, 'Hip-hop', 1, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(12, 'MC', 1, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(13, 'Rock', 1, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(14, 'DJ', 1, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(15, 'Eletrônino', 1, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(16, 'Latina', 1, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(17, 'MPB', 1, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(18, 'nova MPB', 1, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(19, 'Sertanejo tradicional', 1, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(20, 'Pagode', 1, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(21, 'Axé', 1, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(22, 'Chorinho', 1, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(23, 'Bossa Nova', 1, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(24, 'Sertaneja', 1, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(25, 'Samba', 1, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(26, 'Samba-rock', 1, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(27, 'Forró', 1, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(28, 'Tradicional', 2, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(29, 'Contemporâneo', 2, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(30, 'Circo-teatro', 2, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(31, 'Solo', 2, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(32, 'Aéreo', 2, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(33, 'Clown', 2, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(34, 'Clássica', 3, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(35, 'Contemporânea', 3, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(36, 'Popular', 3, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(37, 'Urbana', 3, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(38, 'Étnica', 3, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(39, 'Dança de Salão', 3, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(40, 'De rua', 4, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(41, 'Circo-teatro', 4, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(42, 'Drama', 4, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(43, 'Comédia', 4, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(44, 'Tragicomédia', 4, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(45, 'Experimental', 4, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(46, 'Monólogo', 4, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(47, 'Musical', 4, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(48, 'Stand up', 4, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(49, 'Leitura dramática', 4, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `indicadores`
--

CREATE TABLE `indicadores` (
  `id` int(10) UNSIGNED NOT NULL,
  `acao_id` int(10) UNSIGNED DEFAULT NULL,
  `plano_id` int(10) UNSIGNED DEFAULT NULL,
  `regra_id` int(10) UNSIGNED DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `meta_1_tri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_2_tri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_3_tri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_4_tri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) NOT NULL,
  `changed_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `indicadores`
--

INSERT INTO `indicadores` (`id`, `acao_id`, `plano_id`, `regra_id`, `status`, `meta_1_tri`, `meta_2_tri`, `meta_3_tri`, `meta_4_tri`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `changed_by`, `created_by`) VALUES
(2, 3, 1, 6, 0, '0', '24', '0', '0', '2016-08-30 12:19:41', '2017-05-11 17:08:30', NULL, 0, 19, 1),
(3, 3, 1, 0, 0, '0', '280', '0', '0', '2016-08-30 12:20:26', '2016-10-29 19:14:48', NULL, 0, 2, 1),
(4, 3, 1, 0, 0, '0', '300', '0', '0', '2016-08-30 12:22:15', '2016-10-29 19:18:29', NULL, 0, 2, 1),
(5, 3, 1, 0, 0, '0', '30%', '0', '0', '2016-08-30 12:25:43', '2016-10-29 19:19:07', NULL, 0, 2, 1),
(6, 3, 1, 0, 0, '0', '1100000', '233', '0', '2016-08-30 12:27:17', '2017-05-11 14:52:21', NULL, 0, 19, 1),
(7, 4, 1, 0, 0, '110', '110', '110', '110', '2016-08-30 12:33:07', '2016-10-29 19:20:27', NULL, 0, 2, 1),
(8, 4, 1, 0, 0, '43', '43', '43', '43', '2016-08-30 12:33:38', '2016-10-29 19:21:22', NULL, 0, 2, 1),
(9, 4, 1, 0, 0, '32', '32', '32', '32', '2016-08-30 12:34:20', '2016-10-29 19:21:59', NULL, 0, 2, 1),
(10, 4, 1, 0, 0, '32', '32', '32', '32', '2016-08-30 12:35:45', '2016-10-29 19:22:38', NULL, 0, 2, 1),
(11, 4, 1, 0, 0, '110', '330', '220', '220', '2016-08-30 12:37:11', '2016-10-29 19:23:21', NULL, 0, 2, 1),
(12, 4, 1, 0, 0, '100', '200', '300', '400', '2016-08-30 12:37:29', '2016-08-30 12:37:29', NULL, 0, 0, 1),
(13, 5, 1, 0, 0, '0', '0', '1', '0', '2016-08-30 12:37:51', '2016-10-29 19:23:56', NULL, 0, 2, 1),
(14, 5, 1, 32, 0, '0', '0', '30%', '0', '2016-08-30 12:38:19', '2017-05-11 16:57:30', NULL, 0, 19, 1),
(15, 1, 1, 0, 0, '0', '0', '8', '0', '2016-08-30 12:39:15', '2016-10-29 19:25:16', NULL, 0, 2, 1),
(16, 1, 1, 0, 0, '0', '0', '4', '0', '2016-08-30 12:40:19', '2016-10-29 19:25:57', NULL, 0, 2, 1),
(17, 1, 1, 0, 0, '0', '0', '7000', '0', '2016-08-30 12:40:52', '2016-10-29 19:26:39', NULL, 0, 2, 1),
(18, 1, 1, 0, 0, '0', '0', '6', '0', '2016-08-30 12:41:13', '2016-10-29 19:27:11', NULL, 0, 2, 1),
(19, 1, 1, 0, 0, '0', '0', '2500', '0', '2016-08-30 12:41:35', '2016-10-29 19:27:37', NULL, 0, 2, 1),
(20, 1, 1, 0, 0, '100', '200', '300', '400', '2016-08-30 12:42:02', '2016-08-31 16:53:11', '2016-08-31 16:53:11', 1, 0, 1),
(21, 2, 1, 0, 0, '0', '0', '23000', '0', '2016-08-30 12:42:31', '2016-10-29 19:28:30', NULL, 0, 2, 1),
(22, 2, 1, 0, 0, '0', '0', '48', '0', '2016-08-30 12:43:08', '2016-10-29 19:29:16', NULL, 0, 2, 1),
(23, 2, 1, 0, 0, '0', '0', '7', '0', '2016-08-30 12:43:41', '2016-10-29 19:29:42', NULL, 0, 2, 1),
(24, 2, 1, 0, 0, '0', '0', '1500', '0', '2016-08-30 12:44:06', '2016-10-29 19:30:36', NULL, 0, 2, 1),
(25, 6, 1, 0, 0, '2', '0', '0', '0', '2016-10-29 19:31:39', '2016-10-29 19:31:39', NULL, 0, 0, 2),
(26, 6, 1, 0, 0, '800', '0', '0', '0', '2016-10-29 19:32:24', '2016-10-29 19:32:24', NULL, 0, 0, 2),
(27, 7, 1, 0, 0, '9', '15', '14', '0', '2016-10-29 19:33:20', '2016-10-29 19:33:20', NULL, 0, 0, 2),
(28, 7, 1, 0, 0, '3', '6', '7', '0', '2016-10-29 19:34:16', '2016-10-29 19:34:16', NULL, 0, 0, 2),
(29, 7, 1, 0, 0, '1', '5', '4', '0', '2016-10-29 19:35:16', '2016-10-29 19:35:16', NULL, 0, 0, 2),
(30, 7, 1, 0, 0, '5', '4', '3', '0', '2016-10-29 19:36:59', '2017-02-01 11:18:47', NULL, 0, 2, 2),
(31, 7, 1, 0, 0, '3600', '4800', '4600', '0', '2016-10-29 19:37:58', '2016-10-29 19:37:58', NULL, 0, 0, 2),
(32, 8, 1, 0, 0, '0', '0', '0', '1', '2016-10-29 19:38:35', '2016-10-29 19:38:35', NULL, 0, 0, 2),
(33, 9, 1, 0, 0, '1', '4', '3', '3', '2016-10-29 19:39:28', '2016-10-29 19:39:28', NULL, 0, 0, 2),
(34, 9, 1, 0, 0, '1000', '20000', '10000', '10000', '2016-10-29 19:40:15', '2016-10-29 19:40:15', NULL, 0, 0, 2),
(35, 10, 1, 0, 0, '0', '1', '0', '0', '2016-10-29 19:41:12', '2016-10-29 19:41:12', NULL, 0, 0, 2),
(36, 10, 1, 0, 0, '0', '30', '0', '0', '2016-10-29 19:41:52', '2016-10-29 19:41:52', NULL, 0, 0, 2),
(37, 11, 1, 0, 0, '0', '2', '0', '0', '2016-10-29 19:42:38', '2016-10-29 19:42:38', NULL, 0, 0, 2),
(38, 11, 1, 0, 0, '0', '30', '0', '0', '2016-10-29 19:43:18', '2016-10-29 19:43:18', NULL, 0, 0, 2),
(39, 12, 1, 0, 0, '0', '7', '1', '3', '2016-10-29 19:44:15', '2016-10-29 19:44:15', NULL, 0, 0, 2),
(40, 12, 1, 0, 0, '0', '1000', '350', '500', '2016-10-29 19:45:07', '2016-10-29 19:45:07', NULL, 0, 0, 2),
(41, 12, 1, 0, 0, '0', '12', '1', '1', '2016-10-29 19:46:53', '2016-10-29 19:46:53', NULL, 0, 0, 2),
(42, 13, 1, 0, 0, '0', '2', '0', '5', '2016-10-29 19:47:37', '2016-10-29 19:47:37', NULL, 0, 0, 2),
(43, 14, 1, 0, 0, '0', '5000', '350', '2000', '2016-10-29 19:48:26', '2016-10-29 19:48:26', NULL, 0, 0, 2),
(44, 15, 1, 0, 0, '30', '70', '50', '35', '2016-10-29 19:49:16', '2016-10-29 19:49:16', NULL, 0, 0, 2),
(45, 15, 1, 0, 0, '2000', '5000', '2000', '2600', '2016-10-29 19:50:03', '2016-10-29 19:50:03', NULL, 0, 0, 2),
(46, 16, 1, 0, 0, '20', '40', '40', '30', '2016-10-29 19:53:59', '2016-10-29 19:53:59', NULL, 0, 0, 2),
(47, 16, 1, 0, 0, '5000', '18000', '18000', '11000', '2016-10-29 19:54:43', '2016-10-29 19:54:43', NULL, 0, 0, 2),
(48, 17, 1, 0, 0, '10', '20', '19', '9', '2016-10-29 20:52:19', '2016-10-29 20:52:19', NULL, 0, 0, 2),
(49, 17, 1, 0, 0, '2000', '5000', '4000', '2600', '2016-10-29 20:53:07', '2016-10-29 20:53:07', NULL, 0, 0, 2),
(50, 18, 1, 0, 0, '0', '0', '0', '9', '2016-10-29 20:54:00', '2016-10-29 20:54:00', NULL, 0, 0, 2),
(51, 18, 1, 0, 0, '0', '0', '0', '2000', '2016-10-29 20:54:40', '2016-10-29 20:54:40', NULL, 0, 0, 2),
(52, 19, 1, 0, 0, '1', '2', '1', '2', '2016-10-29 20:55:28', '2016-10-29 20:55:28', NULL, 0, 0, 2),
(53, 19, 1, 0, 0, '150', '300', '200', '400', '2016-10-29 20:56:24', '2016-10-29 20:56:24', NULL, 0, 0, 2),
(54, 20, 1, 0, 0, '1', '0', '1', '0', '2016-10-29 20:57:15', '2016-10-29 20:57:15', NULL, 0, 0, 2),
(55, 20, 1, 0, 0, '5000', '5000', '5000', '5000', '2016-10-29 20:58:11', '2016-10-29 20:58:11', NULL, 0, 0, 2),
(56, 21, 1, 0, 0, '0', '3', '3', '0', '2016-10-29 21:01:53', '2016-10-29 21:01:53', NULL, 0, 0, 2),
(57, 21, 1, 0, 0, '0', '3', '3', '0', '2016-10-29 21:02:38', '2016-12-15 12:48:13', NULL, 0, 2, 2),
(58, 21, 1, 0, 0, '0', '3', '3', '0', '2016-10-29 21:03:24', '2016-10-29 21:03:24', NULL, 0, 0, 2),
(59, 21, 1, 0, 0, '0', '3', '3', '0', '2016-10-29 21:04:22', '2016-10-29 21:04:22', NULL, 0, 0, 2),
(60, 21, 1, 0, 0, '0', '0', '2', '0', '2016-10-29 21:05:02', '2016-10-29 21:05:02', NULL, 0, 0, 2),
(61, 22, 1, 6, 0, '0', '0', '0', '35%', '2016-10-29 21:06:18', '2017-05-11 18:24:24', NULL, 0, 19, 2),
(62, 23, 1, 0, 0, '0', '1', '0', '0', '2016-10-29 21:07:59', '2016-10-29 21:07:59', NULL, 0, 0, 2),
(63, 23, 1, 0, 0, '0', '30', '0', '0', '2016-10-29 21:08:36', '2016-10-29 21:08:36', NULL, 0, 0, 2),
(64, 24, 1, 0, 0, '0', '2', '0', '0', '2016-10-29 21:09:32', '2016-10-29 21:09:32', NULL, 0, 0, 2),
(65, 24, 1, 0, 0, '0', '2', '0', '0', '2016-10-29 21:10:11', '2016-10-29 21:10:11', NULL, 0, 0, 2),
(66, 25, 1, 0, 0, '0', '5', '0', '0', '2016-10-29 21:11:07', '2017-05-17 18:22:06', '2017-05-17 18:22:06', 19, 0, 2),
(67, 25, 1, 0, 0, '0', '1000', '0', '0', '2016-10-29 21:11:49', '2016-10-29 21:11:49', NULL, 0, 0, 2),
(68, 25, 1, 0, 0, '0', '8', '0', '0', '2016-10-29 21:12:39', '2017-05-17 18:21:41', '2017-05-17 18:21:41', 19, 0, 2),
(69, 26, 1, 0, 0, '0', '2', '0', '0', '2016-10-29 21:13:14', '2017-05-17 18:21:36', '2017-05-17 18:21:36', 19, 0, 2),
(70, 27, 1, 0, 0, '0', '3000', '0', '0', '2016-10-29 21:14:02', '2017-05-17 18:17:49', '2017-05-17 18:17:49', 19, 0, 2),
(71, 30, 1, 0, 0, '0', '0', '0', '3', '2016-10-29 21:15:19', '2016-10-29 21:15:19', NULL, 0, 0, 2),
(72, 30, 1, 0, 0, '0', '0', '0', '6', '2016-10-29 21:16:23', '2017-05-17 18:21:33', '2017-05-17 18:21:33', 19, 0, 2),
(73, 30, 1, 0, 0, '0', '0', '0', '2700', '2016-10-29 21:17:16', '2017-05-17 18:20:35', '2017-05-17 18:20:35', 19, 0, 2),
(74, 30, 1, 0, 0, '0', '0', '0', '750', '2016-10-29 21:18:23', '2017-05-17 18:17:42', '2017-05-17 18:17:42', 19, 0, 2),
(75, 32, 1, 0, 0, '0', '0', '0', '3', '2016-10-29 21:19:18', '2017-05-17 18:16:39', '2017-05-17 18:16:39', 19, 19, 2),
(76, 33, 1, 0, 0, '0', '0', '0', '3', '2016-10-29 21:19:58', '2017-05-17 18:14:09', '2017-05-17 18:14:09', 19, 0, 2),
(77, 33, 1, 0, 0, '0', '0', '0', '25', '2016-10-29 21:20:49', '2017-05-17 18:14:05', '2017-05-17 18:14:05', 19, 2, 2),
(78, 34, 1, 0, 0, '4', '4', '0', '0', '2016-10-29 21:22:04', '2017-05-17 18:14:01', '2017-05-17 18:14:01', 19, 0, 2),
(79, 34, 1, 0, 0, '20', '14', '0', '0', '2016-10-29 21:23:10', '2017-05-17 18:05:10', '2017-05-17 18:05:10', 19, 0, 2),
(80, 34, 1, 0, 0, '25000', '16000', '0', '0', '2016-10-29 21:23:58', '2017-05-17 18:02:10', '2017-05-17 18:02:10', 19, 0, 2),
(81, 35, 1, 0, 0, '0', '0', '50', '0', '2016-10-29 21:24:48', '2017-05-17 18:02:05', '2017-05-17 18:02:05', 19, 0, 2),
(82, 36, 1, 0, 0, '0', '0', '30', '0', '2016-10-29 21:25:36', '2017-05-17 18:02:02', '2017-05-17 18:02:02', 19, 0, 2),
(83, 36, 1, 0, 0, '0', '0', '8', '0', '2016-10-29 21:26:54', '2017-05-17 18:01:55', '2017-05-17 18:01:55', 19, 0, 2),
(84, 36, 1, 0, 0, '0', '0', '22', '0', '2016-10-29 21:27:43', '2017-05-17 18:01:50', '2017-05-17 18:01:50', 19, 0, 2),
(85, 36, 1, 0, 0, '0', '0', '2500', '0', '2016-10-29 21:28:30', '2017-05-17 18:01:45', '2017-05-17 18:01:45', 19, 0, 2),
(86, 37, 1, 0, 0, '0', '0', '1', '0', '2016-10-29 21:29:24', '2017-05-17 18:00:44', '2017-05-17 18:00:44', 19, 0, 2),
(87, 37, 1, 0, 0, '0', '0', '5', '0', '2016-10-29 21:30:06', '2017-05-17 17:59:40', '2017-05-17 17:59:40', 19, 0, 2),
(88, 37, 1, 0, 0, '0', '0', '2', '0', '2016-10-29 21:30:58', '2017-05-17 17:58:11', '2017-05-17 17:58:11', 19, 0, 2),
(89, 38, 1, 0, 0, '42', '123', '42', '1', '2016-10-29 21:31:51', '2017-05-17 17:54:34', '2017-05-17 17:54:34', 19, 19, 2),
(112, 111, 2, 0, 0, '10', '20', '30', '40', '2017-02-05 02:22:05', '2017-05-17 17:54:14', '2017-05-17 17:54:14', 19, 1, 1),
(114, 4, 1, 6, 0, '1022', '1042', '10', '10', '2017-02-05 02:44:16', '2017-05-17 15:56:32', '2017-05-17 15:56:32', 19, 19, 1),
(115, 113, 2, 6, 0, '25', '25', '25', '25', '2017-02-05 02:48:25', '2017-05-17 15:56:21', '2017-05-17 15:56:21', 19, 19, 1),
(149, 114, 3, 0, 0, '10', '20', '30', '40', '2017-02-06 23:55:37', '2017-05-11 19:57:10', '2017-05-11 19:57:10', 19, 1, 1),
(150, 114, 3, 0, 0, '20', '30', '40', '50', '2017-02-06 23:56:24', '2017-05-11 19:57:05', '2017-05-11 19:57:05', 19, 1, 1),
(151, 115, 3, 0, 0, '20', '30', '25', '50', '2017-02-07 00:02:52', '2017-05-11 17:42:29', '2017-05-11 17:42:29', 19, 0, 1),
(152, 115, 3, 0, 0, '36', '36', '36', '36', '2017-02-07 00:03:34', '2017-05-11 17:42:21', '2017-05-11 17:42:21', 19, 0, 1),
(153, 116, 3, 0, 0, '25', '25', '25', '25', '2017-02-07 00:06:40', '2017-05-11 20:00:22', '2017-05-11 20:00:22', 19, 1, 1),
(154, 117, 3, 0, 0, '258', '258', '36', '25', '2017-02-07 00:08:45', '2017-05-11 20:00:10', '2017-05-11 20:00:10', 19, 1, 1),
(155, 117, 3, 0, 0, '369', '36', '36', '36', '2017-02-07 00:11:07', '2017-05-11 20:00:08', '2017-05-11 20:00:08', 19, 1, 1),
(156, 114, 3, 0, 0, '25', '25', '25', '25', '2017-02-07 11:09:27', '2017-05-11 19:56:55', '2017-05-11 19:56:55', 19, 0, 1),
(157, 114, 3, 6, 0, '26', '36', '36', '36', '2017-02-07 11:10:57', '2017-05-11 19:56:50', '2017-05-11 19:56:50', 19, 19, 1),
(158, 114, 3, 0, 0, '36', '36', '36', '39', '2017-02-07 11:11:38', '2017-05-11 19:56:45', '2017-05-11 19:56:45', 19, 1, 1),
(159, 115, 3, 0, 0, '36', '25', '36', '36', '2017-02-07 11:17:08', '2017-05-11 17:42:00', '2017-05-11 17:42:00', 19, 0, 1),
(160, 115, 3, 0, 0, '63', '221', '63', '63', '2017-02-07 11:18:06', '2017-05-11 19:56:00', '2017-05-11 19:56:00', 19, 19, 1),
(161, 115, 3, 0, 0, '65', '65', '65', '65', '2017-02-07 11:19:32', '2017-05-11 17:42:12', '2017-05-11 17:42:12', 19, 0, 1),
(162, 115, 3, 0, 0, '658', '58', '58', '58', '2017-02-07 11:20:11', '2017-05-11 17:42:07', '2017-05-11 17:42:07', 19, 0, 1),
(163, 116, 3, 32, 0, '65', '56', '55', '665', '2017-02-07 11:22:18', '2017-05-11 20:00:05', '2017-05-11 20:00:05', 19, 19, 1),
(164, 117, 3, 0, 0, '36', '36', '36', '36', '2017-02-07 11:24:50', '2017-05-11 20:00:03', '2017-05-11 20:00:03', 19, 0, 1),
(165, 117, 3, 0, 0, '65', '65', '65', '65', '2017-02-07 11:25:23', '2017-05-11 20:00:01', '2017-05-11 20:00:01', 19, 0, 1),
(166, 117, 3, 0, 0, '69', '69', '69', '69', '2017-02-07 11:25:55', '2017-05-11 19:59:59', '2017-05-11 19:59:59', 19, 0, 1),
(167, 119, 3, 30, 0, '56', '26', '25', '66', '2017-02-07 11:32:43', '2017-05-11 19:59:57', '2017-05-11 19:59:57', 19, 19, 1),
(168, 119, 3, 0, 0, '69', '69', '69', '69', '2017-02-07 11:35:32', '2017-05-11 19:59:55', '2017-05-11 19:59:55', 19, 0, 1),
(169, 119, 3, 0, 0, '36', '36', '36', '36', '2017-02-07 11:36:16', '2017-05-11 19:59:53', '2017-05-11 19:59:53', 19, 0, 1),
(170, 119, 3, 0, 0, '98', '98', '98', '98', '2017-02-07 11:36:47', '2017-05-11 19:59:51', '2017-05-11 19:59:51', 19, 0, 1),
(171, 120, 3, 0, 0, '98', '98', '98', '98', '2017-02-07 11:42:38', '2017-05-11 19:59:49', '2017-05-11 19:59:49', 19, 0, 1),
(172, 120, 3, 0, 0, '87', '87', '87', '87', '2017-02-07 11:43:06', '2017-05-11 19:59:47', '2017-05-11 19:59:47', 19, 0, 1),
(173, 120, 3, 0, 0, '8', '8', '8', '8', '2017-02-07 11:43:44', '2017-02-07 11:44:06', '2017-02-07 11:44:06', 1, 0, 1),
(174, 121, 3, 0, 0, '99', '99', '99', '99', '2017-02-07 11:45:29', '2017-05-11 19:59:45', '2017-05-11 19:59:45', 19, 0, 1),
(175, 121, 3, 6, 0, '88', '88', '88', '88', '2017-02-07 11:46:02', '2017-05-11 19:57:31', '2017-05-11 19:57:31', 19, 19, 1),
(176, 121, 3, 0, 0, '99', '99', '99', '99', '2017-02-07 11:46:33', '2017-05-11 19:59:43', '2017-05-11 19:59:43', 19, 0, 1),
(177, 121, 3, 0, 0, '88', '88', '88', '88', '2017-02-07 11:47:05', '2017-05-11 19:59:40', '2017-05-11 19:59:40', 19, 0, 1),
(178, 121, 3, 0, 0, '10', '15', '15', '25', '2017-02-07 11:47:36', '2017-05-11 19:59:13', '2017-05-11 19:59:13', 19, 0, 1),
(179, 122, 3, 0, 0, '1', '1', '2', '3', '2017-02-07 11:51:32', '2017-05-11 19:59:07', '2017-05-11 19:59:07', 19, 1, 1),
(180, 123, 3, 0, 0, '55', '55', '55', '55', '2017-02-07 11:53:16', '2017-05-11 19:58:54', '2017-05-11 19:58:54', 19, 0, 1),
(181, 123, 3, 0, 0, '12', '12', '12', '12', '2017-02-07 11:53:50', '2017-05-11 19:58:47', '2017-05-11 19:58:47', 19, 0, 1),
(182, 124, 3, 0, 0, '11', '11', '11', '11', '2017-02-07 11:55:08', '2017-05-11 19:58:45', '2017-05-11 19:58:45', 19, 1, 1),
(183, 124, 3, 0, 0, '22', '22', '22', '22', '2017-02-07 11:56:08', '2017-05-11 19:58:43', '2017-05-11 19:58:43', 19, 0, 1),
(184, 125, 3, 0, 0, '33', '33', '33', '33', '2017-02-07 11:57:25', '2017-05-11 19:58:41', '2017-05-11 19:58:41', 19, 0, 1),
(185, 125, 3, 0, 0, '44', '44', '44', '44', '2017-02-07 11:57:53', '2017-05-11 19:58:39', '2017-05-11 19:58:39', 19, 0, 1),
(186, 126, 3, 6, 0, '77', '7', '7', '7', '2017-02-07 11:59:18', '2017-05-11 19:58:37', '2017-05-11 19:58:37', 19, 19, 1),
(187, 126, 3, 0, 0, '66', '66', '66', '66', '2017-02-07 11:59:58', '2017-05-11 19:58:35', '2017-05-11 19:58:35', 19, 0, 1),
(188, 126, 3, 0, 0, '44', '44', '44', '44', '2017-02-07 12:00:40', '2017-05-11 19:58:33', '2017-05-11 19:58:33', 19, 0, 1),
(189, 127, 3, 0, 0, '77', '77', '77', '77', '2017-02-07 12:02:15', '2017-05-11 19:58:31', '2017-05-11 19:58:31', 19, 0, 1),
(190, 128, 3, 0, 0, '56', '666', '66', '66', '2017-02-07 13:17:32', '2017-05-11 19:58:29', '2017-05-11 19:58:29', 19, 0, 1),
(191, 129, 3, 0, 0, '99', '99', '99', '99', '2017-02-07 13:18:52', '2017-05-11 19:58:27', '2017-05-11 19:58:27', 19, 0, 1),
(192, 129, 3, 0, 0, '99', '99', '99', '99', '2017-02-07 13:19:20', '2017-05-11 19:58:25', '2017-05-11 19:58:25', 19, 0, 1),
(193, 130, 3, 0, 0, '22', '22', '22', '22', '2017-02-07 13:20:39', '2017-05-11 19:58:23', '2017-05-11 19:58:23', 19, 0, 1),
(194, 130, 3, 0, 0, '66', '66', '66', '66', '2017-02-07 13:20:59', '2017-05-11 19:58:21', '2017-05-11 19:58:21', 19, 0, 1),
(195, 131, 3, 0, 0, '78', '78', '78', '78', '2017-02-07 13:22:23', '2017-05-11 19:58:19', '2017-05-11 19:58:19', 19, 0, 1),
(196, 131, 3, 0, 0, '66', '66', '66', '66', '2017-02-07 13:22:42', '2017-05-11 19:58:12', '2017-05-11 19:58:12', 19, 0, 1),
(197, 132, 3, 0, 0, '55', '5', '55', '55', '2017-02-07 13:24:03', '2017-05-11 19:58:10', '2017-05-11 19:58:10', 19, 0, 1),
(198, 132, 3, 0, 0, '33', '33', '33', '33', '2017-02-07 13:24:24', '2017-05-11 19:58:08', '2017-05-11 19:58:08', 19, 0, 1),
(199, 133, 3, 0, 0, '888', '88', '88', '88', '2017-02-07 13:26:05', '2017-05-11 19:58:06', '2017-05-11 19:58:06', 19, 0, 1),
(200, 133, 3, 0, 0, '99', '99', '99', '99', '2017-02-07 13:26:25', '2017-05-11 19:58:04', '2017-05-11 19:58:04', 19, 0, 1),
(201, 134, 3, 0, 0, '925', '255', '255', '255', '2017-02-07 13:28:12', '2017-05-11 19:58:02', '2017-05-11 19:58:02', 19, 1, 1),
(202, 134, 3, 0, 0, '456', '455', '55', '555', '2017-02-07 13:28:35', '2017-05-11 19:58:00', '2017-05-11 19:58:00', 19, 0, 1),
(203, 135, 3, 0, 0, '899', '999', '99', '9999', '2017-02-07 13:31:40', '2017-05-11 19:57:58', '2017-05-11 19:57:58', 19, 0, 1),
(204, 135, 3, 0, 0, '588', '558', '558', '5858', '2017-02-07 13:32:18', '2017-05-11 19:57:56', '2017-05-11 19:57:56', 19, 0, 1),
(205, 135, 3, 0, 0, '999', '999', '999', '999', '2017-02-07 13:33:00', '2017-05-11 19:57:54', '2017-05-11 19:57:54', 19, 0, 1),
(206, 135, 3, 0, 0, '56', '565', '65656', '6565', '2017-02-07 13:33:44', '2017-05-11 19:57:52', '2017-05-11 19:57:52', 19, 0, 1),
(207, 135, 3, 0, 0, '65', '6565', '6565', '656', '2017-02-07 13:34:15', '2017-05-11 19:57:49', '2017-05-11 19:57:49', 19, 0, 1),
(208, 140, 3, 6, 0, '5454', '45454', '5454', '45545', '2017-02-07 13:36:27', '2017-05-11 18:29:51', '2017-05-11 18:29:51', 19, 19, 1),
(209, 137, 3, 0, 0, '100', '100', '100', '100', '2017-05-04 17:54:49', '2017-05-08 20:12:07', '2017-05-08 20:12:07', 19, 0, 19),
(210, 138, 1, 0, 0, '100', '100', '100', '100', '2017-05-04 18:11:04', '2017-05-08 20:12:05', '2017-05-08 20:12:05', 19, 0, 19),
(211, 112, 2, 0, 0, '111', '11', '11', '11', '2017-05-08 20:10:15', '2017-05-08 20:12:02', '2017-05-08 20:12:02', 19, 0, 19),
(212, 137, 3, 18, 0, '11124', '111', '111', '111', '2017-05-08 20:12:20', '2017-05-11 19:57:42', '2017-05-11 19:57:42', 19, 19, 19),
(213, 111, 2, 0, 0, '111', '111', '111', '111', '2017-05-08 20:14:53', '2017-05-11 15:29:13', '2017-05-11 15:29:13', 19, 19, 19),
(214, 111, 2, 0, 0, '124', '124', '2142', '11', '2017-05-08 20:17:37', '2017-05-11 15:29:09', '2017-05-11 15:29:09', 19, 19, 19),
(219, 138, 3, 6, 0, '114', '11221', '112', '111', '2017-05-09 14:39:51', '2017-05-11 15:25:36', '2017-05-11 15:25:36', 19, 19, 19),
(220, 139, 4, 6, 0, '100', '100', '100', '10000', '2017-05-09 17:28:00', '2017-05-09 18:27:43', '2017-05-09 18:27:43', 19, 19, 19),
(221, 137, 3, 6, 0, '1002', '1240', '124120', '12412', '2017-05-11 15:06:16', '2017-05-11 19:57:39', '2017-05-11 19:57:39', 19, 19, 19),
(222, 138, 3, 0, 0, '1412', '12412', '124', '1111111111', '2017-05-11 15:31:12', '2017-05-11 19:57:37', '2017-05-11 19:57:37', 19, 19, 19),
(223, 136, 3, 28, 0, '2414', '0', '100', '0', '2017-05-11 18:29:03', '2017-05-11 19:55:44', '2017-05-11 19:55:44', 19, 19, 19),
(224, 137, 3, 18, 0, '124', '421', '12', '1212', '2017-05-11 19:37:37', '2017-05-11 19:57:35', '2017-05-11 19:57:35', 19, 19, 19),
(225, 116, 3, 0, 0, '10', '2', '1', '4', '2017-05-11 20:02:54', '2017-05-16 18:29:54', '2017-05-16 18:29:54', 19, 19, 19),
(226, 116, 3, 31, 0, '12412', '142241', '12412', '124124', '2017-05-11 20:09:41', '2017-05-16 18:29:46', '2017-05-16 18:29:46', 19, 0, 19),
(227, 116, 3, 31, 0, '24', '12', '42', '12', '2017-05-18 15:43:55', '2017-05-18 15:43:55', NULL, 0, 0, 19),
(228, 116, 3, 37, 0, '12500', '10500', '14500', '4000', '2017-05-16 15:02:33', '2017-05-16 15:02:33', NULL, 0, 0, 2),
(229, 141, 3, 18, 0, '5', '20', '10', '20', '2017-05-16 15:31:46', '2017-05-19 20:20:48', NULL, 0, 19, 2),
(230, 141, 3, 27, 0, '2100', '8400', '4200', '8400', '2017-05-16 15:33:34', '2017-05-16 15:33:34', NULL, 0, 0, 2),
(231, 142, 3, 65, 0, '1', '22', '2', '1', '2017-05-17 16:40:37', '2017-05-19 18:04:33', NULL, 0, 19, 2),
(232, 144, 3, 31, 0, '1', '1', '0', '1', '2017-05-17 20:13:19', '2017-05-17 20:13:19', NULL, 0, 0, 2),
(233, 144, 3, 27, 0, '5400', '5400', '5400', '5400', '2017-05-17 20:14:21', '2017-05-17 20:14:21', NULL, 0, 0, 2),
(234, 145, 3, 31, 0, '2', '2', '2', '2', '2017-05-17 20:16:05', '2017-05-17 20:16:05', NULL, 0, 0, 2),
(235, 145, 3, 0, 0, '2', '2', '2', '2', '2017-05-17 20:17:53', '2017-05-18 16:49:14', NULL, 0, 2, 2),
(236, 145, 3, 27, 0, '400', '400', '400', '400', '2017-05-17 20:18:48', '2017-05-17 20:18:48', NULL, 0, 0, 2),
(237, 116, 3, 71, 0, '10', '20', '11', '11', '2017-05-22 13:50:20', '2017-05-22 13:50:20', NULL, 0, 0, 19),
(238, 116, 3, 72, 0, '22', '1', '2', '1', '2017-05-22 14:04:02', '2017-05-22 14:04:02', NULL, 0, 0, 19);

-- --------------------------------------------------------

--
-- Estrutura da tabela `linguagem_acoes`
--

CREATE TABLE `linguagem_acoes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) NOT NULL,
  `changed_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `linguagem_acoes`
--

INSERT INTO `linguagem_acoes` (`id`, `nome`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `changed_by`, `created_by`) VALUES
(1, 'Artes Cênicas', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(2, 'Artes da Palavra', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(3, 'Artes Visuais', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(4, 'Audiovisual e Artes Digitais', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(5, 'Gestão Cultural', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(6, 'Multilinguagens', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(7, 'Música', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(8, 'Patrimônio Cultural', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `linguagem_programas`
--

CREATE TABLE `linguagem_programas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) NOT NULL,
  `changed_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `linguagem_programas`
--

INSERT INTO `linguagem_programas` (`id`, `nome`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `changed_by`, `created_by`) VALUES
(1, 'Música', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(2, 'Circo', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(3, 'Dança', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(4, 'Teatro', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(5, 'Literatura', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(6, 'Artes Visuais', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(7, 'Cultura Popular', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(8, 'Artes Urbanas', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_07_21_021605_create_users_table', 1),
('2016_07_23_035058_create_cgs_table', 1),
('2016_07_26_005828_create_objetos_table', 1),
('2016_07_26_012631_create_uges_table', 1),
('2016_07_26_021551_create_oss_table', 1),
('2016_07_26_024803_create_tipagems_table', 1),
('2016_07_26_024910_create_tipo_objetos_table', 1),
('2016_08_01_122912_create_planos_table', 1),
('2016_08_02_000521_create_rotinas_table', 1),
('2016_08_02_111101_create_tipo_publicos_table', 1),
('2016_08_02_114102_create_engajamento_publicos_table', 1),
('2016_08_02_115900_create_regiao_administrativas_table', 1),
('2016_08_02_121043_create_municipios_table', 1),
('2016_08_11_110541_create_segmento_publicos_table', 1),
('2016_08_11_115744_create_realizadores_table', 1),
('2016_08_11_132455_create_linguagem_programas_table', 1),
('2016_08_11_164924_create_tipo_eventos_table', 1),
('2016_08_11_171133_create_especie_acoes_table', 1),
('2016_08_12_094131_create_linguagem_acoes_table', 1),
('2016_08_12_101143_create_funcao_acoes_table', 1),
('2016_08_15_121118_create_programas_table', 1),
('2016_08_15_124158_create_acoes_table', 1),
('2016_08_19_100849_create_generos_linguagem_table', 1),
('2016_08_19_103147_create_atividades_table', 1),
('2016_08_17_163954_create_indicadores_table', 1),
('2016_09_05_112951_create_permissoes_usuarios_table', 1),
('2017_05_03_162555_create_regra_table', 2),
('2017_05_03_170059_create_regra_table', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `municipios`
--

CREATE TABLE `municipios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `regiaoadministrativa_id` int(10) UNSIGNED DEFAULT NULL,
  `distancia` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) NOT NULL,
  `changed_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `municipios`
--

INSERT INTO `municipios` (`id`, `nome`, `regiaoadministrativa_id`, `distancia`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `changed_by`, `created_by`) VALUES
(1, 'Américo Brasiliense', 1, 285, '2016-08-23 10:40:09', '2016-08-23 10:40:09', NULL, 0, 0, 1),
(2, 'Araraquara', 1, 273, '2016-08-23 10:40:23', '2016-08-23 10:40:23', NULL, 0, 0, 1),
(3, 'Boa Esperança do Sul', 1, 301, '2016-08-23 10:40:41', '2016-08-23 10:40:41', NULL, 0, 0, 1),
(4, 'Alto Alegre', 2, 502, '2016-08-23 10:41:09', '2016-08-23 10:41:09', NULL, 0, 0, 1),
(5, 'Andradina', 2, 640, '2016-08-23 10:41:37', '2016-08-23 10:41:37', NULL, 0, 0, 1),
(6, 'Barbosa', 2, 521, '2016-08-23 10:41:55', '2016-08-23 10:41:55', NULL, 0, 0, 1),
(7, 'Barretos', 3, 424, '2016-08-23 10:42:18', '2016-08-23 10:42:18', NULL, 0, 0, 1),
(8, 'Olímpia', 3, 443, '2016-08-23 10:42:45', '2016-08-23 10:42:45', NULL, 0, 0, 1),
(9, 'Terra Roxa', 3, 410, '2016-08-23 10:43:11', '2016-08-23 10:43:11', NULL, 0, 0, 1),
(10, 'Agudos', 4, 325, '2016-08-23 10:43:42', '2016-08-23 10:43:42', NULL, 0, 0, 1),
(11, 'Jaú', 4, 269, '2016-08-23 10:44:15', '2016-08-23 10:44:15', NULL, 0, 0, 1),
(12, 'Bauru', 4, 343, '2016-08-23 10:44:46', '2016-08-23 10:44:46', NULL, 0, 0, 1),
(13, 'Águas de São Pedro', 5, 190, '2016-08-23 10:45:26', '2016-08-23 10:45:26', NULL, 0, 0, 1),
(14, 'Piracicaba', 5, 162, '2016-08-23 10:46:05', '2016-08-23 10:46:05', NULL, 0, 0, 1),
(15, 'Campinas', 5, 95, '2016-08-23 10:46:27', '2016-08-23 10:46:27', NULL, 0, 0, 1),
(16, 'Franca', 6, 400, '2016-08-23 10:46:56', '2016-08-23 10:46:56', NULL, 0, 0, 1),
(17, 'Batatais', 6, 353, '2016-08-23 11:02:01', '2016-08-23 11:03:01', NULL, 0, 1, 1),
(18, 'Pedregulho', 6, 440, '2016-08-23 11:03:35', '2016-08-23 11:03:35', NULL, 0, 0, 1),
(19, 'Nova Campina', 7, 302, '2016-08-23 11:05:19', '2016-08-23 11:05:19', NULL, 0, 0, 1),
(20, 'Paranapanema', 7, 256, '2016-08-23 11:05:58', '2016-08-23 11:05:58', NULL, 0, 0, 1),
(21, 'Itapeva', 7, 284, '2016-08-23 11:06:28', '2016-08-23 11:06:28', NULL, 0, 0, 1),
(22, 'Marília', 8, 444, '2016-08-23 11:07:19', '2016-08-23 11:07:19', NULL, 0, 0, 1),
(23, 'Ourinhos', 8, 370, '2016-08-23 11:07:46', '2016-08-23 11:07:46', NULL, 0, 0, 1),
(24, 'Chavantes', 8, 348, '2016-08-23 11:08:15', '2016-08-23 11:08:15', NULL, 0, 0, 1),
(25, 'Adamantina', 9, 593, '2016-08-23 11:08:46', '2016-08-23 11:08:46', NULL, 0, 0, 1),
(26, 'Ouro Verde', 9, 673, '2016-08-23 11:09:16', '2016-08-23 11:09:16', NULL, 0, 0, 1),
(27, 'Presidente Prudente', 9, 550, '2016-08-23 11:09:38', '2016-08-23 11:09:38', NULL, 0, 0, 1),
(28, 'Sete Barras', 10, 190, '2016-08-23 11:10:16', '2016-08-23 11:10:16', NULL, 0, 0, 1),
(29, 'Cananéia', 10, 243, '2016-08-23 11:10:55', '2016-08-23 11:10:55', NULL, 0, 0, 1),
(30, 'Registro', 10, 175, '2016-08-23 11:11:14', '2016-08-23 11:11:14', NULL, 0, 0, 1),
(31, 'Altinópolis', 11, 347, '2016-08-23 11:11:44', '2016-08-23 11:11:44', NULL, 0, 0, 1),
(32, 'Pitangueiras', 11, 364, '2016-08-23 11:12:10', '2016-08-23 11:12:10', NULL, 0, 0, 1),
(33, 'Bertioga', 12, 92, '2016-08-23 11:12:54', '2016-08-23 11:12:54', NULL, 0, 0, 1),
(34, 'Praia Grande', 12, 67, '2016-08-23 11:13:17', '2016-08-23 11:13:17', NULL, 0, 0, 1),
(35, 'Santos', 12, 55, '2016-08-23 11:13:36', '2016-08-23 11:13:36', NULL, 0, 0, 1),
(36, 'Adolfo', 13, 494, '2016-08-23 11:14:05', '2016-08-23 11:14:05', NULL, 0, 0, 1),
(37, 'Mirassol', 13, 453, '2016-08-23 11:14:31', '2016-08-23 11:14:31', NULL, 0, 0, 1),
(38, 'São José do Rio Preto', 13, 440, '2016-08-23 11:14:58', '2016-08-23 11:14:58', NULL, 0, 0, 1),
(39, 'Aparecida', 14, 167, '2016-08-23 11:15:43', '2016-08-23 11:15:43', NULL, 0, 0, 1),
(40, 'Bananal', 14, 348, '2016-08-23 11:16:04', '2016-08-23 11:16:04', NULL, 0, 0, 1),
(41, 'São José dos Campos', 14, 91, '2016-08-23 11:16:22', '2016-08-23 11:16:22', NULL, 0, 0, 1),
(42, 'São Roque', 15, 62, '2016-08-23 11:17:00', '2016-08-23 11:17:00', NULL, 0, 0, 1),
(43, 'Tietê', 15, 159, '2016-08-23 11:17:35', '2016-08-23 11:17:35', NULL, 0, 0, 1),
(44, 'Sorocaba', 15, 100, '2016-08-23 11:18:01', '2016-08-23 11:18:01', NULL, 0, 0, 1),
(45, 'Caieiras', 16, 35, '2016-08-23 11:18:28', '2016-08-23 11:18:28', NULL, 0, 0, 1),
(46, 'Guarulhos', 16, 15, '2016-08-23 11:18:53', '2016-08-23 11:18:53', NULL, 0, 0, 1),
(47, 'São Paulo', 16, 1, '2016-08-23 11:19:18', '2017-02-01 16:27:20', NULL, 0, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `objetos`
--

CREATE TABLE `objetos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) NOT NULL,
  `changed_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `objetos`
--

INSERT INTO `objetos` (`id`, `nome`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `changed_by`, `created_by`) VALUES
(1, 'Apoio a Festivais', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(2, 'Apoio ao SiSEM', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(3, 'Atendimento aos Municípios', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(4, 'Auditório Cláudio Santoro', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(5, 'Banda do Estado de São Paulo', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(6, 'Biblioteca de São Paulo', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(7, 'Biblioteca Parque Villa Lobos', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(8, 'Casa das Rosas – Espaço Haroldo de Campos de Poesia e Literatura', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(9, 'Casa Guilherme de Almeida', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(10, 'Centro Cultural de Estudos Superiores Aúthos Pagano', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(11, 'Circuito Cultural Paulista', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(12, 'Complexo Cultural Julio Prestes / Sala São Paulo', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(13, 'Conservatório Dramático e Musical ”Dr. Carlos de Campos” de  Tatuí', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(14, 'Cultura Livre de São Paulo', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(15, 'EMESP Tom Jobim – Escola de Música do Estado de São Paulo', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(16, 'Espaço Cultural da Criança / Museu Catavento', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(17, 'Estação Pinacoteca', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(18, 'Fábrica de Cultura Brasilância (ZN)', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(19, 'Fábrica de Cultura Capão Redondo (ZS)', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(20, 'Fábrica de Cultura Cidade Tiradentes (ZL)', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(21, 'Fábrica de Cultura de Itaim Paulista (ZL)', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(22, 'Fábrica de Cultura de Vila Curuçá (ZL)', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(23, 'Fábrica de Cultura do Parque Belem (ZL)', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(24, 'Fábrica de Cultura Jaçanã (ZN)', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(25, 'Fabrica de Cultura Jardim São Luiz (ZS)', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(26, 'Fábrica de Cultura Sapopemba (ZL)', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(27, 'Fábrica de Cultura Vila Nova Cachoeirinha (ZN)', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(28, 'Festivais (Circo, Mantiqueira, Arte para Criança)', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(29, 'Mapa Cultural Paulista', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(30, 'Memorial da Resistência', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(31, 'Museu Afro Brasil', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(32, 'Museu Casa de Portinari', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(33, 'Museu da Casa Brasileira', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(34, 'Museu da Imagem e do Som', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(35, 'Museu da Imigração', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(36, 'Museu de Arte Sacra', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(37, 'Museu de Esculturas “Felícia Leirner”', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(38, 'Museu do Café', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(39, 'Museu do Futebol', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(40, 'Museu Histórico e Pedagógico “Índia Vanuíre”', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(41, 'Museu Língua Portuguesa', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(42, 'Oficinas Culturais', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(43, 'Orquestra do Theatro São Pedro', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(44, 'Orquestra Jazz Sinfônica do Estado de São Paulo', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(45, 'OSESP - Orquestra Sinfônica do Estado de SP', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(46, 'Outras Ações Culturais (SG Novaes, Programa Inclusão, Mostra de Artes, Plataformas)', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(47, 'Paço das Artes', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(48, 'Pinacoteca do Estado de São Paulo', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(49, 'Programa de Leitura do Estado', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(50, 'Programa Ópera Curta', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(51, 'Projeto Guri Capital e Grande São Paulo', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(52, 'Projeto Guri Interior, Litoral e Fundação CASA', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(53, 'Revelando São Paulo', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(54, 'São Paulo Companhia de Dança', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(55, 'São Paulo Escola de Teatro', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(56, 'Sistema Paulista de Música', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(57, 'Teatro Estadual Maestro Francisco Paulo Russo', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(58, 'Teatro Sergio Cardoso', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(59, 'Theatro São Pedro', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(60, 'Virada Cultural - Paulista e Paulistana', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `oss`
--

CREATE TABLE `oss` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) NOT NULL,
  `changed_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `oss`
--

INSERT INTO `oss` (`id`, `nome`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `changed_by`, `created_by`) VALUES
(1, 'AACT', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(2, 'AAPG', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(3, 'ABAÇAI', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(4, 'ACAMP', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(5, 'ACASA', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(6, 'ADAAP', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(7, 'AMAB', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(8, 'APAA', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(9, 'APAC', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(10, 'APAF', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(11, 'APD', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(12, 'CATAVENTO', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(13, 'FOSESP', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(14, 'IDBRASIL', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(15, 'INCI', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(16, 'PENSARTE', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(17, 'POIESIS', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(18, 'SAMAS', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(19, 'SMC', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(20, 'SPLEITURAS', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissoes_usuarios`
--

CREATE TABLE `permissoes_usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `plano_id` int(10) UNSIGNED DEFAULT NULL,
  `programa_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) NOT NULL,
  `changed_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `permissoes_usuarios`
--

INSERT INTO `permissoes_usuarios` (`id`, `user_id`, `plano_id`, `programa_id`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `changed_by`, `created_by`) VALUES
(1, 3, 1, 1, '2016-09-06 09:25:27', '2016-09-06 13:51:46', '2016-09-06 13:51:46', 1, 0, 0),
(2, 3, 1, 1, '2016-09-06 13:51:54', '2016-09-06 13:51:54', NULL, 0, 0, 0),
(3, 3, 1, 2, '2016-09-06 13:51:54', '2016-09-06 13:51:54', NULL, 0, 0, 0),
(4, 3, 1, 3, '2016-09-06 13:51:54', '2016-09-06 13:51:54', NULL, 0, 0, 0),
(5, 4, 1, 5, '2016-09-06 14:37:16', '2016-09-06 14:37:16', NULL, 0, 0, 0),
(6, 4, 1, 7, '2016-09-06 14:37:16', '2016-09-06 14:37:16', NULL, 0, 0, 0),
(7, 5, 1, 9, '2016-11-04 15:03:05', '2016-11-04 15:03:05', NULL, 0, 0, 0),
(8, 5, 1, 10, '2016-11-04 15:03:05', '2016-11-04 15:03:05', NULL, 0, 0, 0),
(9, 5, 1, 13, '2016-11-04 15:03:05', '2016-11-04 15:03:05', NULL, 0, 0, 0),
(10, 6, 1, 4, '2016-11-04 15:05:17', '2016-11-04 15:05:17', NULL, 0, 0, 0),
(11, 6, 1, 11, '2016-11-04 15:05:17', '2016-11-04 15:05:17', NULL, 0, 0, 0),
(12, 7, 1, 1, '2016-11-04 15:10:39', '2016-11-04 15:10:39', NULL, 0, 0, 0),
(13, 7, 1, 2, '2016-11-04 15:10:39', '2016-11-04 15:10:39', NULL, 0, 0, 0),
(14, 7, 1, 3, '2016-11-04 15:10:39', '2016-11-04 15:10:39', NULL, 0, 0, 0),
(15, 7, 1, 17, '2016-11-04 15:10:39', '2016-11-04 15:10:39', NULL, 0, 0, 0),
(16, 7, 1, 18, '2016-11-04 15:10:39', '2016-11-04 15:10:39', NULL, 0, 0, 0),
(17, 8, 1, 1, '2016-11-04 15:12:30', '2016-11-04 15:12:30', NULL, 0, 0, 0),
(18, 8, 1, 2, '2016-11-04 15:12:30', '2016-11-04 15:12:30', NULL, 0, 0, 0),
(19, 8, 1, 3, '2016-11-04 15:12:30', '2016-11-04 15:12:30', NULL, 0, 0, 0),
(20, 8, 1, 17, '2016-11-04 15:12:30', '2016-11-04 15:12:30', NULL, 0, 0, 0),
(21, 9, 1, 4, '2016-11-04 15:14:44', '2016-11-04 15:14:44', NULL, 0, 0, 0),
(22, 9, 1, 11, '2016-11-04 15:14:44', '2016-11-04 15:14:44', NULL, 0, 0, 0),
(23, 10, 1, 5, '2016-11-04 15:19:19', '2016-11-04 15:19:19', NULL, 0, 0, 0),
(24, 10, 1, 8, '2016-11-04 15:19:19', '2016-11-04 15:19:19', NULL, 0, 0, 0),
(25, 10, 1, 16, '2016-11-04 15:19:19', '2016-11-04 15:19:19', NULL, 0, 0, 0),
(26, 10, 1, 19, '2016-11-04 15:19:19', '2016-11-04 15:19:19', NULL, 0, 0, 0),
(27, 11, 1, 7, '2016-11-04 15:21:55', '2016-11-04 15:21:55', NULL, 0, 0, 0),
(28, 11, 1, 12, '2016-11-04 15:21:55', '2016-11-04 15:21:55', NULL, 0, 0, 0),
(29, 11, 1, 20, '2016-11-04 15:21:55', '2016-11-04 15:21:55', NULL, 0, 0, 0),
(30, 12, 1, 7, '2016-11-04 15:24:13', '2016-11-04 15:24:13', NULL, 0, 0, 0),
(31, 12, 1, 12, '2016-11-04 15:24:13', '2016-11-04 15:24:13', NULL, 0, 0, 0),
(32, 12, 1, 20, '2016-11-04 15:24:13', '2016-11-04 15:24:13', NULL, 0, 0, 0),
(33, 13, 1, 18, '2016-11-04 15:27:58', '2016-11-04 15:27:58', NULL, 0, 0, 0),
(34, 14, 1, 9, '2016-11-04 15:31:13', '2016-11-04 15:31:13', NULL, 0, 0, 0),
(35, 14, 1, 10, '2016-11-04 15:31:13', '2016-11-04 15:31:13', NULL, 0, 0, 0),
(36, 14, 1, 13, '2016-11-04 15:31:13', '2016-11-04 15:31:13', NULL, 0, 0, 0),
(37, 15, 1, 9, '2016-11-04 15:33:05', '2016-11-04 15:33:05', NULL, 0, 0, 0),
(38, 15, 1, 10, '2016-11-04 15:33:05', '2016-11-04 15:33:05', NULL, 0, 0, 0),
(39, 15, 1, 13, '2016-11-04 15:33:05', '2016-11-04 15:33:05', NULL, 0, 0, 0),
(40, 16, 1, 1, '2017-01-11 17:26:26', '2017-01-11 17:26:26', NULL, 0, 0, 0),
(41, 16, 1, 2, '2017-01-11 17:26:26', '2017-01-11 17:26:26', NULL, 0, 0, 0),
(42, 16, 1, 3, '2017-01-11 17:26:26', '2017-01-11 17:26:26', NULL, 0, 0, 0),
(43, 16, 1, 4, '2017-01-11 17:26:26', '2017-01-11 17:26:26', NULL, 0, 0, 0),
(44, 16, 1, 5, '2017-01-11 17:26:26', '2017-01-11 17:26:26', NULL, 0, 0, 0),
(45, 16, 1, 7, '2017-01-11 17:26:26', '2017-01-11 17:26:26', NULL, 0, 0, 0),
(46, 16, 1, 8, '2017-01-11 17:26:27', '2017-01-11 17:26:27', NULL, 0, 0, 0),
(47, 16, 1, 9, '2017-01-11 17:26:27', '2017-01-11 17:26:27', NULL, 0, 0, 0),
(48, 16, 1, 10, '2017-01-11 17:26:27', '2017-01-11 17:26:27', NULL, 0, 0, 0),
(49, 16, 1, 11, '2017-01-11 17:26:27', '2017-01-11 17:26:27', NULL, 0, 0, 0),
(50, 16, 1, 12, '2017-01-11 17:26:27', '2017-01-11 17:26:27', NULL, 0, 0, 0),
(51, 16, 1, 13, '2017-01-11 17:26:27', '2017-01-11 17:26:27', NULL, 0, 0, 0),
(52, 16, 1, 14, '2017-01-11 17:26:27', '2017-01-11 17:26:27', NULL, 0, 0, 0),
(53, 16, 1, 15, '2017-01-11 17:26:28', '2017-01-11 17:26:28', NULL, 0, 0, 0),
(54, 16, 1, 16, '2017-01-11 17:26:28', '2017-01-11 17:26:28', NULL, 0, 0, 0),
(55, 16, 1, 17, '2017-01-11 17:26:28', '2017-01-11 17:26:28', NULL, 0, 0, 0),
(56, 16, 1, 18, '2017-01-11 17:26:28', '2017-01-11 17:26:28', NULL, 0, 0, 0),
(57, 16, 1, 19, '2017-01-11 17:26:28', '2017-01-11 17:26:28', NULL, 0, 0, 0),
(58, 16, 1, 20, '2017-01-11 17:26:28', '2017-01-11 17:26:28', NULL, 0, 0, 0),
(59, 18, 1, 16, '2017-01-23 09:26:25', '2017-01-23 09:26:25', NULL, 0, 0, 0),
(60, 18, 1, 17, '2017-01-23 09:26:25', '2017-01-23 09:26:25', NULL, 0, 0, 0),
(61, 18, 1, 18, '2017-01-23 09:26:25', '2017-01-23 09:26:25', NULL, 0, 0, 0),
(62, 18, 1, 19, '2017-01-23 09:26:25', '2017-01-23 09:26:25', NULL, 0, 0, 0),
(63, 18, 1, 20, '2017-01-23 09:26:25', '2017-01-23 09:26:25', NULL, 0, 0, 0),
(64, 5, 3, 55, '2017-05-19 14:55:58', '2017-05-19 14:55:58', NULL, 0, 0, 0),
(65, 5, 3, 56, '2017-05-19 14:55:58', '2017-05-19 14:55:58', NULL, 0, 0, 0),
(66, 5, 3, 57, '2017-05-19 14:55:58', '2017-05-19 14:55:58', NULL, 0, 0, 0),
(67, 5, 3, 58, '2017-05-19 14:55:58', '2017-05-19 14:55:58', NULL, 0, 0, 0),
(68, 5, 3, 59, '2017-05-19 14:55:58', '2017-05-19 14:55:58', NULL, 0, 0, 0),
(69, 5, 3, 60, '2017-05-19 14:55:58', '2017-05-19 14:55:58', NULL, 0, 0, 0),
(70, 5, 3, 61, '2017-05-19 14:55:58', '2017-05-19 14:55:58', NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `planos`
--

CREATE TABLE `planos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uge_id` int(10) UNSIGNED DEFAULT NULL,
  `os_id` int(10) UNSIGNED DEFAULT NULL,
  `cg_id` int(10) UNSIGNED DEFAULT NULL,
  `objeto_id` int(10) UNSIGNED DEFAULT NULL,
  `tipoobjeto_id` int(10) UNSIGNED DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `data_limite` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) NOT NULL,
  `changed_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `planos`
--

INSERT INTO `planos` (`id`, `nome`, `uge_id`, `os_id`, `cg_id`, `objeto_id`, `tipoobjeto_id`, `status`, `data_limite`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `changed_by`, `created_by`) VALUES
(1, 'Plano de Trabalho APAA - 2016', 3, 8, 50, 46, 3, 0, '2016-11-17 12:43:45', '2016-08-23 12:09:55', '2016-12-15 12:43:45', NULL, 0, 2, 1),
(2, 'Plano de Trabalho APAA - 2016 (novembro e dezembro)', 5, 8, 71, 46, 3, 0, '2016-12-31 15:44:37', '2017-01-19 15:44:37', '2017-01-19 15:44:37', NULL, 0, 0, 2),
(3, 'Plano de Trabalho APAA - 2017', 5, 8, 71, 46, 3, 0, '2017-12-31 10:11:50', '2017-01-24 10:11:50', '2017-01-24 10:11:50', NULL, 0, 0, 2),
(4, 'PLANO 2018', 3, 1, 71, 60, 1, 0, '2017-05-09 00:00:00', '2017-05-09 18:02:42', '2017-05-09 18:28:06', '2017-05-09 18:28:06', 19, 0, 19);

-- --------------------------------------------------------

--
-- Estrutura da tabela `programas`
--

CREATE TABLE `programas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `plano_id` int(10) UNSIGNED DEFAULT NULL,
  `tipagem_id` int(10) UNSIGNED DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `descricao` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) NOT NULL,
  `changed_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `programas`
--

INSERT INTO `programas` (`id`, `nome`, `plano_id`, `tipagem_id`, `status`, `descricao`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `changed_by`, `created_by`) VALUES
(1, 'Semana Guiomar Novaes', 1, 1, 0, 'Descrição para este programa PROGRAMA SEMANA GUIOMAR NOVAES', '2016-08-23 12:14:55', '2016-12-15 12:44:34', NULL, 0, 2, 1),
(2, 'Festival Paulista de Circo', 1, 1, 0, 'Programa: Festival Paulista de Circo', '2016-08-29 16:39:21', '2016-08-29 16:39:21', NULL, 0, 0, 1),
(3, 'Virada Cultural Paulista', 1, 1, 0, 'Descrição Virada Cultural Paulista', '2016-08-30 12:06:43', '2016-08-30 12:06:43', NULL, 0, 0, 1),
(4, 'Circuito Cultural Paulista', 1, 1, 0, 'Descrição do Programa Circuito Cultural Paulista.', '2016-08-30 12:07:42', '2016-12-15 12:45:26', NULL, 0, 2, 1),
(5, 'Circulação de Ópera', 1, 1, 0, 'Descrição de Circulação de Ópera', '2016-08-30 12:09:04', '2016-08-30 12:09:04', NULL, 0, 0, 1),
(6, 'Circulação de Ópera', 1, 1, 0, 'Descrição do Programa Circulação de Ópera', '2016-09-02 11:19:27', '2016-09-02 11:19:45', '2016-09-02 11:19:45', 1, 0, 1),
(7, 'Apoio a projetos LGBT', 1, 1, 0, 'Descrição do Programa Apoio a projetos LGBT', '2016-09-02 11:20:56', '2016-09-02 11:20:56', NULL, 0, 0, 1),
(8, 'Apoio às Ações de Difusão Literária', 1, 1, 0, 'ex-Festival da Mantiqueira', '2016-10-27 13:59:27', '2016-10-27 15:04:33', NULL, 0, 2, 2),
(9, 'Teatro Sérgio Cardoso - Sala Sérgio Cardoso', 1, 1, 0, 'Sala Sérgio Cardoso', '2016-10-27 14:00:16', '2016-10-27 14:00:16', NULL, 0, 0, 2),
(10, 'Teatro Sérgio Cardoso - Sala Paschoal Carlos Magno', 1, 1, 0, 'Sala Paschoal Carlos Magno', '2016-10-27 14:00:59', '2016-10-27 15:03:13', NULL, 0, 2, 2),
(11, 'Teatro Maestro Francisco Paulo Russo', 1, 1, 0, 'Teatro de Araras', '2016-10-27 14:01:33', '2016-10-27 14:01:33', NULL, 0, 0, 2),
(12, 'Centro de Cultura, Memória e Estudos da Diversidade Sexual', 1, 1, 0, 'Centro de Cultura, Memória e Estudos da Diversidade Sexual', '2016-10-27 14:03:46', '2016-10-27 14:03:46', NULL, 0, 0, 2),
(13, 'Ações de Acessibilidade Comunicacional', 1, 1, 0, 'Ações de Acessibilidade Comunicacional', '2016-10-27 14:04:42', '2016-10-27 14:04:42', NULL, 0, 0, 2),
(14, 'Comunicação e Imprensa', 1, 1, 0, 'Programa de Comunicação e Imprensa', '2016-10-27 14:05:19', '2016-10-27 14:05:19', NULL, 0, 0, 2),
(15, 'Financiamento e Fomento', 1, 1, 0, 'Programa de Financiamento e Fomento', '2016-10-27 14:05:47', '2016-10-27 14:05:47', NULL, 0, 0, 2),
(16, 'CONDICIONADO - Festival da Mantiqueira', 1, 1, 0, 'Meta Condicionada - Festival da Mantiqueira', '2016-10-27 14:06:47', '2016-10-27 14:06:47', NULL, 0, 0, 2),
(17, 'CONDICIONADO - Festival Arte para Crianças', 1, 1, 0, 'Meta Condicionada - Festival Arte para Crianças', '2016-10-27 14:07:19', '2016-10-27 14:07:19', NULL, 0, 0, 2),
(18, 'CONDICIONADO - Cultura Livre SP', 1, 1, 0, 'Meta Condicionada - Programa Cultura Livre SP', '2016-10-27 14:07:54', '2016-10-27 14:07:54', NULL, 0, 0, 2),
(19, 'CONDICIONADO - Plataformas', 1, 1, 0, 'Meta Condicionada - Programa Plataformas', '2016-10-27 14:08:27', '2016-10-27 14:08:27', NULL, 0, 0, 2),
(20, 'CONDICIONADO - Centro de Cultura, Memória e Estudos da Diversidade Sexual', 1, 1, 0, 'Meta Condicionada - Centro de Cultura, Memória e Estudos da Diversidade Sexual.', '2016-10-27 14:09:26', '2016-10-27 14:09:26', NULL, 0, 0, 2),
(21, 'TSC - Sala Sérgio Cardoso', 2, 1, 0, 'Sala Sérgio Cardoso', '2017-01-19 15:48:18', '2017-01-19 15:48:18', NULL, 0, 0, 2),
(22, 'TSC - Sala Paschoal Carlos Magno', 2, 1, 0, 'Sala Paschoal Carlos Magno', '2017-01-19 15:50:34', '2017-01-19 15:50:34', NULL, 0, 0, 2),
(23, 'TSC - Espaços Alternativos', 2, 1, 0, 'Espaços Alternativos', '2017-01-19 15:51:19', '2017-01-19 15:51:19', NULL, 0, 0, 2),
(24, 'Teatro Maestro Francisco Paulo Russo - Araras', 2, 1, 0, 'Teatro de Araras', '2017-01-19 15:52:04', '2017-01-19 15:52:04', NULL, 0, 0, 2),
(25, 'Centro de Cultura, Memória e Estudos da Diversidade Sexual (Museu da Diversidade)', 2, 1, 0, 'Museu da Diversidade', '2017-01-19 15:53:05', '2017-01-19 15:53:05', NULL, 0, 0, 2),
(55, 'Semana Guiomar Novaes', 3, 1, 0, 'Programa para Semana Guiomar Novaes', '2017-02-06 23:52:50', '2017-02-06 23:52:50', NULL, 0, 0, 1),
(56, 'Festival Paulista de Circo', 3, 1, 0, 'programa Festival Paulista de Circo', '2017-02-07 00:00:20', '2017-02-07 00:00:20', NULL, 0, 0, 1),
(57, 'Apoio a projetos LGBT', 3, 1, 0, 'Programa Apoio a projetos LGBT', '2017-02-07 11:27:41', '2017-05-11 18:25:36', NULL, 0, 19, 1),
(58, 'Teatro Maestro Francisco Paulo Russo', 3, 1, 0, 'programa Teatro Maestro Francisco Paulo Russo', '2017-02-07 11:39:30', '2017-02-16 11:14:52', NULL, 0, 1, 1),
(59, 'Teatro Sérgio Cardoso - Sala Sérgio Cardoso', 3, 1, 0, 'programa Teatro Sérgio Cardoso - Sala Sérgio Cardoso', '2017-02-07 11:40:03', '2017-02-16 11:15:05', NULL, 0, 1, 1),
(60, 'Centro de Cultura, Memória e Estudos da Diversidade Sexual', 3, 1, 0, 'programa Centro de Cultura, Memória e Estudos da Diversidade Sexual', '2017-02-07 11:48:12', '2017-02-16 11:15:23', NULL, 0, 1, 1),
(61, 'Apoio às Ações de Difusão Literária', 3, 1, 0, 'programa Apoio às Ações de Difusão Literária', '2017-02-07 13:15:18', '2017-02-16 11:16:09', NULL, 0, 1, 1),
(62, 'FITNESSS', 4, 1, 0, 'teste', '2017-05-09 18:05:06', '2017-05-09 18:28:00', '2017-05-09 18:28:00', 19, 0, 19),
(63, 'TSC - EspaÃ§os Alternativos', 3, 1, 0, 'EspaÃ§os Alternativos', '2017-03-16 22:33:51', '2017-03-16 22:52:57', NULL, 0, 2, 2),
(64, 'Virada Cultural Paulista', 3, 1, 0, 'Virada Cultural Paulista', '2017-03-16 22:35:19', '2017-03-16 22:35:19', NULL, 0, 0, 2),
(65, 'Circuito Cultural Paulista', 3, 1, 0, 'CCP', '2017-03-16 22:36:04', '2017-03-16 22:36:04', NULL, 0, 0, 2),
(66, 'Mapa Cultural Paulista', 3, 1, 0, 'Mapa Cultural Paulista', '2017-03-16 22:36:42', '2017-03-16 22:36:42', NULL, 0, 0, 2),
(67, 'Apoio a Projetos Voltados para a Cultura Negra, Outras Etnias e Artes Urbanas', 3, 1, 0, 'Apoio a Projetos Voltados para a Cultura Negra, Outras Etnias e Artes Urbanas', '2017-03-16 22:38:52', '2017-03-16 22:38:52', NULL, 0, 0, 2),
(68, 'Revelando SÃ£o Paulo - Festival da Cultura Tradicional', 3, 1, 0, 'Revelando SÃ£o Paulo - Festival da Cultura Tradicional', '2017-03-16 22:42:15', '2017-03-16 22:42:15', NULL, 0, 0, 2),
(69, 'Festivais ArtÃ­sticos e Apoio a Eventos Culturais', 3, 1, 0, 'Festivais ArtÃ­sticos e Apoio a Eventos Culturais', '2017-03-16 22:43:14', '2017-03-16 22:43:14', NULL, 0, 0, 2),
(70, 'Encontro de Dirigentes Municipais de Cultura do Estado de SÃ£o Paulo', 3, 1, 0, 'Encontro de dirigentes municipais de cultura do Estado de SÃ£o Paulo', '2017-03-16 22:44:42', '2017-03-16 22:44:42', NULL, 0, 0, 2),
(71, 'Atendimento aos MunicÃ­pios', 3, 1, 0, 'Atendimento aos municÃ­pios', '2017-03-16 22:45:25', '2017-03-16 22:45:25', NULL, 0, 0, 2),
(72, 'Pesquisa para PreservaÃ§Ã£o e DifusÃ£o do PatrimÃ´nio Material e Imaterial', 3, 1, 0, 'Pesquisa para preservaÃ§Ã£o e difusÃ£o do patrimÃ´nio material e imaterial', '2017-03-16 22:46:26', '2017-03-16 22:46:26', NULL, 0, 0, 2),
(73, 'Pesquisa de PÃºblico e Qualidade dos ServiÃ§os Prestados', 3, 1, 0, 'Pesquisa de pÃºblico e qualidade dos serviÃ§os prestados', '2017-03-16 22:47:33', '2017-03-16 22:47:33', NULL, 0, 0, 2),
(74, 'Financiamento e Fomento', 3, 1, 0, 'Financiamento e Fomento', '2017-03-16 22:49:14', '2017-03-16 22:49:14', NULL, 0, 0, 2),
(75, 'TSC - Sala Paschoal Carlos Magno', 3, 1, 0, 'teste', '2017-05-09 21:05:06', '2017-05-09 21:28:00', NULL, 19, 0, 19),
(76, 'teste', 3, 1, 0, 'teste', '2017-05-22 20:40:57', '2017-05-22 20:40:57', NULL, 0, 0, 19);

-- --------------------------------------------------------

--
-- Estrutura da tabela `realizadores`
--

CREATE TABLE `realizadores` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `municipio_id` int(10) UNSIGNED DEFAULT NULL,
  `num_total_pessoas` int(11) NOT NULL,
  `num_apresentacoes` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) NOT NULL,
  `changed_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `realizadores`
--

INSERT INTO `realizadores` (`id`, `nome`, `municipio_id`, `num_total_pessoas`, `num_apresentacoes`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `changed_by`, `created_by`) VALUES
(1, 'APAA', 47, 0, 0, '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(2, 'Outro', 29, 5545, 2, '2017-01-24 10:27:14', '2017-02-01 15:08:52', NULL, 0, 2, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `regiao_administrativas`
--

CREATE TABLE `regiao_administrativas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) NOT NULL,
  `changed_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `regiao_administrativas`
--

INSERT INTO `regiao_administrativas` (`id`, `nome`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `changed_by`, `created_by`) VALUES
(1, 'Região Administrativa Central', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(2, 'Região Administrativa de Araçatuba', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(3, 'Região Administrativa de Barretos', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(4, 'Região Administrativa de Bauru', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(5, 'Região Administrativa de Campinas', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(6, 'Região Administrativa de Franca', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(7, 'Região Administrativa de Itapeva', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(8, 'Região Administrativa de Marília', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(9, 'Região Administrativa de Presidente Prudente', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(10, 'Região Administrativa de Registro', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(11, 'Região Administrativa de Ribeirão Preto', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(12, 'Região Administrativa de Santos', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(13, 'Região Administrativa de São José do Rio Preto', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(14, 'Região Administrativa de São José dos Campos', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(15, 'Região Administrativa de Sorocaba', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(16, 'Região Metropolitana de São Paulo', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `regra`
--

CREATE TABLE `regra` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `plano_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) NOT NULL,
  `changed_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `regra`
--

INSERT INTO `regra` (`id`, `codigo`, `descricao`, `plano_id`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `changed_by`, `created_by`) VALUES
(0, 'R01', 'Número de municípios', 3, NULL, '2017-05-10 18:57:26', NULL, 0, 19, 19),
(2, 'R23', 'Lua de cristal', NULL, '2017-05-08 13:15:24', '2017-05-08 14:24:44', '2017-05-08 14:24:44', 19, 0, 19),
(3, 'R23', 'Lua de doidera', NULL, '2017-05-08 13:15:51', '2017-05-08 14:24:42', '2017-05-08 14:24:42', 19, 0, 19),
(4, 'R24', 'Teste de sobrevivencia', NULL, '2017-05-08 13:49:08', '2017-05-08 14:24:00', '2017-05-08 14:24:00', 19, 0, 19),
(5, 'R27', 'Felicidade é uma nova alegria', NULL, '2017-05-08 14:12:51', '2017-05-08 14:23:58', '2017-05-08 14:23:58', 19, 0, 19),
(6, 'R02', 'Número de apresentações realizadas diretamente pela OS', 3, '2017-05-08 14:26:59', '2017-05-10 19:04:34', NULL, 0, 19, 19),
(7, 'R03', 'Número de registros únicos em \"cidades\"', NULL, '2017-05-08 14:27:49', '2017-05-08 14:47:51', '2017-05-08 14:47:51', 19, 0, 19),
(8, 'R03', 'Testando', NULL, '2017-05-08 18:16:44', '2017-05-08 18:16:46', '2017-05-08 18:16:46', 19, 0, 19),
(18, 'R03', 'Número de apresentações realizadas em parceria com os municípios e instituições', 3, '2017-05-08 20:25:15', '2017-05-11 15:44:58', NULL, 0, 19, 19),
(19, 'R01', 'Testando', NULL, '2017-05-09 14:21:50', '2017-05-09 14:22:10', '2017-05-09 14:22:10', 19, 0, 19),
(20, 'Sem Cadastro', 'Necessário cadastro de novo', NULL, NULL, '2017-05-09 14:52:51', '2017-05-09 14:52:51', 19, 0, 0),
(21, 'Sem Cadastro', 'Necessário cadastro de novo', NULL, NULL, '2017-05-09 14:52:48', '2017-05-09 14:52:48', 19, 0, 0),
(22, 'R01', 'Indo por ai', NULL, '2017-05-09 18:34:33', '2017-05-09 18:34:37', '2017-05-09 18:34:37', 19, 0, 19),
(23, 'R04', 'Tentativa de cadastro', 3, '2017-05-09 20:01:34', '2017-05-09 20:19:48', '2017-05-09 20:19:48', 19, 19, 19),
(24, 'R09', 'Vamos la', 3, '2017-05-09 20:05:29', '2017-05-09 20:19:40', '2017-05-09 20:19:40', 19, 19, 19),
(25, 'R04', 'Porcentagem de artistas que não se apresentaram na última edição', 3, '2017-05-09 20:52:12', '2017-05-11 15:45:10', NULL, 0, 19, 19),
(26, 'R06', 'Número Total de Municípios', 3, '2017-05-09 20:52:41', '2017-05-11 15:45:53', NULL, 0, 19, 19),
(27, 'R05', 'Número Total de Público', 3, '2017-05-09 20:52:55', '2017-05-11 15:45:26', NULL, 0, 19, 19),
(28, 'R07', 'Número de Municípios até 250 km da Capital', 3, '2017-05-09 20:55:53', '2017-05-11 15:46:08', NULL, 0, 19, 19),
(29, 'R08', 'Número de Municípios de 251 a 400 km da Capital', 3, '2017-05-09 20:58:47', '2017-05-11 15:46:29', NULL, 0, 19, 19),
(30, 'R09', 'Número de Municípios acima de 401 km da Capital', 3, '2017-05-09 20:59:04', '2017-05-11 15:46:57', NULL, 0, 19, 19),
(31, 'R10', 'Número de Apresentações', 3, '2017-05-09 21:00:33', '2017-05-11 15:47:18', NULL, 0, 19, 19),
(32, 'R11', 'Número de Eventos', 3, '2017-05-09 21:00:46', '2017-05-11 15:48:10', NULL, 0, 19, 19),
(33, 'R12', 'Percentual Mínimo de Municípios presentes', 3, '2017-05-12 14:30:28', '2017-05-12 14:30:28', NULL, 0, 0, 19),
(34, 'R13', 'Número de Apresentações realizadas diretamente pela OS (exclui as apresentações para estudantes)', 3, '2017-05-12 14:31:33', '2017-05-12 14:31:33', NULL, 0, 0, 19),
(35, 'R14', 'Número de Apresentações realizadas em parceria com os municípios e instituições', 3, '2017-05-12 14:31:48', '2017-05-12 14:31:48', NULL, 0, 0, 19),
(37, 'R15', 'Número Total de Público nas apresentações realizadas diretamente pela OS', 3, '2017-05-12 14:32:43', '2017-05-12 14:32:43', NULL, 0, 0, 19),
(38, 'R16', 'Número de Apresentações para Estudantes', 3, '2017-05-12 14:33:01', '2017-05-12 14:33:01', NULL, 0, 0, 19),
(39, 'R17', 'Número Total de público de estudantes', 3, '2017-05-12 14:33:20', '2017-05-12 14:33:20', NULL, 0, 0, 19),
(40, 'R18', 'Número Total de Público Circulante', 3, '2017-05-12 14:33:39', '2017-05-12 14:33:39', NULL, 0, 0, 19),
(41, 'R19', 'Número Total de Público Circulante', 3, '2017-05-12 14:34:58', '2017-05-12 14:34:58', NULL, 0, 0, 19),
(42, 'R20', 'Número de Apresentações (exclui as para estudantes)', 3, '2017-05-12 14:35:31', '2017-05-12 14:35:31', NULL, 0, 0, 19),
(43, 'R21', 'Número de Apresentações para Estudantes', 3, '2017-05-12 14:35:49', '2017-05-12 14:35:49', NULL, 0, 0, 19),
(44, 'R22', 'Total de Público de Estudantes', 3, '2017-05-12 14:36:42', '2017-05-12 14:36:42', NULL, 0, 0, 19),
(45, 'R24', 'Número de apresentações', 3, '2017-05-12 14:37:01', '2017-05-12 14:37:01', NULL, 0, 0, 19),
(46, 'R25', 'Número mínimo de público (média de 400 pessoas por apresentação)', 3, '2017-05-12 14:37:19', '2017-05-12 14:37:19', NULL, 0, 0, 19),
(47, 'R26', 'Número Total de Municípios', 3, '2017-05-12 14:38:00', '2017-05-12 14:38:00', NULL, 0, 0, 19),
(48, 'R27', 'Número de Municípios acima de 400 Km da Capital', 3, '2017-05-12 14:44:12', '2017-05-12 14:44:12', NULL, 0, 0, 19),
(49, 'R28', 'Número Mínimo de público (média de 320 pessoas por apresentação)', 3, '2017-05-12 14:44:34', '2017-05-12 14:44:34', NULL, 0, 0, 19),
(50, 'R30', 'Número de Espetáculo - Título Novo', 3, '2017-05-12 14:44:53', '2017-05-12 14:44:53', NULL, 0, 0, 19),
(51, 'R31', 'Número de Atividades Culturais', 3, '2017-05-12 14:45:10', '2017-05-12 14:45:10', NULL, 0, 0, 19),
(52, 'R32', 'Número de Oficinas', 3, '2017-05-12 14:45:32', '2017-05-12 14:45:32', NULL, 0, 0, 19),
(53, 'R33', 'Número de Vagas', 3, '2017-05-12 14:45:50', '2017-05-12 14:45:50', NULL, 0, 0, 19),
(54, 'R34', 'Número de Oficinas', 3, '2017-05-12 14:46:14', '2017-05-12 14:46:14', NULL, 0, 0, 19),
(55, 'R35', 'Número de Vagas', 3, '2017-05-12 14:46:33', '2017-05-12 14:46:33', NULL, 0, 0, 19),
(56, 'R36', 'Número de Atividades', 3, '2017-05-12 14:47:04', '2017-05-12 14:47:04', NULL, 0, 0, 19),
(57, 'R37', 'Total de Público nas atividades literárias', 3, '2017-05-12 14:47:38', '2017-05-12 14:47:38', NULL, 0, 0, 19),
(58, 'R38', 'Número de escritores / artistas', 3, '2017-05-12 14:47:56', '2017-05-12 14:47:56', NULL, 0, 0, 19),
(59, 'R39', 'Número de Apresentações', 3, '2017-05-12 14:48:23', '2017-05-12 14:48:23', NULL, 0, 0, 19),
(60, 'R40', 'Número Total de Público Circulante no Festival', 3, '2017-05-12 14:48:52', '2017-05-12 14:48:52', NULL, 0, 0, 19),
(61, 'R41', 'Quantidade de apresentações', 3, '2017-05-12 14:50:57', '2017-05-12 14:50:57', NULL, 0, 0, 19),
(62, 'R42', 'Número de Municípios atendidos', 3, '2017-05-12 14:51:42', '2017-05-12 14:51:42', NULL, 0, 0, 19),
(63, 'R43', 'Número de Exposições no Municipio de São Paulo', 3, '2017-05-12 14:52:19', '2017-05-12 14:52:19', NULL, 0, 0, 19),
(64, 'R44', 'Público do Municipio de São Paulo', 3, '2017-05-12 14:52:46', '2017-05-12 14:52:46', NULL, 0, 0, 19),
(65, 'R45', 'Número de adaptações – Sala Sérgio Cardoso', 3, '2017-05-12 14:53:51', '2017-05-19 18:06:16', NULL, 0, 19, 19),
(66, 'R46', 'Número de apresentações – Sala Sérgio Cardoso', 3, '2017-05-12 14:54:18', '2017-05-12 14:54:18', NULL, 0, 0, 19),
(67, 'R47', 'Número de adaptações – Sala Paschoal Carlos Magno', 3, '2017-05-12 14:54:36', '2017-05-12 14:54:36', NULL, 0, 0, 19),
(68, 'R48', 'Número de apresentações – Sala Paschoal Carlos Magno', 3, '2017-05-12 14:55:02', '2017-05-12 14:55:02', NULL, 0, 0, 19),
(69, 'R49', 'Número de apresentações – Festival Paulista de Circo', 3, '2017-05-12 14:55:22', '2017-05-12 14:55:22', NULL, 0, 0, 19),
(70, 'R50', 'Percentual sobre o valor destinado pelo Contrato de Gestão às atividades vinculadas aos equipamentos (Teatro Sérgio Cardoso - SP, Teatro Francisco Paulo Russo - Araras e Centro de Cultura, Memória e Estudos da Diversidade Sexual)', 3, '2017-05-12 15:00:21', '2017-05-12 15:00:21', NULL, 0, 0, 19),
(71, 'R51', 'Soma de registros com o campo \"Sessão acessível\" \"sim\"', 3, '2017-05-22 13:47:58', '2017-05-22 13:49:45', NULL, 0, 19, 19),
(72, 'R52', 'Soma do \"Número total de pessoas\" quando o campo \"Sessão acessível\" igual a \"sim\"', 3, '2017-05-22 14:03:19', '2017-05-22 14:03:19', NULL, 0, 0, 19),
(73, 'R53', 'Número de registros únicos com \"São Paulo\" no campo \"cidade\"', 3, '2017-05-22 14:19:28', '2017-05-22 14:19:28', NULL, 0, 0, 19);

-- --------------------------------------------------------

--
-- Estrutura da tabela `rotinas`
--

CREATE TABLE `rotinas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `plano_id` int(10) UNSIGNED DEFAULT NULL,
  `data_limite` datetime NOT NULL,
  `realizada` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) NOT NULL,
  `changed_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `rotinas`
--

INSERT INTO `rotinas` (`id`, `nome`, `plano_id`, `data_limite`, `realizada`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `changed_by`, `created_by`) VALUES
(1, 'Relatório Trimestral  - 3º Trimestre', 1, '2016-10-20 12:42:49', 0, '2016-12-15 12:42:49', '2016-12-15 12:42:49', NULL, 0, 0, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `segmento_publicos`
--

CREATE TABLE `segmento_publicos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) NOT NULL,
  `changed_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `segmento_publicos`
--

INSERT INTO `segmento_publicos` (`id`, `nome`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `changed_by`, `created_by`) VALUES
(1, 'Artista / Expositor', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(2, 'Educador', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(3, 'Em situação de vulnerabilidade', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(4, 'Escolar (escola privada)', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(5, 'Escolar (escola pública)', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(6, 'Especialista / Universitário', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(7, 'Família', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(8, 'Infanto-juvenil', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(9, 'Institucional', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(10, 'Pessoas com deficiência', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(11, 'Terceira idade', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(12, 'Turista', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(13, 'Não se aplica', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipagems`
--

CREATE TABLE `tipagems` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) NOT NULL,
  `changed_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tipagems`
--

INSERT INTO `tipagems` (`id`, `nome`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `changed_by`, `created_by`) VALUES
(1, 'Normal', '2016-08-23 12:01:19', '2016-08-23 12:01:19', NULL, 0, 0, 1),
(2, 'Público estudante', '2016-08-29 14:24:11', '2016-08-30 08:43:15', '2016-08-30 08:43:15', 1, 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_eventos`
--

CREATE TABLE `tipo_eventos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) NOT NULL,
  `changed_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tipo_eventos`
--

INSERT INTO `tipo_eventos` (`id`, `nome`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `changed_by`, `created_by`) VALUES
(1, 'Temporada - meta', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(2, 'Cessão não onerosa - evento artístico público', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(3, 'Cessão não onerosa - evento privado ou não artístico', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(4, 'Cessão não onerosa - evento público - meta parceiro', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_objetos`
--

CREATE TABLE `tipo_objetos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) NOT NULL,
  `changed_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tipo_objetos`
--

INSERT INTO `tipo_objetos` (`id`, `nome`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `changed_by`, `created_by`) VALUES
(1, 'Equipamento Cultural', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(2, 'Grupo Artístico', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(3, 'Programa Cultural', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_publicos`
--

CREATE TABLE `tipo_publicos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) NOT NULL,
  `changed_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tipo_publicos`
--

INSERT INTO `tipo_publicos` (`id`, `nome`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `changed_by`, `created_by`) VALUES
(1, 'Presencial Local Sede ou Local Parceria', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(2, 'Presencial extramuros ou externo', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(3, 'Virtual', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(4, 'Não se aplica', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `uges`
--

CREATE TABLE `uges` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) NOT NULL,
  `changed_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `uges`
--

INSERT INTO `uges` (`id`, `nome`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `changed_by`, `created_by`) VALUES
(1, 'UBL', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(2, 'UFC', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(3, 'UFDPC', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(4, 'UPPM', '2016-08-23 10:26:59', '2016-08-23 10:26:59', NULL, 0, 0, 0),
(5, 'UDBL - Unidade de Difusão Cultural, Biblioteca e Leitura', '2017-01-19 15:41:59', '2017-01-19 15:41:59', NULL, 0, 0, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sobrenome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `perfil` int(11) NOT NULL,
  `senha` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) NOT NULL,
  `changed_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `email`, `nome`, `sobrenome`, `perfil`, `senha`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`, `changed_by`, `created_by`) VALUES
(1, 'eiglimar.junior@mfconsulting.com.br', 'Eiglimar', 'Junior', 2, '$2y$10$rd6hQaYLkq0q8kWmhWM7AeO.wuUO4QRivHyaTPxHSh6fyNazY6HDq', 'jF3MnqCCD2vlJshcJZHQcXGW7wIVqLK6t0oNL3M0g4IlK6vsFUhjY4BqfYln', '2016-08-23 10:26:58', '2017-05-03 18:56:37', NULL, 0, 1, 0),
(2, 'apaa@apaa.org.br', 'Associação Paulista dos ', 'Amigos da Arte', 2, '$2y$10$Tf3wUhc7bhPNV8CO0Rh8QOKPFKdHuU.9rRMN5d/Cn.fbaug.M/FB6', 'yfziqFYmJ17DhaxHD8jHCa0LzJKNpKETHYcRybjGbgPrjeH91lKXJFRt4ezL', '2016-08-23 10:26:59', '2017-03-06 01:11:20', NULL, 0, 2, 0),
(3, 'produtor@produtor.com', 'Produtor', 'Teste', 1, '$2y$10$WbdvwX1IAOFpPzJvaUa2bOrhhcpSFdnwlUW4SgrasX1PXveIO561q', 'Ayl31MuJ0pYzRCHIZDmxtKui1lJWcu9I2lUms6UiBqGN6JgjEPJHaWO32s5j', '2016-09-05 12:30:24', '2017-01-11 15:59:44', '2017-01-11 15:59:44', 2, 0, 1),
(4, 'produtor2@produtor2.com', 'Produtor', '2', 1, '$2y$10$8.3MrjodMGqyYpudLpBBs.wrBFPBuw0ukz3HCtjs9uGrCbGeThXdG', 'VDEn3hsZXfYlrsm5qclbHNrSFy8yJIFfhHUoJstj7DboWa61Go5kq6BrUHxH', '2016-09-06 14:37:03', '2016-11-04 15:15:27', '2016-11-04 15:15:27', 2, 0, 1),
(5, 'natasha@apaa.org.br', 'Natasha', 'Nat', 1, '$2y$10$ysfRAi6UxuUgo9YEp4duy.wP4Q9l1IUsi4H0GO5cdQTlUjDIigmfm', 'AMnf2myAy3adBUIAsfn91V5uTP6jXjYLSrtbp2GrMpCyxg42fujcNNt9MXHU', '2016-11-04 15:01:37', '2017-05-22 20:04:26', NULL, 0, 0, 2),
(6, 'marcoprado@apaa.org.br', 'Marco', 'Prado', 1, '$2y$10$eXnUYWQqXMtruPRtIEOVSe/BT3BDpiqcnOsEnHh8M96bgqG8pZH1i', '4cAHhLVEQfwWdzbYcsIEvRsbZ0Phf9JCr9CGgwiHoXaqviY2MzLTqHIm7LlP', '2016-11-04 15:04:31', '2017-05-19 14:46:44', NULL, 0, 0, 2),
(7, 'dyra@apaa.org.br', 'Dyra', 'Oliveira', 1, '$2y$10$97o5eGalypJh8w5V5OJVgueF5H2YS7uvmcJOmPJ4yOwQ50LZNuwV2', '2yyCRBDEepy5FByvHmrVx07DO0QpkRCrAISl0OWFAaX6xMijdlXDEzpQesxV', '2016-11-04 15:07:14', '2016-12-15 16:50:59', NULL, 0, 0, 2),
(8, 'alberto.marcondes@apaa.org.br', 'Alberto', 'Marcondes', 1, '$2y$10$KQ2c0NERvwSvJfqNohFHL.xqqvKB8dref3INk5cK8U7oyPX415F.2', 'hdkTAAllvqwEnJ62bZGTGbU4Dny0jPBOo8sSDBgv8Ys69bGJpPKPEkdfENDH', '2016-11-04 15:07:56', '2016-12-15 16:50:25', NULL, 0, 0, 2),
(9, 'bruna.caldas@apaa.org.br', 'Bruna', 'Caldas', 1, '$2y$10$KJMYzy9lN4cOtEOVJvCH.O0HqMU0aEwbI3J29R58FcvwbC8MBXKTS', NULL, '2016-11-04 15:13:42', '2017-01-11 16:05:29', '2017-01-11 16:05:29', 2, 0, 2),
(10, 'ananda@apaa.org.br', 'Ananda', 'Stücker', 1, '$2y$10$d1jBbrVjsIFAIc5nvRMehevO40670BTRP8VReyFOCGgj/4HJ0harG', 'htwX3Hb506jnou1uBv6M4r37nSTaymzpkaMHJ9zlMzZdlltyuNji2Va3I7lw', '2016-11-04 15:17:58', '2016-12-15 16:49:50', NULL, 0, 0, 2),
(11, 'franco.reinaudo@apaa.org.br', 'Franco', 'Reinaudo', 1, '$2y$10$o8v6Wma3QhtoXO5S5IcV7OpAa3SPt9hr1Oj1CJ71NFWnNmhASlx7S', 'LKEbQ5GZYwzmksmY7h3Fhrs8dQ4DRUA0WzOLjXWdjT0rW4OkgCujuLfZ3tvr', '2016-11-04 15:20:47', '2016-12-15 16:49:12', NULL, 0, 0, 2),
(12, 'jefferson.mateus@apaa.org.br', 'Jefferson', 'Mateus', 1, '$2y$10$oCzBr3DcrMsbC9h1drrhtuEJyC7FPm4E1tIRl3euPZVXPF0rkNlt.', 'qHg1SOIlBaIRq7FxGtg7rVMa3WeR3AyJtHGKFL80cubyNiNMsQDRYgDJRZ20', '2016-11-04 15:23:19', '2016-12-15 16:48:38', NULL, 0, 0, 2),
(13, 'kenia@apaa.org.br', 'Kenia', 'K', 1, '$2y$10$BBTRHdmexffAdVAcV5LarOsigvqh2WLEolSpKpy872Iyec4mZdaZ6', 'TXWTvK2tIYAFLq4Ur8gNS6L5ecXB4aOAremj7wNZ19ugVKkxp05KmwdWnt3h', '2016-11-04 15:27:22', '2017-01-11 15:58:54', '2017-01-11 15:58:54', 2, 0, 2),
(14, 'marisis.pacheco@apaa.org.br', 'Marisis', 'Pacheco', 1, '$2y$10$SkCz2CYajG1.bW/vfxBedub/MXxnP8zsd5VdKrGH9lVmfpoIdc2oq', 'DQi5lveT1Goaq4F2rQIsy6H21xB5HV3hxHrPdtOI2FaVp9wXgDPAvbkZmV4q', '2016-11-04 15:30:12', '2017-01-11 15:58:48', '2017-01-11 15:58:48', 2, 0, 2),
(15, 'dmaschio@apaa.org.br', 'Dulce', 'Maschio', 1, '$2y$10$wI//1bmPp4UN.29vti0nWugyKgeibiTUzJb3Gr7VgeCo.TpH68E.i', 'ue3YoC5yYgSouAIVJ32uALU4khADQJx51kwFvdv3JIG5WiYohpZ9qNZvv6sr', '2016-11-04 15:32:31', '2016-12-15 16:46:20', NULL, 0, 0, 2),
(16, 'danilo.cesar@apaa.org.br', 'Danilo', 'Cesar', 1, '$2y$10$Egpkc8deWTl78zAQ20OQXe/BzP4f0rGJXRDU6k1Jm1f2t2VcpDjPG', '7pjciSVcO9MQc5r2AWE9t8RmGGFtNmEE3ROt9hKRJYfKLhtfuCHpWzWNWxzA', '2017-01-11 16:02:24', '2017-01-12 12:03:19', NULL, 0, 0, 2),
(17, 'glaucia.costa@apaa.org.br', 'Glaucia', 'Costa', 2, '$2y$10$uU0qRDA9kyR5tuwS43suDepAqG/Sb9CZ3sR/YGJXmp.y6y8I7RVhq', 'pjwOIkSKFu1RxTejhLIxccHfACyCEKrd7HeQY6hcdpQc0VFJBBjoGB9vK2dO', '2017-01-11 16:03:42', '2017-01-20 17:01:45', NULL, 0, 2, 2),
(18, 'itamar@inovaebiz.com.br', 'Itamar', 'Souza', 1, '$2y$10$Odz.jxhx2C7/P9VwSD148.aPrZILNnuZ0GDacdTuHDFqQr.GhNphi', 'pcaqEXDmg5qD3HO0UUPRCFgAM0AxIpXtuuKqO5lMTKABwKgS3AYsxvDNespt', '2017-01-23 09:23:55', '2017-01-23 09:28:39', NULL, 0, 0, 1),
(19, 'silasfelipegarcia12@gmail.com', 'Silas', 'Garcia', 2, '$2y$10$1kFCRG6ReUiZr2uE3caxaOsk2xRbtVMPjQ5Nj1QAqHpKFThHHYbPe', 'KAaRjzXdW1ZPeB0YuddlYDDgiDVjGeiGgeDRZU50vSVsuMCGGTOiWekok9zF', '2017-05-03 14:37:57', '2017-05-22 20:04:12', NULL, 0, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acoes`
--
ALTER TABLE `acoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `acoes_plano_id_foreign` (`plano_id`),
  ADD KEY `acoes_programa_id_foreign` (`programa_id`),
  ADD KEY `acoes_especie_acao_id_foreign` (`especie_acao_id`),
  ADD KEY `acoes_linguagem_acao_id_foreign` (`linguagem_acao_id`),
  ADD KEY `acoes_funcao_acao_id_foreign` (`funcao_acao_id`),
  ADD KEY `acoes_codigo_acao_unique` (`codigo_acao`);

--
-- Indexes for table `atividades`
--
ALTER TABLE `atividades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `atividades_plano_id_foreign` (`plano_id`),
  ADD KEY `atividades_programa_id_foreign` (`programa_id`),
  ADD KEY `atividades_tipo_publico_id_foreign` (`tipo_publico_id`),
  ADD KEY `atividades_realizador_id_foreign` (`realizador_id`),
  ADD KEY `atividades_linguagem_programa_id_foreign` (`linguagem_programa_id`),
  ADD KEY `atividades_municipio_id_foreign` (`municipio_id`),
  ADD KEY `atividades_tipo_evento_id_foreign` (`tipo_evento_id`);

--
-- Indexes for table `cgs`
--
ALTER TABLE `cgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `engajamento_publicos`
--
ALTER TABLE `engajamento_publicos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `especie_acoes`
--
ALTER TABLE `especie_acoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `formula_indice`
--
ALTER TABLE `formula_indice`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `funcao_acoes`
--
ALTER TABLE `funcao_acoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generos_linguagem`
--
ALTER TABLE `generos_linguagem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `generos_linguagem_linguagem_programa_id_foreign` (`linguagem_programa_id`);

--
-- Indexes for table `indicadores`
--
ALTER TABLE `indicadores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indicadores_acao_id_foreign` (`acao_id`),
  ADD KEY `indicadores_plano_id_foreign` (`plano_id`),
  ADD KEY `fk_regra` (`regra_id`);

--
-- Indexes for table `linguagem_acoes`
--
ALTER TABLE `linguagem_acoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `linguagem_programas`
--
ALTER TABLE `linguagem_programas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `municipios_regiaoadministrativa_id_foreign` (`regiaoadministrativa_id`);

--
-- Indexes for table `objetos`
--
ALTER TABLE `objetos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oss`
--
ALTER TABLE `oss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissoes_usuarios`
--
ALTER TABLE `permissoes_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissoes_usuarios_user_id_foreign` (`user_id`),
  ADD KEY `permissoes_usuarios_plano_id_foreign` (`plano_id`),
  ADD KEY `permissoes_usuarios_programa_id_foreign` (`programa_id`);

--
-- Indexes for table `planos`
--
ALTER TABLE `planos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `planos_uge_id_foreign` (`uge_id`),
  ADD KEY `planos_os_id_foreign` (`os_id`),
  ADD KEY `planos_cg_id_foreign` (`cg_id`),
  ADD KEY `planos_objeto_id_foreign` (`objeto_id`),
  ADD KEY `planos_tipoobjeto_id_foreign` (`tipoobjeto_id`);

--
-- Indexes for table `programas`
--
ALTER TABLE `programas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `programas_plano_id_foreign` (`plano_id`),
  ADD KEY `programas_tipagem_id_foreign` (`tipagem_id`);

--
-- Indexes for table `realizadores`
--
ALTER TABLE `realizadores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `realizadores_municipio_id_foreign` (`municipio_id`);

--
-- Indexes for table `regiao_administrativas`
--
ALTER TABLE `regiao_administrativas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regra`
--
ALTER TABLE `regra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_plano_id` (`plano_id`);

--
-- Indexes for table `rotinas`
--
ALTER TABLE `rotinas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rotinas_plano_id_foreign` (`plano_id`);

--
-- Indexes for table `segmento_publicos`
--
ALTER TABLE `segmento_publicos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipagems`
--
ALTER TABLE `tipagems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipo_eventos`
--
ALTER TABLE `tipo_eventos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipo_objetos`
--
ALTER TABLE `tipo_objetos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipo_publicos`
--
ALTER TABLE `tipo_publicos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uges`
--
ALTER TABLE `uges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acoes`
--
ALTER TABLE `acoes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;
--
-- AUTO_INCREMENT for table `atividades`
--
ALTER TABLE `atividades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `cgs`
--
ALTER TABLE `cgs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `engajamento_publicos`
--
ALTER TABLE `engajamento_publicos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `especie_acoes`
--
ALTER TABLE `especie_acoes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `formula_indice`
--
ALTER TABLE `formula_indice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `funcao_acoes`
--
ALTER TABLE `funcao_acoes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `generos_linguagem`
--
ALTER TABLE `generos_linguagem`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `indicadores`
--
ALTER TABLE `indicadores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;
--
-- AUTO_INCREMENT for table `linguagem_acoes`
--
ALTER TABLE `linguagem_acoes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `linguagem_programas`
--
ALTER TABLE `linguagem_programas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `municipios`
--
ALTER TABLE `municipios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `objetos`
--
ALTER TABLE `objetos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `oss`
--
ALTER TABLE `oss`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `permissoes_usuarios`
--
ALTER TABLE `permissoes_usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `planos`
--
ALTER TABLE `planos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `programas`
--
ALTER TABLE `programas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `realizadores`
--
ALTER TABLE `realizadores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `regiao_administrativas`
--
ALTER TABLE `regiao_administrativas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `regra`
--
ALTER TABLE `regra`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `rotinas`
--
ALTER TABLE `rotinas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `segmento_publicos`
--
ALTER TABLE `segmento_publicos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tipagems`
--
ALTER TABLE `tipagems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tipo_eventos`
--
ALTER TABLE `tipo_eventos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tipo_objetos`
--
ALTER TABLE `tipo_objetos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tipo_publicos`
--
ALTER TABLE `tipo_publicos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `uges`
--
ALTER TABLE `uges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `acoes`
--
ALTER TABLE `acoes`
  ADD CONSTRAINT `acoes_especie_acao_id_foreign` FOREIGN KEY (`especie_acao_id`) REFERENCES `especie_acoes` (`id`),
  ADD CONSTRAINT `acoes_funcao_acao_id_foreign` FOREIGN KEY (`funcao_acao_id`) REFERENCES `funcao_acoes` (`id`),
  ADD CONSTRAINT `acoes_linguagem_acao_id_foreign` FOREIGN KEY (`linguagem_acao_id`) REFERENCES `linguagem_acoes` (`id`),
  ADD CONSTRAINT `acoes_plano_id_foreign` FOREIGN KEY (`plano_id`) REFERENCES `planos` (`id`),
  ADD CONSTRAINT `acoes_programa_id_foreign` FOREIGN KEY (`programa_id`) REFERENCES `programas` (`id`);

--
-- Limitadores para a tabela `atividades`
--
ALTER TABLE `atividades`
  ADD CONSTRAINT `atividades_linguagem_programa_id_foreign` FOREIGN KEY (`linguagem_programa_id`) REFERENCES `linguagem_programas` (`id`),
  ADD CONSTRAINT `atividades_municipio_id_foreign` FOREIGN KEY (`municipio_id`) REFERENCES `municipios` (`id`),
  ADD CONSTRAINT `atividades_plano_id_foreign` FOREIGN KEY (`plano_id`) REFERENCES `planos` (`id`),
  ADD CONSTRAINT `atividades_programa_id_foreign` FOREIGN KEY (`programa_id`) REFERENCES `programas` (`id`),
  ADD CONSTRAINT `atividades_realizador_id_foreign` FOREIGN KEY (`realizador_id`) REFERENCES `realizadores` (`id`),
  ADD CONSTRAINT `atividades_tipo_evento_id_foreign` FOREIGN KEY (`tipo_evento_id`) REFERENCES `tipo_eventos` (`id`),
  ADD CONSTRAINT `atividades_tipo_publico_id_foreign` FOREIGN KEY (`tipo_publico_id`) REFERENCES `tipo_publicos` (`id`);

--
-- Limitadores para a tabela `generos_linguagem`
--
ALTER TABLE `generos_linguagem`
  ADD CONSTRAINT `generos_linguagem_linguagem_programa_id_foreign` FOREIGN KEY (`linguagem_programa_id`) REFERENCES `linguagem_programas` (`id`);

--
-- Limitadores para a tabela `indicadores`
--
ALTER TABLE `indicadores`
  ADD CONSTRAINT `fk_regra` FOREIGN KEY (`regra_id`) REFERENCES `regra` (`id`),
  ADD CONSTRAINT `indicadores_acao_id_foreign` FOREIGN KEY (`acao_id`) REFERENCES `acoes` (`id`),
  ADD CONSTRAINT `indicadores_plano_id_foreign` FOREIGN KEY (`plano_id`) REFERENCES `planos` (`id`);

--
-- Limitadores para a tabela `municipios`
--
ALTER TABLE `municipios`
  ADD CONSTRAINT `municipios_regiaoadministrativa_id_foreign` FOREIGN KEY (`regiaoadministrativa_id`) REFERENCES `regiao_administrativas` (`id`);

--
-- Limitadores para a tabela `permissoes_usuarios`
--
ALTER TABLE `permissoes_usuarios`
  ADD CONSTRAINT `permissoes_usuarios_plano_id_foreign` FOREIGN KEY (`plano_id`) REFERENCES `planos` (`id`),
  ADD CONSTRAINT `permissoes_usuarios_programa_id_foreign` FOREIGN KEY (`programa_id`) REFERENCES `programas` (`id`),
  ADD CONSTRAINT `permissoes_usuarios_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Limitadores para a tabela `planos`
--
ALTER TABLE `planos`
  ADD CONSTRAINT `planos_cg_id_foreign` FOREIGN KEY (`cg_id`) REFERENCES `cgs` (`id`),
  ADD CONSTRAINT `planos_objeto_id_foreign` FOREIGN KEY (`objeto_id`) REFERENCES `objetos` (`id`),
  ADD CONSTRAINT `planos_os_id_foreign` FOREIGN KEY (`os_id`) REFERENCES `oss` (`id`),
  ADD CONSTRAINT `planos_tipoobjeto_id_foreign` FOREIGN KEY (`tipoobjeto_id`) REFERENCES `tipo_objetos` (`id`),
  ADD CONSTRAINT `planos_uge_id_foreign` FOREIGN KEY (`uge_id`) REFERENCES `uges` (`id`);

--
-- Limitadores para a tabela `programas`
--
ALTER TABLE `programas`
  ADD CONSTRAINT `programas_plano_id_foreign` FOREIGN KEY (`plano_id`) REFERENCES `planos` (`id`),
  ADD CONSTRAINT `programas_tipagem_id_foreign` FOREIGN KEY (`tipagem_id`) REFERENCES `tipagems` (`id`);

--
-- Limitadores para a tabela `realizadores`
--
ALTER TABLE `realizadores`
  ADD CONSTRAINT `realizadores_municipio_id_foreign` FOREIGN KEY (`municipio_id`) REFERENCES `municipios` (`id`);

--
-- Limitadores para a tabela `regra`
--
ALTER TABLE `regra`
  ADD CONSTRAINT `fk_plano_id` FOREIGN KEY (`plano_id`) REFERENCES `planos` (`id`);

--
-- Limitadores para a tabela `rotinas`
--
ALTER TABLE `rotinas`
  ADD CONSTRAINT `rotinas_plano_id_foreign` FOREIGN KEY (`plano_id`) REFERENCES `planos` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

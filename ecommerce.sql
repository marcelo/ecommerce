-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 26, 2020 at 08:19 AM
-- Server version: 5.7.31-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `peso` varchar(255) NOT NULL,
  `cor` varchar(255) NOT NULL,
  `classificacao` varchar(255) NOT NULL,
  `preco` double NOT NULL,
  `desconto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `url`, `categoria`, `peso`, `cor`, `classificacao`, `preco`, `desconto`) VALUES
(1, 'FURADEIRA COM IMPACTO VONDER 1/2\"', 'http://amazon.com.br/Furadeira-com-Impacto-Vonder-VDO1129/dp/B07794PFWX/ref=sr_1_1?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-1', '', '', '', '5,0', 0, '-'),
(2, 'FURADEIRA DE IMPACTO VONDER 127 V', 'http://amazon.com.br/Furadeira-com-Impacto-Vonder-VDO1128/dp/B07794NN44/ref=sr_1_2?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-2', '', '', '', '5,0', 230.92, '-'),
(3, 'FURADEIRA DE IMPACTO VONDER 220 V', 'http://amazon.com.br/Furadeira-Impacto-1050-Vonder-VDO1165/dp/B0778VG1J3/ref=sr_1_3?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-3', '', '', '', '-', 583.9, '-'),
(4, 'FURADEIRA DE IMPACTO VONDER 127 V', 'http://amazon.com.br/Furadeira-com-Impacto-Vonder-VDO1141/dp/B078WBZV7J/ref=sr_1_4?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-4', '', '', '', '-', 360.89, '-'),
(5, 'PARAFUSADEIRA/FURADEIRA A BATERIA, CARREGADOR BIVOLT AUTOMÁTICO, PFV 012 VONDER 12 V', 'http://amazon.com.br/Parafusadeira-Carregador-Autom%C3%A1tico-Vonder-VDO1137/dp/B07B2XB9D4/ref=sr_1_5?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-5', '', '', '', '4,3', 289.97, '-'),
(6, 'FURADEIRA DE IMPACTO VONDER 220 V', 'http://amazon.com.br/Furadeira-com-Impacto-Vonder-VDO1122/dp/B0791LC3DR/ref=sr_1_6?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-6', '', '', '', '5,0', 259.9, '-'),
(7, 'FURADEIRA E PARAFUSADEIRA 3/8\" FPV300 220V', 'http://amazon.com.br/Furadeira-Parafusadeira-FPV-Vonder-VDO1109/dp/B076MH1L7G/ref=sr_1_7?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-7', '', '', '', '4,6', 204.9, '-'),
(8, 'FURADEIRA DE IMPACTO VONDER 220 V', 'http://amazon.com.br/Furadeira-com-Impacto-Vonder-VDO1156/dp/B078XGQ6Y3/ref=sr_1_8?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-8', '', '', '', '5,0', 0, '-'),
(9, 'PARAFUSADEIRA/FURADEIRA GSR 7-14 E 127V, BOSCH 06014470D0-000, AZUL', 'http://amazon.com.br/Bosch-06014470D0-000-Parafusadeira-Furadeira-7-14/dp/B076HR7VD4/ref=sr_1_9?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-9', '', '', '', '4,6', 349.9, '-'),
(10, 'FURADEIRA DE IMPACTO VONDER 127 V', 'http://amazon.com.br/Furadeira-Impacto-1050-Vonder-VDO1166/dp/B0778TQPNK/ref=sr_1_10?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-10', '', '', '', '-', 0, '-'),
(11, 'PARAFUSADEIRA/FURADEIRA 1/2\" COM IMPACTO, BATERIA INTERCAMBIÁVEL DE 18 V, SEM BATERIA E SEM CARREGADOR, IPFV 1819I VONDER', 'http://amazon.com.br/Parafusadeira-furadeira-Intercambi%C3%A1vel-Carregador-Vonder/dp/B07WJ7GJ7X/ref=sr_1_11?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-11', '', '', '', '-', 671.33, '-'),
(12, 'PARAFUSADEIRA / FURADEIRA GSR 7-14 E 220V, BOSCH 06014470E0-000, AZUL', 'http://amazon.com.br/Bosch-06014470E0-000-Parafusadeira-Furadeira-7-14/dp/B076B952RL/ref=sr_1_12?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-12', '', '', '', '4,8', 306.72, '-'),
(13, 'FURADEIRA DE IMPACTO VONDER 127 V', 'http://amazon.com.br/Furadeira-sem-Impacto-Vonder-VDO1115/dp/B078HL6VRX/ref=sr_1_13?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-13', '', '', '', '5,0', 0, '-'),
(14, 'FURADEIRA IMPACTO 1/2 MAKITA MHP1640 127V', 'http://amazon.com.br/Furadeira-Impacto-Hp1640-Makita-Hp1640-127V/dp/B006BRYUI4/ref=sr_1_14?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-14', '', '', '', '4,9', 357.8, '-'),
(15, 'FURADEIRA DE IMPACTO GSB 13 RE 127V, BOSCH 060123D5D1-000, AZUL', 'http://amazon.com.br/Bosch-060123D5D1-000-Furadeira-Impacto-127V/dp/B076VYKZH8/ref=sr_1_15?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-15', '', '', '', '4,8', 367.53, '-'),
(16, 'MONDIAL, NFFI-07M FURADEIRA DE IMPACTO COM MALETA, 650W', 'http://amazon.com.br/NFFI-07M-Furadeira-Impacto-Mondial-Vermelha/dp/B076BB37Y3/ref=sr_1_16?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-16', '', '', '', '4,3', 149.9, '-'),
(17, 'FURADEIRA IMPACTO 1/2 MAKITA MHP1640 220V', 'http://amazon.com.br/Furadeira-Impacto-Hp1640-Makita-Hp1640-220V/dp/B002QB1ADW/ref=sr_1_17?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-17', '', '', '', '4,6', 479, '-'),
(18, 'FURADEIRA DE IMPACTO VONDER 127 V', 'http://amazon.com.br/Furadeira-com-Impacto-Vonder-VDO1155/dp/B0791KMG7V/ref=sr_1_18?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-18', '', '', '', '4,0', 0, '-'),
(19, 'JOGO V-LINE 41 PEÇAS, BOSCH, 2607017396-000, AZUL', 'http://amazon.com.br/Jogo-V-Line-pe%C3%A7as-Bosch-2607017396-000/dp/B07CTN73L1/ref=sr_1_19?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-19', '', '', '', '4,7', 72.9, '-'),
(20, 'FURADEIRA COM IMPACTO VONDER 220 V', 'http://amazon.com.br/Furadeira-com-Impacto-Vonder-VDO1140/dp/B0791MFYZY/ref=sr_1_20?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-20', '', '', '', '1,0', 360.89, '-'),
(21, 'BOSCH 060123D5E0-000 GSB 13 RE- FURADEIRA DE IMPACTO, 220V, AZUL', 'http://amazon.com.br/Bosch-060123D5E0-000-Furadeira-Impacto-220V/dp/B076KT85S8/ref=sr_1_21?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-21', '', '', '', '4,9', 334.9, '-'),
(22, 'PARAFUS/FURAD + PARAFUS(CJ) BAT 10,8V VD', 'http://amazon.com.br/Parafusadeira-Impacto-PBV108-Furadeira-Vonder/dp/B07G251PNS/ref=sr_1_22?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-22', '', '', '', '5,0', 555.44, '-'),
(23, 'PARAFUSADEIRA E FURADEIRA BIVOLT VONDER 18 V', 'http://amazon.com.br/Parafusadeira-Carregador-Autom%C3%A1tico-Vonder-VDO1114/dp/B078TL3QH9/ref=sr_1_23?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-23', '', '', '', '4,5', 0, '-'),
(24, 'FURADEIRA PARAFUSADEIRA IMPACTO 3 * 8 12 V A BATERIA VONDER', 'http://amazon.com.br/Furadeira-Parafusadeira-Impacto-Bateria-Vonder/dp/B07G2MJJYQ/ref=sr_1_24?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-24', '', '', '', '-', 449.9, '-'),
(25, 'MARTELETE PERFURADOR VONDER 220 V', 'http://amazon.com.br/Martelete-Perfurador-Rompedor-Vonder-VDO1169/dp/B078HVMGCR/ref=sr_1_25?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-25', '', '', '', '5,0', 428, '-'),
(26, 'KIT AZUL X-LINE CON 103 UNIDADES, BOSCH, 2607017395-000, AZUL', 'http://amazon.com.br/Azul-X-Line-unidades-Bosch-2607017395-000/dp/B07CVCTJLQ/ref=sr_1_26?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-26', '', '', '', '4,8', 219.9, '-'),
(27, 'PARAFUSADEIRA/FURADEIRA A BATERIA VONDER 10.8 V', 'http://amazon.com.br/Parafusadeira-Carregador-Autom%C3%A1tico-Vonder-VDO1118/dp/B076MBGDZ4/ref=sr_1_27?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-27', '', '', '', '4,0', 0, '-'),
(28, 'FURADEIRA SEM IMPACTO VONDER AMARELO', 'http://amazon.com.br/Furadeira-Impacto-Vonder-FSV1050-Amarela/dp/B07DQQLCY1/ref=sr_1_28?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-28', '', '', '', '4,1', 0, '-'),
(29, 'BLACK+DECKER, TM500BR, FURADEIRA DE IMPACTO 3/8\" 560W', 'http://amazon.com.br/Furadeira-Impacto-560W-Stanley-TM500BR/dp/B076BY8QXP/ref=sr_1_29?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-29', '', '', '', '4,6', 158, '-'),
(30, 'GRAMPEADOR MANUAL, VONDER VDO621 VONDER', 'http://amazon.com.br/VONDER-VDO621-Grampeador-Manual-Vonder/dp/B075SGS9TL/ref=sr_1_30?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-30', '', '', '', '2,5', 39.9, '-'),
(31, 'MALETA DE FERRAMENTAS, EDA, PRETO, 117 PEÇAS', 'http://amazon.com.br/Eda-8SH-Maleta-Ferramentas-Pe%C3%A7as/dp/B076YMYSWK/ref=sr_1_31?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-31', '', '', '', '4,4', 202.9, '-'),
(32, 'FURADEIRA SEM IMPACTO MAKITA 3/8\"', 'http://amazon.com.br/Furadeira-sem-Impacto-Makita-6412-110V/dp/B076ZMVGG9/ref=sr_1_32?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-32', '', '', '', '-', 0, '-'),
(33, 'BOSCH PROFESSIONAL GSR 1000 SMART - PARAFUSADEIRA/FURADEIRA A BATERIA COM MALETA E 11 ACESSÓRIOS, AZUL', 'http://amazon.com.br/Bosch-06019F40E0-000-Parafusadeira-Furadeira-Bateria/dp/B076KLZ3RM/ref=sr_1_33?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-33', '', '', '', '4,7', 0, '-'),
(34, 'ORGANIZADOR PLÁSTICO SIMPLES PARA FERRAMENTAS VD 8020 VONDER', 'http://amazon.com.br/Organizador-Pl%C3%A1stico-Ferramentas-Vonder-VDO2660/dp/B07JCGNR2J/ref=sr_1_34?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-34', '', '', '', '4,4', 0, '-'),
(35, 'DEWALT DCD700LC1-BR PARAFUSADEIRA 3/8\", AMARELO E PRETO', 'http://amazon.com.br/Parafusadeira-DeWalt-DCD700LC1-BR-Amarelo-Pacote/dp/B076YKQDL7/ref=sr_1_35?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-35', '', '', '', '4,5', 519.81, '-'),
(36, 'FURADEIRA SEM IMPACTO MAKITA 3/8\"', 'http://amazon.com.br/Furadeira-impacto-6412-MAKITA-6412-220V/dp/B002DTDM8S/ref=sr_1_36?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-36', '', '', '', '4,6', 492.12, '-'),
(37, 'FURADEIRA COM IMPACTO MAKITA 5/8\"', 'http://amazon.com.br/Furadeira-com-Impacto-Makita-HP2070X-220V/dp/B076KT1S96/ref=sr_1_37?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-37', '', '', '', '-', 0, '-'),
(38, 'CHAVE DE IMPACTO VONDER AMARELO 220 V', 'http://amazon.com.br/Chave-Impacto-Encaixe-Vonder-VDO1167/dp/B07DQRQCQ3/ref=sr_1_38?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-38', '', '', '', '4,1', 608.78, '-'),
(39, 'CAIXA PLÁSTICA VONDER', 'http://amazon.com.br/Caixa-Pl%C3%A1stica-7001-Vonder-VDO2680/dp/B0777QNM1F/ref=sr_1_39?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-39', '', '', '', '4,0', 0, '-'),
(40, 'FURADEIRA DE IMPACTO 550W, MONDIAL, FI-09.', 'http://amazon.com.br/FI-09-Furadeira-Imapcto-Mondial-Pequeno/dp/B076BBRJZK/ref=sr_1_40?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-40', '', '', '', '4,8', 0, '-'),
(41, 'FURADEIRA DE IMPACTO 3/8” 550W COM 50 ACESSÓRIOS,  BLACK+DECKER', 'http://amazon.com.br/Furadeira-Impacto-Acess%C3%B3rios-Stanley-HD400K50-B2/dp/B076Y7441Y/ref=sr_1_41?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-41', '', '', '', '3,8', 182.9, '-'),
(42, 'CHAVE DE IMPACTO BIVOLT VONDER 15 L', 'http://amazon.com.br/Impacto-Bateria-Carregador-Vonder-VDO1190/dp/B077BQ7YFD/ref=sr_1_42?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-42', '', '', '', '5,0', 1799, '-'),
(43, 'BROCAS EM JOGO COM 16 PEÇAS, EDA, 9TG, PRETO', 'http://amazon.com.br/Brocas-Jogo-Eda-Preto-Pe%C3%A7as/dp/B0777QZ24Z/ref=sr_1_43?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-43', '', '', '', '3,7', 27.34, '-'),
(44, 'TRAMONTINA 42360010, FURADEIRA DE IMPACTO 1/2, TENSÃO 127V, POTENCIA 500W, CORPO INJETADO, 2900 RPM, CINZA', 'http://amazon.com.br/Tramontina-42360010-Furadeira-Potencia-Injetado/dp/B076KQQYQ6/ref=sr_1_44?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-44', '', '', '', '4,6', 199.4, '-'),
(45, 'SET DE BITS PONTAS E SOQUETES 43 PEÇAS BOSCH 2607017164, CINZA', 'http://amazon.com.br/Bosch-2607017164-000-Bits-Cinza-Pe%C3%A7as/dp/B0097DYZHK/ref=sr_1_45?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-45', '', '', '', '4,7', 108.49, '-'),
(46, 'STANLEY, JOGO MULTIFERRAMENTAS 110 PEÇAS MAXI-DRIVE, AMARELO/PRETO', 'http://amazon.com.br/Stanley-STMT81243-840-Multiferramentas-Maxi-Drive-Amarelo/dp/B079NCC2LQ/ref=sr_1_46?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-46', '', '', '', '4,6', 629.9, '-'),
(47, 'FURADEIRA COM IMPACTO MAKITA 1/2\"', 'http://amazon.com.br/Furadeira-impacto-HP1630K-MAKITA-HP1630K-220V/dp/B0080DABD0/ref=sr_1_47?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-47', '', '', '', '4,5', 653.08, '-'),
(48, 'MARTELETE PERFURADOR ROMPEDOR SDS PLUS 2,4J 800W  COM PONTEIRO E 5 BROCAS, STANLEY', 'http://amazon.com.br/Martelete-perfurador-rompedor-watts-acess%C3%B3rios/dp/B0777M2BHS/ref=sr_1_48?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-48', '', '', '', '4,8', 599, '-'),
(49, 'CAIXA MODULAR VAZIA PARA SET DE BITS IMPACT CONTROL, BOSCH, MODELO 2608522363-000, CINZA, GRANDE', 'http://amazon.com.br/Modular-Impact-Control-Modelo-2608522363-000/dp/B01N23C3ON/ref=sr_1_49?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-49', '', '', '', '4,3', 47.38, '-'),
(50, 'FURADEIRA DE IMPACTO GSB 16 RE 127V, BOSCH 06012281D4-000, AZUL', 'http://amazon.com.br/Bosch-06012281D4-000-Furadeira-Impacto-127V/dp/B076KZBW5Z/ref=sr_1_50?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-50', '', '', '', '4,4', 0, '-'),
(51, 'FURADEIRA COM IMPACTO MAKITA 1/2\"', 'http://amazon.com.br/Furadeira-com-Impacto-Makita-HP1630K-127V/dp/B00AC1BY2A/ref=sr_1_51?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-51', '', '', '', '-', 0, '-'),
(52, 'MARTELETE PERFURADOR VONDER 127 V', 'http://amazon.com.br/Martelete-Perfurador-127V-Vonder-Amarelo/dp/B07JC6SQP3/ref=sr_1_52?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-52', '', '', '', '5,0', 888.78, '-'),
(53, 'MARTELETE PERFURADOR/ROMPEDOR VONDER 127 V', 'http://amazon.com.br/Martelete-Perfurador-Rompedor-Vonder-VDO1195/dp/B0778WYWCD/ref=sr_1_53?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-53', '', '', '', '5,0', 0, '-'),
(54, 'FURADEIRA DE IMPACTO 600W, MONDIAL, NFFI-07.', 'http://amazon.com.br/NFFI-07-Furadeira-Impacto-Mondial-Vermelha/dp/B076X6RL5Y/ref=sr_1_54?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-54', '', '', '', '4,1', 0, '-'),
(55, 'MARTELETE PERFURADOR SDS PLUS 1,34J 620W, BLACK+DECKER', 'http://amazon.com.br/Martelete-Perfurador-Plus-Stanley-KD620K-BR/dp/B076VQGWVR/ref=sr_1_55?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-55', '', '', '', '5,0', 419.9, '-'),
(56, 'PARAFUSADEIRA FURADEIRA IMPACTO BATERIA 12V DWT - 6005074000', 'http://amazon.com.br/Parafusadeira-Furadeira-Impacto-bateria-12V/dp/B07VHSX655/ref=sr_1_56?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-56', '', '', '', '-', 0, '-'),
(57, 'PARAFUSADEIRA DE IMPACTO VONDER', 'http://amazon.com.br/Parafusadeira-Carregador-Autom%C3%A1tico-Vonder-VDO1117/dp/B078TJYC16/ref=sr_1_57?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-57', '', '', '', '-', 689.9, '-'),
(58, 'FURADEIRA DE IMPACTO 1/2” 550W EM MALETA COM 82 ACESSÓRIOS BLACK+DECKER', 'http://amazon.com.br/Furadeira-Impacto-Acess%C3%B3rios-Stanley-HD555K88-BR/dp/B076M957BS/ref=sr_1_58?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-58', '', '', '', '4,7', 409.9, '-'),
(59, 'PARAFUSADEIRA COM IMPACTO, BATERIA INTERCAMBIÁVEL DE 18 V, SEM BATERIA E SEM CARREGADOR, IPV 1818I VONDER', 'http://amazon.com.br/Parafusadeira-Impacto-Intercambi%C3%A1vel-Carregador-Vonder/dp/B07WKC3LPK/ref=sr_1_59?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-59', '', '', '', '-', 0, '-'),
(60, 'PARAFUSADEIRA FURADEIRA COM IMPACTO A BATERIA DWT PFD 120I 12V BIVOLT', 'http://amazon.com.br/Parafusadeira-Furadeira-Impacto-Bateria-Bivolt/dp/B07JKRYGP5/ref=sr_1_60?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-60', '', '', '', '-', 652.91, '-'),
(61, 'ÓCULOS SPECTRA 2000 INCOLOR, CARBOGRAFITE, 012228512, INCOLOR', 'http://amazon.com.br/%C3%93culos-Spectra-Incolor-Carbografite-012228512/dp/B076KTWDH2/ref=sr_1_61?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-61', '', '', '', '4,8', 8.25, '-'),
(62, 'BOSCH 1600A007SF-000, L-BOXX MINI L-BOXX, AZUL', 'http://amazon.com.br/Bosch-1600A007SF-000-L-Boxx-MINI-L-BOXX/dp/B00QR8KKTA/ref=sr_1_62?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-62', '', '', '', '4,2', 64.9, '-'),
(63, 'SET DE BITS E SOQUETES BOSCH 27 PEÇAS, 2607017160-000, CINZA', 'http://amazon.com.br/Bosch-2607017160-000-Bits-Cinza-Pe%C3%A7as/dp/B0071IK9CI/ref=sr_1_63?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-63', '', '', '', '4,6', 111, '-'),
(64, 'BOSCH 2608522362-000, CAIXA MODULAR SET IMPACT CONTROL, CINZA, MÉDIO', 'http://amazon.com.br/Bosch-2608522362-000-Modular-Impact-Control/dp/B01N7T3P19/ref=sr_1_64?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-64', '', '', '', '4,3', 0, '-'),
(65, 'PARAFUSADEIRA VONDER 127 V', 'http://amazon.com.br/Parafusadeira-PFV-Encaixe-Vonder-VDO1139/dp/B07D1DYJSK/ref=sr_1_65?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-65', '', '', '', '-', 351.75, '-'),
(66, 'JOGO V-LINE TITÂNIO 83 PEÇAS, BOSCH, 2607017403-000, AZUL', 'http://amazon.com.br/V-Line-Tit%C3%A2nio-Pe%C3%A7as-Bosch-2607017403-000/dp/B07CVDG994/ref=sr_1_66?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-66', '', '', '', '4,5', 0, '-'),
(67, 'KIT BROCAS COM MALETA PARA FURADEIRA E PARAFUSADEIRA COM 50 ACESSÓRIOS, MULTILASER, PRETO, PACOTE DE 50', 'http://amazon.com.br/Brocas-Furadeira-Parafusadeira-Acess%C3%B3rios-Multilaser/dp/B07WKPX1LT/ref=sr_1_67?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-67', '', '', '', '4,3', 112.9, '-'),
(68, 'PARAFUSADEIRA FURADEIRA 3/8\", BATERIA INTERCAMBIÁVEL DE 18 V, SEM BATERIA E SEM CARREGADOR, IPFV 1820 VONDER', 'http://amazon.com.br/Parafusadeira-Furadeira-Intercambi%C3%A1vel-Carregador-Vonder/dp/B07WJ7GS16/ref=sr_1_68?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-68', '', '', '', '-', 0, '-'),
(69, 'MARTELETE PERFURADOR VONDER 220 V', 'http://amazon.com.br/Martelete-Perfurador-Rompedor-Vonder-VDO1174/dp/B07DQP8BDX/ref=sr_1_69?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-69', '', '', '', '5,0', 0, '-'),
(70, 'PARAFUSADEIRA/FURADEIRA A BATERIA 12 V CARREGADOR BIVOLT AUTOMÁTICO PFV 012 VONDER', 'http://amazon.com.br/Parafusadeira-furadeira-bateria-carregador-autom%C3%A1tico/dp/B07ZKZ8LMT/ref=sr_1_70?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-70', '', '', '', '-', 0, '-'),
(71, 'FURADEIRA PNEUMÁTICA FP 380-VONDER-6256000380', 'http://amazon.com.br/VONDER-Furadeira-Pneum%C3%A1tica-FP-380-VONDER-6256000380/dp/B0776V27YH/ref=sr_1_71?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-71', '', '', '', '-', 0, '-'),
(72, 'MARTELETE PERFURADOR E ROMPEDOR, BATERIA INTERCAMBIÁVEL DE 18 V, SEM BATERIA E SEM CARREGADOR, IMV 1815 VONDER', 'http://amazon.com.br/Martelete-Perfurador-Intercambi%C3%A1vel-Carregador-Vonder/dp/B07WDZ1NBW/ref=sr_1_72?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-72', '', '', '', '-', 0, '-'),
(73, 'MARTELETE PERFURADOR/ROMPEDOR MAKITA', 'http://amazon.com.br/Martelete-Perfurador-Rompedor-Makita-HR2630J-220V/dp/B076YK1885/ref=sr_1_73?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-73', '', '', '', '5,0', 926.3, '-'),
(74, 'FIXADOR TRAVA PORTAS MAGNÉTICO ADESIVO BRANCO PRENDE KIT 3UN', 'http://amazon.com.br/Fixador-Portas-Magn%C3%A9tico-Adesivo-Branco/dp/B0813HZ69X/ref=sr_1_74?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-74', '', '', '', '4,7', 93.24, '-'),
(75, 'MARTELO ROMPEDOR 5KG  900W MAKITA 220V', 'http://amazon.com.br/Martelo-Demolidor-220-Makita-M8600G-220V/dp/B01N0MOEXM/ref=sr_1_75?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-75', '', '', '', '5,0', 1830.94, '-'),
(76, 'FURADEIRA DE IMPACTO 1/2\" KIT COM 9 BROCAS 127V FIV709 - VONDER', 'http://amazon.com.br/Furadeira-Impacto-brocas-127v-Fiv709/dp/B07SX5SNVX/ref=sr_1_76?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-76', '', '', '', '-', 412.9, '-'),
(77, 'FURADEIRA DE BANCADA FBV 013 1/3HP 220V-VONDER-FBV013', 'http://amazon.com.br/Furadeira-Bancada-FBV-013-220V-VONDER-FBV013/dp/B076Y8ZYJY/ref=sr_1_77?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-77', '', '', '', '-', 0, '-'),
(78, 'ADAPTADOR PARA SOQUETES JOGO COM 3 PEÇAS - VONDER', 'http://amazon.com.br/Adaptador-para-Soquetes-Jogo-pe%C3%A7as/dp/B07WK93CDX/ref=sr_1_78?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-78', '', '', '', '-', 24, '-'),
(79, 'FURADEIRA DE BANCADA 5/8 POL. 1/2HP 220V-VONDER-FBV016', 'http://amazon.com.br/Furadeira-Bancada-Pol-2HP-220V-VONDER-FBV016/dp/B076Y6KJQ8/ref=sr_1_79?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=furadeira+impacto+vonder&qid=1598440514&sr=8-79', '', '', '', '-', 1509.9, '-');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

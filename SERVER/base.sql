-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.5.2-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para vrp
CREATE DATABASE IF NOT EXISTS `vrp` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `vrp`;

-- Copiando estrutura para tabela vrp.clothes
CREATE TABLE IF NOT EXISTS `clothes` (
  `name` varchar(50) DEFAULT NULL,
  `permiss` varchar(50) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `custom` text DEFAULT NULL,
  `sexo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela vrp.clothes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `clothes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clothes` ENABLE KEYS */;

-- Copiando estrutura para tabela vrp.mirtin_bans
CREATE TABLE IF NOT EXISTS `mirtin_bans` (
  `user_id` int(11) NOT NULL,
  `motivo` text NOT NULL,
  `banimento` tinytext NOT NULL,
  `desbanimento` tinytext NOT NULL,
  `time` int(11) NOT NULL,
  `hwid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela vrp.mirtin_bans: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mirtin_bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `mirtin_bans` ENABLE KEYS */;

-- Copiando estrutura para tabela vrp.mirtin_bans_hwid
CREATE TABLE IF NOT EXISTS `mirtin_bans_hwid` (
  `token` varchar(120) NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`token`),
  KEY `user_id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela vrp.mirtin_bans_hwid: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mirtin_bans_hwid` DISABLE KEYS */;
/*!40000 ALTER TABLE `mirtin_bans_hwid` ENABLE KEYS */;

-- Copiando estrutura para tabela vrp.mirtin_chamados
CREATE TABLE IF NOT EXISTS `mirtin_chamados` (
  `user_id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `historico` text NOT NULL DEFAULT '{}',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela vrp.mirtin_chamados: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mirtin_chamados` DISABLE KEYS */;
/*!40000 ALTER TABLE `mirtin_chamados` ENABLE KEYS */;

-- Copiando estrutura para tabela vrp.mirtin_homes
CREATE TABLE IF NOT EXISTS `mirtin_homes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(15) NOT NULL,
  `price` int(11) NOT NULL,
  `coords` varchar(50) NOT NULL,
  `garagem` text DEFAULT '{}',
  `chaves` int(11) DEFAULT NULL,
  `minBau` int(11) NOT NULL,
  `maxMoradores` int(11) DEFAULT 3,
  `permissao` varchar(50) NOT NULL,
  `interior` int(11) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela vrp.mirtin_homes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mirtin_homes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mirtin_homes` ENABLE KEYS */;

-- Copiando estrutura para tabela vrp.mirtin_orgs
CREATE TABLE IF NOT EXISTS `mirtin_orgs` (
  `org` varchar(50) NOT NULL,
  `membros` text NOT NULL DEFAULT '{}',
  `maxMembros` int(11) NOT NULL DEFAULT 0,
  `anotacao` text DEFAULT NULL,
  `banco` int(11) DEFAULT 0,
  `bancoHistorico` text DEFAULT '{}',
  PRIMARY KEY (`org`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela vrp.mirtin_orgs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mirtin_orgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mirtin_orgs` ENABLE KEYS */;

-- Copiando estrutura para tabela vrp.mirtin_shops
CREATE TABLE IF NOT EXISTS `mirtin_shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proprietario` int(11) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `coords` text DEFAULT NULL,
  `config` text DEFAULT NULL,
  `saldo` int(11) DEFAULT NULL,
  `informacoes` text DEFAULT NULL,
  `estoque` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela vrp.mirtin_shops: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mirtin_shops` DISABLE KEYS */;
/*!40000 ALTER TABLE `mirtin_shops` ENABLE KEYS */;

-- Copiando estrutura para tabela vrp.mirtin_users_homes
CREATE TABLE IF NOT EXISTS `mirtin_users_homes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  `houseID` int(11) NOT NULL,
  `proprietario` int(11) NOT NULL,
  `moradores` text DEFAULT '{}',
  `bau` text DEFAULT '{}',
  `armario` text DEFAULT '{}',
  `interior` int(11) NOT NULL,
  `iptu` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela vrp.mirtin_users_homes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mirtin_users_homes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mirtin_users_homes` ENABLE KEYS */;

-- Copiando estrutura para tabela vrp.vrp_srv_data
CREATE TABLE IF NOT EXISTS `vrp_srv_data` (
  `dkey` varchar(100) NOT NULL,
  `dvalue` text DEFAULT NULL,
  PRIMARY KEY (`dkey`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela vrp.vrp_srv_data: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `vrp_srv_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrp_srv_data` ENABLE KEYS */;

-- Copiando estrutura para tabela vrp.vrp_users
CREATE TABLE IF NOT EXISTS `vrp_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ultimo_login` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `whitelist` tinyint(1) DEFAULT NULL,
  `paypal` int(11) DEFAULT 0,
  `Motivo_BAN` varchar(255) DEFAULT NULL,
  `Motivo_UNBAN` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela vrp.vrp_users: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `vrp_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrp_users` ENABLE KEYS */;

-- Copiando estrutura para tabela vrp.vrp_users_infos
CREATE TABLE IF NOT EXISTS `vrp_users_infos` (
  `user_id` int(11) NOT NULL,
  `controller` int(11) DEFAULT 0,
  `datatable` text DEFAULT '{}',
  `rosto` text DEFAULT '{}',
  `roupas` text DEFAULT '{}',
  `tattos` text DEFAULT '{}',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela vrp.vrp_users_infos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `vrp_users_infos` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrp_users_infos` ENABLE KEYS */;

-- Copiando estrutura para tabela vrp.vrp_user_data
CREATE TABLE IF NOT EXISTS `vrp_user_data` (
  `user_id` int(11) NOT NULL,
  `dkey` varchar(100) NOT NULL,
  `dvalue` text DEFAULT NULL,
  PRIMARY KEY (`user_id`,`dkey`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela vrp.vrp_user_data: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `vrp_user_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrp_user_data` ENABLE KEYS */;

-- Copiando estrutura para tabela vrp.vrp_user_identities
CREATE TABLE IF NOT EXISTS `vrp_user_identities` (
  `user_id` int(11) NOT NULL,
  `registro` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `sobrenome` varchar(50) DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `banco` int(11) DEFAULT 25000,
  `multas` int(11) DEFAULT 0,
  `criminal` text DEFAULT '{}',
  `signo` varchar(50) DEFAULT 'Nenhum',
  `data_nascimento` varchar(50) DEFAULT '17/03/2001',
  `relacionamento` varchar(255) DEFAULT '{}',
  `total_hour` int(11) DEFAULT 0,
  `extrato` text DEFAULT '{}',
  PRIMARY KEY (`user_id`),
  KEY `registro` (`registro`),
  KEY `telefone` (`telefone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela vrp.vrp_user_identities: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `vrp_user_identities` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrp_user_identities` ENABLE KEYS */;

-- Copiando estrutura para tabela vrp.vrp_user_ids
CREATE TABLE IF NOT EXISTS `vrp_user_ids` (
  `identifier` varchar(150) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela vrp.vrp_user_ids: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `vrp_user_ids` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrp_user_ids` ENABLE KEYS */;

-- Copiando estrutura para tabela vrp.vrp_user_veiculos
CREATE TABLE IF NOT EXISTS `vrp_user_veiculos` (
  `user_id` int(11) NOT NULL,
  `veiculo` varchar(50) NOT NULL,
  `status` int(11) DEFAULT 0,
  `motor` int(11) DEFAULT 1000,
  `lataria` int(11) DEFAULT 1000,
  `gasolina` int(11) DEFAULT 15,
  `ipva` int(11) DEFAULT 7,
  `portamalas` text DEFAULT '{}',
  `tunagem` text DEFAULT '{}',
  `estado` text DEFAULT '{}',
  `favorite` int(11) DEFAULT 0,
  `alugado` tinyint(4) NOT NULL DEFAULT 0,
  `data_alugado` text DEFAULT NULL,
  PRIMARY KEY (`user_id`,`veiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela vrp.vrp_user_veiculos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `vrp_user_veiculos` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrp_user_veiculos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

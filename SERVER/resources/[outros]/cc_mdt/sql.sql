SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `cc_boletim` (
  `token` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nuser_id` int(11) NOT NULL,
  `image` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'images/profile.png',
  `tempo` int(11) NOT NULL,
  `multa` int(11) NOT NULL,
  `fianca` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`info`)),
  `status` varchar(255) NOT NULL DEFAULT 'Aberto',
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `cc_comunicados` (
  `user_id` int(11) NOT NULL,
  `mensagem` varchar(255) NOT NULL,
  `token` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `cc_perfil` (
  `user_id` int(11) NOT NULL,
  `senha` varchar(30) NOT NULL,
  `image` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'images/profile.png',
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

ALTER TABLE `cc_boletim`
  ADD PRIMARY KEY (`token`);

ALTER TABLE `cc_comunicados`
  ADD PRIMARY KEY (`token`),
  ADD KEY `fk_cc_perfil_comunicados` (`user_id`);

ALTER TABLE `cc_perfil`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`) USING BTREE;

ALTER TABLE `cc_boletim`
  MODIFY `token` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `cc_comunicados`
  MODIFY `token` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `cc_perfil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `cc_comunicados`
  ADD CONSTRAINT `fk_cc_perfil_comunicados` FOREIGN KEY (`user_id`) REFERENCES `cc_perfil` (`user_id`) ON DELETE CASCADE;
COMMIT;

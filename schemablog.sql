-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.40 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Copiando dados para a tabela blog_master.avaliacaos: 0 rows
/*!40000 ALTER TABLE `avaliacaos` DISABLE KEYS */;
INSERT INTO `avaliacaos` (`id`, `like`, `deslike`, `user_id`, `publicacao_id`, `created_at`, `updated_at`) VALUES
	(1, '2', '3', 1, 1, NULL, NULL),
	(2, '8', '5', 1, 2, NULL, NULL),
	(4, '10', '7', 2, 3, NULL, NULL);
/*!40000 ALTER TABLE `avaliacaos` ENABLE KEYS */;

-- Copiando dados para a tabela blog_master.cache: 0 rows
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;

-- Copiando dados para a tabela blog_master.cache_locks: 0 rows
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;

-- Copiando dados para a tabela blog_master.comentarios: 0 rows
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
INSERT INTO `comentarios` (`id`, `conteudo`, `publicacao_id`, `created_at`, `updated_at`, `user_id`) VALUES
	(1, 'Essa publicacao me serviu muito.', 1, NULL, NULL, 1),
	(2, 'Essa publicacao é ótima.', 1, NULL, NULL, 1),
	(3, 'Essa publicacao é ótima.', 2, NULL, NULL, 1),
	(4, 'Essa publicacao é ótima.', 3, NULL, NULL, 1);
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;

-- Copiando dados para a tabela blog_master.empresas: 1 rows
/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
INSERT INTO `empresas` (`id`, `nome`, `logo`, `created_at`, `updated_at`, `publicacao_id`) VALUES
	(1, 'Sabor do Brasil', 'logo/logo_sabor_do_brasil.png', NULL, NULL, 0);
/*!40000 ALTER TABLE `empresas` ENABLE KEYS */;

-- Copiando dados para a tabela blog_master.failed_jobs: 0 rows
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Copiando dados para a tabela blog_master.jobs: 0 rows
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Copiando dados para a tabela blog_master.job_batches: 0 rows
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;

-- Copiando dados para a tabela blog_master.migrations: 10 rows
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1),
	(4, '2024_10_22_115307_create_empresas_table', 1),
	(5, '2024_10_22_115407_create_publicacaos_table', 1),
	(6, '2024_10_22_140331_create_avaliacoes_table', 1),
	(7, '2024_10_22_140706_create_comentarios_table', 1),
	(8, '2024_10_23_115130_alter_table_empresas', 2),
	(9, '2024_10_23_120650_alter_table_comentarios', 2),
	(10, '2024_10_23_135416_rename_avaliacoes_table', 3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Copiando dados para a tabela blog_master.password_reset_tokens: 0 rows
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;

-- Copiando dados para a tabela blog_master.publicacaos: 3 rows
/*!40000 ALTER TABLE `publicacaos` DISABLE KEYS */;
INSERT INTO `publicacaos` (`id`, `foto`, `titulo_prato`, `local`, `cidade`, `empresa_id`, `created_at`, `updated_at`) VALUES
	(1, 'publicacao/publicacao01.png', 'Titulo do Prato 01', 'Local 01', 'Maceio-AL', 1, NULL, NULL),
	(2, 'publicacao/publicacao02.png', 'Titulo do Prato 02', 'Local 02', 'Minas Gerais-MG', 1, NULL, NULL),
	(3, 'publicacao/publicacao03.png', 'Titulo do Prato 03', 'Local 03', 'Rio de Janerio-RJ', 1, NULL, NULL);
/*!40000 ALTER TABLE `publicacaos` ENABLE KEYS */;

-- Copiando dados para a tabela blog_master.sessions: 1 rows
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('g8tiEPLmFAYISEMTw7trWeT71USF7ZSWD2DgWLxL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQlZyRHJKejlCQUlGTkRzYzZMdDRaSnFsZ3RKa1cxSWR3Z2hVUmRLNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729858499);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- Copiando dados para a tabela blog_master.users: 4 rows
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `foto`, `apelido`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'usuario01', 'foto_usuario/usuario_01.jpg', 'usuario_01', 'usuario01@usuario.com', NULL, '$2y$12$I/AlonqMXrR61Z6hPbzjE.o2czH/X1BjWYJI//VCux0TgndQDs1cW', NULL, NULL, NULL),
	(2, 'usuario02', 'foto_usuario/usuario_02.jpg', 'usuario_02', 'usuario02@usuario.com', NULL, '$2y$12$I/AlonqMXrR61Z6hPbzjE.o2czH/X1BjWYJI//VCux0TgndQDs1cW', NULL, NULL, NULL),
	(3, 'usuario03', 'foto_usuario/usuario_03.jpg', 'usuario_03', 'usuario03@usuario.com', NULL, '$2y$12$I/AlonqMXrR61Z6hPbzjE.o2czH/X1BjWYJI//VCux0TgndQDs1cW', NULL, NULL, NULL),
	(4, 'usuario04', NULL, NULL, 'usuario04@usuario.com', NULL, '$2y$12$I/AlonqMXrR61Z6hPbzjE.o2czH/X1BjWYJI//VCux0TgndQDs1cW', NULL, '2024-10-24 16:46:40', '2024-10-24 16:46:40');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

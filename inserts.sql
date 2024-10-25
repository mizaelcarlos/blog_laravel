INSERT INTO `users` (`id`, `name`, `foto`, `nickname`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'usuario01', 'foto_usuario/usuario_01.jpg', 'usuario_01', 'usuario01@usuario.com', NULL, '$2y$12$I/AlonqMXrR61Z6hPbzjE.o2czH/X1BjWYJI//VCux0TgndQDs1cW', NULL, NULL, NULL),
	(2, 'usuario02', 'foto_usuario/usuario_02.jpg', 'usuario_02', 'usuario02@usuario.com', NULL, '$2y$12$I/AlonqMXrR61Z6hPbzjE.o2czH/X1BjWYJI//VCux0TgndQDs1cW', NULL, NULL, NULL),
	(3, 'usuario03', 'foto_usuario/usuario_03.jpg', 'usuario_03', 'usuario03@usuario.com', NULL, '$2y$12$I/AlonqMXrR61Z6hPbzjE.o2czH/X1BjWYJI//VCux0TgndQDs1cW', NULL, NULL, NULL),
	(4, 'usuario04', NULL, NULL, 'usuario04@usuario.com', NULL, '$2y$12$I/AlonqMXrR61Z6hPbzjE.o2czH/X1BjWYJI//VCux0TgndQDs1cW', NULL, '2024-10-24 16:46:40', '2024-10-24 16:46:40');

INSERT INTO `empresas` (`id`, `nome`, `logo`, `created_at`, `updated_at`) VALUES
	(1, 'Sabor do Brasil', 'logo/logo_sabor_do_brasil.png', NULL, NULL);
	
INSERT INTO `publicacoes` (`id`, `foto`, `titulo_prato`, `local`, `cidade`, `empresa_id`, `created_at`, `updated_at`) VALUES
	(1, 'publicacao/publicacao01.png', 'Titulo 01', 'Local 01', 'Maceio-AL', 1, "2023-02-22 09:15:55","2023-09-22 09:18:55"),
	(2, 'publicacao/publicacao02.png', 'Titulo 02', 'Local 02', 'Belo Horizonte-MG', 1, "2023-02-22 09:10:55","2023-02-22 09:16:55"),
	(3, 'publicacao/publicacao03.png', 'Titulo 03', 'Local 03', 'Macaé-RJ', 1,"2023-05-22 09:13:55","2023-02-22 09:15:55");
		


	
INSERT INTO `avaliacoes` (`id`, `like`, `deslike`, `user_id`, `publicacao_id`, `created_at`, `updated_at`) VALUES
	(1, '2', '3', 1, 1, NULL, NULL),
	(2, '8', '5', 1, 2, NULL, NULL),
	(4, '10', '7', 2, 3, NULL, NULL);
	
	
INSERT INTO `comentarios` (`id`, `conteudo`, `publicacao_id`, `created_at`, `updated_at`, `user_id`) VALUES
	(1, 'Essa publicacao me serviu muito.', 1, NULL, NULL, 1),
	(2, 'Essa publicacao é ótima.', 1, NULL, NULL, 1),
	(3, 'Essa publicacao é ótima.', 2, NULL, NULL, 1),
	(4, 'Essa publicacao é ótima.', 3, NULL, NULL, 1);
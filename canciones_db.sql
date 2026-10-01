CREATE DATABASE IF NOT EXISTS `canciones_db`;
USE `canciones_db`;

CREATE TABLE IF NOT EXISTS `canciones` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `artista` varchar(255) DEFAULT NULL,
  `album` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `idioma` varchar(255) DEFAULT NULL,
  `fecha_de_creacion` datetime DEFAULT NULL,
  `fecha_de_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO canciones (titulo, artista, album, genero, idioma, fecha_de_creacion, fecha_de_actualizacion)
VALUES ('De Música Ligera', 'Soda Stereo', 'Canción Animal', 'Rock', 'Español', NOW(), NOW());

INSERT INTO canciones (titulo, artista, album, genero, idioma, fecha_de_creacion, fecha_de_actualizacion)
VALUES ('Bohemian Rhapsody', 'Queen', 'A Night at the Opera', 'Rock', 'Inglés', NOW(), NOW());

INSERT INTO canciones (titulo, artista, album, genero, idioma, fecha_de_creacion, fecha_de_actualizacion)
VALUES ('La Camisa Negra', 'Juanes', 'Mi Sangre', 'Pop', 'Español', NOW(), NOW());

INSERT INTO canciones (titulo, artista, album, genero, idioma, fecha_de_creacion, fecha_de_actualizacion)
VALUES ('Billie Jean', 'Michael Jackson', 'Thriller', 'Pop', 'Inglés', NOW(), NOW());

INSERT INTO canciones (titulo, artista, album, genero, idioma, fecha_de_creacion, fecha_de_actualizacion)
VALUES ('Vivir Mi Vida', 'Marc Anthony', '3.0', 'Salsa', 'Español', NOW(), NOW());

INSERT INTO canciones (titulo, artista, album, genero, idioma, fecha_de_creacion, fecha_de_actualizacion)
VALUES ('Take Five', 'Dave Brubeck', 'Time Out', 'Jazz', 'Instrumental', NOW(), NOW());
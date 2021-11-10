use rpg;
INSERT INTO GUILDA VALUES
('Dragon hunters', default),
('Skull knights', default);

select * from guilda;
DESCRIBE GUILDA;

INSERT INTO PARTY VALUES
('Abutres', 3, default, 2),
('Golden Raid', 7, default, 1),
('Black Sword', 4, default, 2),
('Fallen Angels', 5, default, 1);

INSERT INTO jogador(nome, classe, nivel, id_party, id) VALUES
('Momon', 'necromante', 20, 1, default),
('Sold', 'mago', 12, 1, default),
('Alucard', 'guerreiro', 14, 1, default),
('Zero', 'assassino', 13, 1, default),
('Edward', 'mago', 12, 1, default),

('Korra', 'guerreiro', 10, 2, default),
('Spike', 'assassino', 9, 2, default),
('Sung', 'assassino', 18, 2, default),
('Subaru', 'clerico', 13, 2, default),
('Aang', 'mago', 10, 2, default),

('Guts', 'Guerreiro', 17, 3, default),
('Kratos', 'guerreiro', 14, 3, default),
('Thorfin', 'guerreiro', 9, 3, default),
('Armstrong', 'cavaleiro', 12, 3, default),
('Zukko', 'mago', 10, 3, default),

('Jojo', 'cavaleiro', 10, 4, default),
('Dante', 'clerico', 17, 4, default),
('Gojo', 'mago', 18, 4, default),
('Killua', 'assassino', 14, 4, default),
('Musashi', 'guerreiro', 10, 4, default);

INSERT INTO missao(recompensa, nivel, id_guilda) VALUES
(1200, 10, 1),
(1300, 15, 1),
(820, 13, 1),
(500, 8, 1),
(1800, 17, 1),
(1100, 11, 2),
(1300, 14, 2),
(1340, 16, 2),
(980, 9, 2),
(710, 12, 2);

INSERT INTO missao_coletada(id_missao, id_party) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3),
(6, 3),
(7, 3),
(8, 4);


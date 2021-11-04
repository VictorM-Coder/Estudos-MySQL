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

select * from party;
describe party;

INSERT INTO jogador(nome, classe, nivel, id_party) VALUES
('Momon', 'necromante', 20, 1),
('Sold', 'mago', 12, 1),

('Korra', 'guerreiro', 10, 2),
('Spike', 'assassino', 9, 2),
('Sung', 'assassino', 18, 2),
('Subaru', 'clerico', 13, 2),
('Aang', 'mago', 10, 2),

('Guts', 'Guerreiro', 17, 3),
('Kratos', 'guerreiro', 14, 3),
('Thorfin', 'guerreiro', 9, 3),
('Armstrong', 'cavaleiro', 12, 3),
('Zukko', 'mago', 10, 3),

('Jojo', 'cavaleiro', 10, 4),
('Dante', 'clerico', 17, 4),




;
/*CLASSES
('mago','cavaleiro','guerreiro','clerico','assassino','necromante')*/
describe jogador;

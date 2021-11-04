alter table jogador
add column id_party int not null;

alter table jogador
add foreign key(id_party) references party(id);

alter table party
add column id_guilda int not null,
add foreign key(id_guilda) references guilda(id);

alter table missao
add column id_guilda int not null,
add foreign key(id_guilda) references guilda(id);

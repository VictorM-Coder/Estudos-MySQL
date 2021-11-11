use rpg;

select * from guilda;
select * from party;
select * from jogador;
select * from missao;
select * from missao_coletada; 

/*SELECT PARA JOGADOR*/
select distinct classe as 'Classes' from jogador;

select * from jogador
order by id_party;

select count(distinct id_party) as 'Total de partys diferentes'from jogador;

select nome, nivel from jogador
order by nivel;

select nome, nivel from jogador
where nivel = (select max(nivel) from jogador);

select nivel, count(*) as 'Total jogadores' from jogador
group by nivel;

select avg(nivel) as 'Nível médio' from jogador;

/*SELECT PARA PARTY*/
select * from party
order by id;

select nome from party;

select nome, qnt_missoes_concluidas as 'Missões concluidas' from party
order by qnt_missoes_concluidas desc;

select nome as 'Party com mais missões finalizadas' from party
where qnt_missoes_concluidas = (select max(qnt_missoes_concluidas) from party);

/*SELECT PARA MISSÕES*/
select * from missao
order by id;

select avg(recompensa) as 'Média das recompensas' from missao;

select avg(nivel) as 'Média dos Níveis' from missao;
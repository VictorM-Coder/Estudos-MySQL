
use rpg;
/*MOSTRAR PARTY E JOGADORES*/
select jogador.nome as 'nome jogador', party.nome as 'nome party' from jogador join party
where jogador.id_party = party.id;

/*MOSTRAR MISSÕES E A PARTYS QUE AS COLETARAM*/
select missao.id as 'Número da missão', party.nome as 'Party encarregada', missao.recompensa as 'Recompensa'
from party join missao join missao_coletada
where (missao_coletada.id_missao = missao.id) and (missao_coletada.id_party = party.id);

// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
enum ST{ATIVO,AGUA,TERRA,MORTO,PAUSA}
#macro P_SPEED 2
#macro P_SPEED_MAX 16
#macro GRAV 1
#macro ACC 0.5
#macro NOITEM {nome: "", sprite: spr_vazio , custo: 0,tipo: ITYPE.NOTITEM, usar: function(){}}
enum ITYPE{NOTITEM,CONSUMIVEL,ARMA,EQUIPTOP,EQUIPBACK}
enum MOV{CIMA,BAIXO,ESQUERDA,DIREITA}
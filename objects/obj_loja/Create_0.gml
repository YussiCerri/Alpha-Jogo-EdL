state = ST.PAUSA
p_meet = false
//Cria uma pilha com os items
items = [
new CriarItem("Aquario"     , 15,spr_aquario),
new CriarItem("Bomba"       , 10,spr_bomba),
new CriarItem("Desentupidor",  5,spr_desentupidor),
new CriarItem("Pocao de Cura", 5,spr_pocao),
new CriarItem("Jetpack"     , 40,spr_jetpack),
]

t_items = array_length(items)
items_atuais = [items[0],items[0],items[0]]

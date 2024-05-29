state = ST.PAUSA
p_meet = false
//Cria uma pilha com os items
items = [
new CriarItem("Aquario",10,spr_aquario),
new CriarItem("Bomba"  , 5,  spr_bomba)
]

t_items = array_length(items)
items_atuais = [items[0],items[0],items[0]]

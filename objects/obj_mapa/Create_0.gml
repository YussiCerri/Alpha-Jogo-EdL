/// @description Insert description here
// You can write your code in this editor
global.mapa = ds_grid_create(5,5)
xx=0 //COORDENADA X ATUAL DO MAPA GLOBAL
yy=0 //COORDENADA Y ATUAL DO MAPA GLOBAL
global.salas=[]
global.rooms_nomes=[room_get_name(Room1),room_get_name(Room2),room_get_name(Room3),room_get_name(Room4),room_get_name(Room5)]
array_sort(global.rooms_nomes,true)
for(i=0;i<5;i++)
{
	global.salas[i]=[]
	global.salas[i][0]=undefined
	global.salas[i][1]=undefined
}
ds_grid_set(global.mapa,0,0,Room1)
ds_grid_set(global.mapa,1,0,Room2)
ds_grid_set(global.mapa,2,0,Room3)
ds_grid_set(global.mapa,3,0,Room4)
ds_grid_set(global.mapa,4,0,Room5)
/// @description Insert description here
// You can write your code in this editor
global.mapa = ds_grid_create(5,5)
global.xx=2 //COORDENADA X ATUAL DO MAPA GLOBAL
global.yy=2 //COORDENADA Y ATUAL DO MAPA GLOBAL
global.salas=[]
//global.rooms_nomes=[room_get_name(Room02),room_get_name(Room12),room_get_name(Room22),room_get_name(Room32),room_get_name(Room42)]
//array_sort(global.rooms_nomes,true)
for(i=0;i<25;i++)
{
	global.salas[i]=[]
	global.salas[i][0]=undefined
	global.salas[i][1]=undefined
}
ds_grid_set(global.mapa,0,0,Room00)
ds_grid_set(global.mapa,0,1,Room01)
ds_grid_set(global.mapa,0,2,Room02)
ds_grid_set(global.mapa,0,3,Room03)
ds_grid_set(global.mapa,0,4,Room04)
ds_grid_set(global.mapa,1,0,Room10)
ds_grid_set(global.mapa,1,1,Room11)
ds_grid_set(global.mapa,1,2,Room12)
ds_grid_set(global.mapa,1,3,Room13)
ds_grid_set(global.mapa,1,4,Room14)
ds_grid_set(global.mapa,2,0,Room20)
ds_grid_set(global.mapa,2,1,Room21)
ds_grid_set(global.mapa,2,2,Room22)
ds_grid_set(global.mapa,2,3,Room23)
ds_grid_set(global.mapa,2,4,Room24)
ds_grid_set(global.mapa,3,0,Room30)
ds_grid_set(global.mapa,3,1,Room31)
ds_grid_set(global.mapa,3,2,Room32)
ds_grid_set(global.mapa,3,3,Room33)
ds_grid_set(global.mapa,3,4,Room34)
ds_grid_set(global.mapa,4,0,Room40)
ds_grid_set(global.mapa,4,1,Room41)
ds_grid_set(global.mapa,4,2,Room42)
ds_grid_set(global.mapa,4,3,Room43)
ds_grid_set(global.mapa,4,4,Room44)
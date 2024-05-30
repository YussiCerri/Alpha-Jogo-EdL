/// @description Insert description here
// You can write your code in this editor
x=0; y=0; //COORDENADAS DO OBJETO MAPA AO INICIAR UMA SALA
for(var _i=0;_i<ds_grid_width(global.mapa);_i++)
{
	if(ds_grid_get(global.mapa,_i,0)==room) 
	{
		xx=_i;
		yy=0;
		break;
	}
	for(var _j=1;_j<ds_grid_height(global.mapa);_j++)
		if(ds_grid_get(global.mapa,_i,_j)==room) 
		{
			xx=_i;
			yy=_j;
			break;
		}
}
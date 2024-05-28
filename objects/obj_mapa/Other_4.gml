/// @description Insert description here
// You can write your code in this editor
x=0; y=0; //COORDENADAS DO OBJETO MAPA AO INICIAR UMA SALA
for(var i=0;i<ds_grid_width(global.mapa);i++)
{
	if(ds_grid_get(global.mapa,i,0)==room) 
	{
		xx=i;
		yy=0;
		break;
	}
	for(var j=1;j<ds_grid_height(global.mapa);j++)
		if(ds_grid_get(global.mapa,i,j)==room) 
		{
			xx=i;
			yy=j;
			break;
		}
}
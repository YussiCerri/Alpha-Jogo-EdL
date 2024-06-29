// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function num_operacoes(_letter,_oper){
	static num_x = 2
	static num_y = 2
	switch(_oper){
		case "0": num_x = 2; num_y = 2; break;
		case "-": 
			if(_letter=="x") {num_x = (num_x > 0) ? (num_x-1) : 4}
			else if(_letter=="y") {num_y = (num_y + 1) mod 5}
			break;
		case "+": 
			if(_letter=="x") {num_x = (num_x + 1) mod 5}
			else if(_letter=="y") {num_y = (num_y > 0) ? (num_y-1) : 4}
			break;
		case "g": 
			if(_letter!="s") {return [num_x,num_y]}
			else {return num_y*5+num_x}
	}
}
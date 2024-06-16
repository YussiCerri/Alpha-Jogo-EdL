// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function num_operacoes(_oper){
	static num = 2
	switch(_oper){
		case "0": num = 2; break;
		case "-": num = (num > 0) ? (num-1) mod 5 : 4; break;
		case "+": num = (num + 1) mod 5; break;
		case "g": return num
	
	
	}
	/*if _oper=="0" {num=2}
	else if _oper=="-" {num = num>0 ? (num-1) mod 5 : 4}
	else if _oper=="+" {num = (num+1) mod 5}
	else if _oper=="g" {return num}*/
}
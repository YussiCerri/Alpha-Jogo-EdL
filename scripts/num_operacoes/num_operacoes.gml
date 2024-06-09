// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function num_operacoes(oper){
	if oper=="0" {static num=0}
	if oper=="-" {num = num>0 ? (num-1) mod 3 : 2}
	if oper=="+" {num = (num+1) mod 3}
	if oper=="g" {return num}
}
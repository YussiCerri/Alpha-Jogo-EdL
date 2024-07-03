/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if self.state == ST.ATIVO{
	if self.intervalo{
		devolver_controle(true)
		exit
	}
	else{
		executar_dialogo()
	}
}

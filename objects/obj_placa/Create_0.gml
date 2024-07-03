/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

self.nome = "Placa";
self.texto = "";
self.state = ST.PAUSA;
self.dialogo_atual = 0;
self.intervalo = false;

// Inicialização padrão para `placa_tipo`
// Tem que atribuir valores específicos para `placa_tipo` no editor de salas para cada instância
if (!variable_instance_exists(self, "placa_tipo")) {
    self.placa_tipo = 0; // Valor padrão para placas sem tipo específico
}

module EstacionamentosHelper
    def estacionamento
        @estacionamento ||= Estacionamento.first
    end
end

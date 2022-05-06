module CaixasHelper
    def caixa
        @caixa ||= Caixa.first
    end

    def calcular_preço(entrada, saida, taxa, p_tempo)
            
    end
end

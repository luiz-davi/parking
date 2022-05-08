module CaixasHelper    
    def caixa
        @caixa ||= Caixa.first
    end

    def calcular_preco(entrada, saida, preco_vaga, taxa)
        tempo = tempo_total(entrada, saida)

        result = tempo*(preco_vaga/60)

        result += taxa
    end

    def tempo(entrada, saida)
        tempo_total(entrada, saida)
    end


    private

    def tempo_total(entrada, saida)
        e_h = entrada.hour
        e_m = entrada.min
        e_s = entrada.sec

        s_h = saida.hour
        s_m = saida.min
        s_s = saida.sec

        hora_total = (s_h - e_h) * 60
        minuto_total = (s_m - e_m).abs

        tempo_total = (hora_total - minuto_total).abs
    end
end

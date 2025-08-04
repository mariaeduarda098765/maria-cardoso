Algoritmo "semnome"
// Disciplina    : [UC9- Desenvolvimento de Algoritimo]
// Professor    : douglas
// Descrição    : Lógica de compra de veículos com descontos e impostos.
// Autor(a)     : maria eduarda cardoso
// Data atual   : 23/07/2025
Var
    // Definindo o tipo de dado para um carro

        modelo: caractere
        preco: real
        ano: inteiro

    // Variáveis principais

    qtdCarrosComprados: inteiro
    valorTotalBruto, valorComDescontos, valorFinal, maiorPreco, somaPrecos: real
    anoAtual: inteiro
    i, posMaisCaro: inteiro

inicio
    // --- Simulação dos dados ---
    // (Em um programa real, o usuário preencheria esses dados)
    qtdCarrosComprados <- 3


    anoAtual <- 2025

    // --- FIM da Simulação ---

    // 1. [Calcular Valor Total sem Desconto]
    valorTotalBruto <- 0
    para i de 1 ate qtdCarrosComprados faca

    fimpara

    // 2. [Aplicar Descontos]
    // Ação correspondente à sua linha 7
    valorComDescontos <- valorTotalBruto
    para i de 1 ate qtdCarrosComprados faca



    fimpara

    // 3. [Aplicar desconto adicional de 5% se tiver mais de 2 carros]
    se qtdCarrosComprados > 2 entao
        valorComDescontos <- valorComDescontos - (valorComDescontos * 0.05)
    fimse

    // 4. [Aplicar Impostos]
    se valorComDescontos > 100000 entao
        valorFinal <- valorComDescontos + (valorComDescontos * 0.08) // Imposto de luxo de 8%
    senao
        valorFinal <- valorComDescontos
    fimse

    // 5. [Calcular Valor Final a Pagar] e [Gerar Relatório Final]
    escreval("====================================")
    escreval("           RELATÓRIO FINAL          ")
    escreval("====================================")
    escreval("Quantidade de carros comprados: ", qtdCarrosComprados)
    escreval("Valor Total Bruto: R$", valorTotalBruto:2:2)
    escreval("Valor com Descontos Aplicados: R$", valorComDescontos:2:2)
    escreval("Valor Final a Pagar (com impostos): R$", valorFinal:2:2)
    escreval("------------------------------------")

    // 6. [Identificar Carro Mais Caro Comprado]
    maiorPreco <- 0
    posMaisCaro <- 0
    para i de 1 ate qtdCarrosComprados faca


            posMaisCaro <- i
        fimse
    fimpara
    escreval("Carro mais caro: ", carrosComprados[posMaisCaro].modelo, " (R$", maiorPreco:2:2, ")")

    // 7. [Calcular Média de Preços dos Carros]
    somaPrecos <- 0
    para i de 1 ate qtdCarrosComprados faca
        somaPrecos <- somaPrecos + carrosComprados[i].preco
    fimpara
    escreval("Preço médio dos carros: R$", somaPrecos / qtdCarrosComprados:2:2)

    // 8. [Coletar Dados do Cliente]
    // A lógica de coletar dados do cliente viria aqui.
    escreval("------------------------------------")
    escreval("Dados do cliente registrados com sucesso.")

    escreval("====================================")

fimalgoritmo






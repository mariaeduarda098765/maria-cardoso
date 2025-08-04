Algoritmo "semnome"
// Disciplina    : [UC9- Desenvolvimento de Algoritimo]
// Professor    : douglas
// Descrição    : Lógica de compra de veículos com descontos e impostos.
// Autor(a)     : maria eduarda cardoso
// Data atual   : 23/07/2025
Var
    // Assumindo que você já tenha estas variáveis e tipos definidos:
    tipo Carro
        preco: real
        ano: inteiro
        estoque: inteiro
    fimtipo

    carrosComprados: vetor de Carro // Vetor com os carros que o cliente escolheu
    qtdCarrosComprados: inteiro
    valorTotalBruto, valorComDescontos, valorFinal: real
    anoAtual: inteiro
    i: inteiro

inicio
    // Simulação da escolha e verificação de estoque
    // ... (o código para a escolha de carros viria aqui) ...

    // Supondo que a quantidade de carros comprados foi definida
    qtdCarrosComprados <- 3 // Exemplo para o código funcionar

    // Calcular valor total bruto dos carros
    valorTotalBruto <- 0
    para i de 1 ate qtdCarrosComprados faca
        valorTotalBruto <- valorTotalBruto + carrosComprados[i].preco
    fimpara

    // --- SUA LINHA 14 CORRIGIDA: Implementação do desconto de 10% ---
    valorComDescontos <- valorTotalBruto
    anoAtual <- 2025 // Exemplo
    para i de 1 ate qtdCarrosComprados faca
        se carrosComprados[i].ano < anoAtual entao
            valorComDescontos <- valorComDescontos - (carrosComprados[i].preco * 0.10)
        fimse
    fimpara

    // --- Desconto adicional para mais de 2 carros ---
    se qtdCarrosComprados > 2 entao
        valorComDescontos <- valorComDescontos - (valorComDescontos * 0.05)
    fimse

    // --- Imposto de luxo ---
    se valorComDescontos > 100000 entao
        valorFinal <- valorComDescontos + (valorComDesDescontos * 0.08)
    senao
        valorFinal <- valorComDescontos
    fimse

    // --- Mostrar valor final ao cliente ---
    escreval("O valor final da compra é: R$", valorFinal:2:2)

    // ... (registrar compra e atualizar estoque viriam aqui) ...

fimalgoritmo
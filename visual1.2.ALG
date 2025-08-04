Algoritmo semnome
// Disciplina    : [UC9- Desenvolvimento de Algoritimo]
// Professor    : douglas
// Descrição    : Exemplo de cadastro de carro com validação de dados.
// Autor(a)     : maria eduarda cardoso
// Data atual   : 23/07/2025
Var
// Limites do sistema
constante N <- 10

// Definindo tipos
tipo Carro
    modelo: caractere
    marca: caractere
    ano: inteiro
    preco: real
    estoque: inteiro
fimtipo

// Variáveis principais
var
    carros: vetor[1..N] de Carro
    qtdCarros: inteiro
    i, menu: inteiro

inicio
    qtdCarros <- 0

    // O código que você enviou foi colocado dentro de um loop para permitir o cadastro
    // de vários carros.
    repita
        escreval("--- MENU DE CADASTRO ---")
        escreval("1 - Cadastrar novo carro")
        escreval("2 - Sair")
        escreva("Escolha uma opção: ")
        leia(menu)

        se menu = 1 entao
            se qtdCarros < N entao
                qtdCarros <- qtdCarros + 1

                escreval("Informe o modelo do carro: ")
                leia(carros[qtdCarros].modelo)

                escreval("Informe a marca do carro: ")
                leia(carros[qtdCarros].marca)

                // Validando o ano (entre 1990 e 2025)
                repita
                    escreval("Ano do carro (de 1990 até 2025): ")
                    leia(carros[qtdCarros].ano)
                    se carros[qtdCarros].ano < 1990 ou carros[qtdCarros].ano > 2025 entao
                        escreval("Ano fora do permitido. Tente de novo.")
                    fimse
                ate carros[qtdCarros].ano >= 1990 e carros[qtdCarros].ano <= 2025

                // Validando o preço (mínimo R$10.000)
                repita
                    escreval("Preço do carro (mínimo de R$10.000): ")
                    leia(carros[qtdCarros].preco)
                    se carros[qtdCarros].preco < 10000 entao
                        escreval("Preço muito baixo. Digite um valor maior.")
                    fimse
                ate carros[qtdCarros].preco >= 10000

                escreval("Quantidade em estoque: ")
                leia(carros[qtdCarros].estoque)

                escreval("Carro adicionado com sucesso.")
            senao
                escreval("Você já cadastrou o número máximo de carros.")
            fimse
        fimese

        escreval() // Espaço para separar as execuções
    ate menu = 2

fimalgoritmo
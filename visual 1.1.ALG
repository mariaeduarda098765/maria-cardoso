Algoritmo "semnome"
// Disciplina   : [UC9- Desenvolvimento de Algoritimo]
// Professor   : douglas
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : maria eduarda cardoso
// Data atual  : 23/07/2025

Var
// Limites do sistema
LIMITE_CARROS <- 10
LIMITE_CLIENTES <- 5

// Definindo tipos
tipo Carro
    modelo: caractere
    marca: caractere
    ano: inteiro
    preco: real
fimtipo

tipo Cliente
    nome: caractere
    cpf: caractere
fimtipo

tipo Compra
    nomeCliente: caractere
    modeloCarro: caractere
    valor: real
fimtipo

// Variáveis principais
var
    carros: vetor[1..LIMITE_CARROS] de Carro
    clientes: vetor[1..LIMITE_CLIENTES] de Cliente
    compras: vetor[1..LIMITE_CLIENTES] de Compra

    qtdCarros, qtdClientes, qtdCompras: inteiro
    menu: inteiro
    i, escolhaCliente, escolhaCarro: inteiro

inicio
    qtdCarros <- 0
    qtdClientes <- 0
    qtdCompras <- 0

    repita
        escreval("=== MENU AUTO FÁCIL ===")
        escreval("1 - Cadastrar carro")
        escreval("2 - Cadastrar cliente")
        escreval("3 - Registrar compra")
        escreval("4 - Mostrar relatório")
        escreval("0 - Sair")
        escreva("Escolha: ")
        leia(menu)

        escolha menu
            caso 1
                se qtdCarros < LIMITE_CARROS entao
                    qtdCarros <- qtdCarros + 1
                    escreval("Modelo do carro: ")
                    leia(carros[qtdCarros].modelo)

                    escreval("Marca: ")
                    leia(carros[qtdCarros].marca)

                    escreval("Ano: ")
                    leia(carros[qtdCarros].ano)

                    escreval("Preço: ")
                    leia(carros[qtdCarros].preco)

                    escreval("Carro cadastrado com sucesso!")
                senao
                    escreval("Limite de carros atingido.")
                fimse

            caso 2
                se qtdClientes < LIMITE_CLIENTES entao
                    qtdClientes <- qtdClientes + 1
                    escreval("Nome do cliente: ")
                    leia(clientes[qtdClientes].nome)

                    escreval("CPF do cliente: ")
                    leia(clientes[qtdClientes].cpf)

                    escreval("Cliente cadastrado!")
                senao
                    escreval("Limite de clientes atingido.")
                fimse

            caso 3
                se qtdCompras < LIMITE_CLIENTES entao
                    escreval("Escolha o cliente:")
                    para i de 1 ate qtdClientes faca
                        escreval(i, " - ", clientes[i].nome)
                    fimpara
                    leia(escolhaCliente)

                    escreval("Escolha o carro:")
                    para i de 1 ate qtdCarros faca
                        escreval(i, " - ", carros[i].modelo, " (R$", carros[i].preco:0:2, ")")
                    fimpara
                    leia(escolhaCarro)

                    qtdCompras <- qtdCompras + 1
                    compras[qtdCompras].nomeCliente <- clientes[escolhaCliente].nome
                    compras[qtdCompras].modeloCarro <- carros[escolhaCarro].modelo
                    compras[qtdCompras].valor <- carros[escolhaCarro].preco

                    escreval("Compra registrada!")
                senao
                    escreval("Não é possível registrar mais compras.")
                fimse

            caso 4
                escreval("==== RELATÓRIO DE COMPRAS ====")
                para i de 1 ate qtdCompras faca
                    escreval("Cliente: ", compras[i].nomeCliente)
                    escreval("Carro: ", compras[i].modeloCarro)
                    escreval("Valor pago: R$", compras[i].valor:0:2)
                    escreval("-------------------------------")
                fimpara

            caso 0
                escreval("Encerrando o sistema...")

            outrocaso
                escreval("Opção inválida. Tente novamente.")
        fimescolha

        escreval() // Espaço entre execuções
    ate menu = 0

fimalgoritmo
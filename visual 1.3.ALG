Algoritmo "semnome"
// Disciplina    : [UC9- Desenvolvimento de Algoritimo]
// Professor    : douglas
// Descrição    : Exemplo de cadastro de cliente com validação de dados.
// Autor(a)     : maria eduarda cardoso
// Data atual   : 23/07/2025
Var
// Limites do sistema
constante N_CLIENTES <- 5

// Definindo tipos
tipo Cliente
    nome: caractere
    cpf: caractere
    email: caractere
fimtipo

// Variáveis principais
var
    clientes: vetor[1..N_CLIENTES] de Cliente
    qtdClientes: inteiro
    emailTemp: caractere
    menu: inteiro

inicio
    qtdClientes <- 0

    // O código que você enviou foi colocado dentro de um loop de menu para funcionar
    repita
        escreval("--- MENU DE CADASTRO ---")
        escreval("1 - Cadastrar novo cliente")
        escreval("2 - Sair")
        escreva("Escolha uma opção: ")
        leia(menu)

        se menu = 1 entao
            se qtdClientes < N_CLIENTES entao
                qtdClientes <- qtdClientes + 1

                escreval("Nome do cliente:")
                leia(clientes[qtdClientes].nome)

                // CPF com 11 dígitos
                repita
                    escreval("Digite o CPF (somente os 11 números):")
                    leia(clientes[qtdClientes].cpf)

                    se comprimento(clientes[qtdClientes].cpf) <> 11 entao
                        escreval("?? CPF errado. Tem que ter 11 números.")
                    fimse
                ate comprimento(clientes[qtdClientes].cpf) = 11

                // E-mail com @
                repita
                    escreval("Digite o e-mail do cliente:")
                    leia(emailTemp)

                    se pos("@", emailTemp) = 0 entao
                        escreval("? Esse e-mail tá estranho... precisa ter @")
                    fimse
                ate pos("@", emailTemp) > 0

                clientes[qtdClientes].email <- emailTemp

                escreval("? Cliente cadastrado com sucesso!")
            senao
                escreval("?? Limite de clientes atingido.")
            fimse
        fimese

        escreval() // Espaço para separar as execuções
    ate menu = 2

fimalgoritmo







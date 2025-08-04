
   Algoritmo "semnome"
// Disciplina   : [UC9- Desenvolvimento de Algoritimo]
// Professor   : douglas
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : maria eduarda cardoso
// Data atual  : 23/07/2025

#include <stdio.h>
#include <string.h>
#include <ctype.h>

#define MAX_CARS 100  // Número máximo de carros

// Estrutura para armazenar os dados dos carros
typedef struct {
    char model[50];
    int year;
    float price;
} Car;

// Função para registrar um carro
void registerCar(Car cars[], int *carCount) {
    if (*carCount >= MAX_CARS) {
        printf("Limite de carros alcançado!\n");
        return;
    }

    Car newCar;

    printf("Digite o modelo do carro: ");
    scanf("%s", newCar.model);

    printf("Digite o ano do carro: ");
    scanf("%d", &newCar.year);

    printf("Digite o preço do carro: ");
    scanf("%f", &newCar.price);

    cars[*carCount] = newCar;
    (*carCount)++;
    printf("Carro registrado com sucesso!\n");
}

// Função para calcular o desconto baseado no preço do carro
void calculateDiscount(Car cars[], int carCount) {
    if (carCount == 0) {
        printf("Nenhum carro registrado ainda.\n");
        return;
    }

    printf("Calculando descontos para carros com preço superior a 50.000:\n");

    for (int i = 0; i < carCount; i++) {
        if (cars[i].price > 50000) {
            float discountPrice = cars[i].price * 0.90;  // 10% de desconto
            printf("Carro %s, Ano %d, Preço original: %.2f, Preço com desconto: %.2f\n",
                   cars[i].model, cars[i].year, cars[i].price, discountPrice);
        }
    }
}

// Função para exibir o menu de opções
void showMenu() {
    printf("\n--- Menu ---\n");
    printf("1. Registrar Carro\n");
    printf("2. Calcular Desconto\n");
    printf("3. Carro Mais Caro\n");
    printf("4. Média de Preços\n");
    printf("5. Validar CPF\n");
    printf("6. Sair\n");
}

// Função para encontrar o carro mais caro
void findMostExpensiveCar(Car cars[], int carCount) {
    if (carCount == 0) {
        printf("Nenhum carro registrado para verificar.\n");
        return;
    }

    int mostExpensiveIndex = 0;

    // Encontrar o carro mais caro
    for (int i = 1; i < carCount; i++) {
        if (cars[i].price > cars[mostExpensiveIndex].price) {
            mostExpensiveIndex = i;
        }
    }

    // Exibir o carro mais caro
    printf("O carro mais caro é: %s, Ano %d, Preço: %.2f\n",
            cars[mostExpensiveIndex].model,
            cars[mostExpensiveIndex].year,
            cars[mostExpensiveIndex].price);
}

// Função para calcular a média de preços dos carros
void calculateAveragePrice(Car cars[], int carCount) {
    if (carCount == 0) {
        printf("Nenhum carro registrado para calcular a média.\n");
        return;
    }

    float totalPrice = 0;

    // Somar todos os preços dos carros
    for (int i = 0; i < carCount; i++) {
        totalPrice += cars[i].price;
    }

    // Calcular a média
    float averagePrice = totalPrice / carCount;
    printf("A média de preços dos carros registrados é: %.2f\n", averagePrice);
}

// Função para validar o CPF
int validateCPF(char cpf[]) {
    int length = strlen(cpf);

    // Verifica se o CPF tem exatamente 11 dígitos e se são todos numéricos
    if (length != 11) {
        return 0;  // CPF inválido
    }

    for (int i = 0; i < 11; i++) {
        if (!isdigit(cpf[i])) {
            return 0;  // CPF inválido
        }
    }

    return 1;  // CPF válido
}

int main() {
    Car cars[MAX_CARS];  // Vetor para armazenar os carros
    int carCount = 0;    // Contador de carros registrados
    int option;          // Opção escolhida pelo usuário
    char cpf[12];        // CPF (11 dígitos + 1 para o terminador de string)

    // Loop principal para o menu
    while (1) {
        showMenu();  // Exibe o menu para o usuário
        printf("Escolha uma opção: ");
        scanf("%d", &option);

        if (option == 1) {
            registerCar(cars, &carCount);  // Registrar um novo carro
        } else if (option == 2) {
            calculateDiscount(cars, carCount);  // Calcular desconto dos carros
        } else if (option == 3) {
            findMostExpensiveCar(cars, carCount);  // Encontrar o carro mais caro
        } else if (option == 4) {
            calculateAveragePrice(cars, carCount);  // Calcular a média de preços
        } else if (option == 5) {
            printf("Digite o CPF para validação (somente números): ");
            scanf("%s", cpf);

            if (validateCPF(cpf)) {
                printf("CPF válido!\n");
            } else {
                printf("CPF inválido!\n");
            }
        } else if (option == 6) {
            printf("Saindo do programa...\n");
            break;  // Sair do loop
        } else {
            printf("Opção inválida. Tente novamente.\n");
        }
    }

    return 0;
}



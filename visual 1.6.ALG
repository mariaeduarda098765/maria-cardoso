Algoritmo "semnome"
// Disciplina   : [UC9- Desenvolvimento de Algoritimo]
// Professor   : douglas
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : maria eduarda cardoso
// Data atual  : 23/07/2025
#include <stdio.h>
#include <string.h>

#define MAX_CARS 100  // Definindo o número máximo de carros que podemos registrar

// Estrutura para armazenar os dados dos carros
typedef struct {
    char model[50];
    int year;
    float price;
} Car;

// Função para registrar um carro
// Recebe um vetor de carros e um ponteiro para a quantidade de carros registrados
void registerCar(Car cars[], int *carCount) {
    // Verifica se já atingimos o limite de carros
    if (*carCount >= MAX_CARS) {
        printf("Limite de carros alcançado!\n");
        return;
    }

    // Declara um novo carro
    Car newCar;

    // Solicita e lê os dados do carro
    printf("Digite o modelo do carro: ");
    scanf("%s", newCar.model);

    printf("Digite o ano do carro: ");
    scanf("%d", &newCar.year);

    printf("Digite o preço do carro: ");
    scanf("%f", &newCar.price);

    // Armazena o novo carro no vetor de carros
    cars[*carCount] = newCar;
    (*carCount)++;  // Atualiza a quantidade de carros registrados
    printf("Carro registrado com sucesso!\n");
}

// Função para calcular o desconto com base no preço do carro
// Recebe o vetor de carros e a quantidade de carros registrados
void calculateDiscount(Car cars[], int carCount) {
    // Verifica se há carros registrados
    if (carCount == 0) {
        printf("Nenhum carro registrado ainda.\n");
        return;
    }

    // Calcula o desconto para carros com preço superior a 50.000
    printf("Calculando descontos para carros com preço superior a 50.000:\n");

    for (int i = 0; i < carCount; i++) {
        // Se o preço do carro for maior que 50.000, aplica 10% de desconto
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
    printf("3. Sair\n");
}

int main() {
    Car cars[MAX_CARS];  // Vetor para armazenar os carros registrados
    int carCount = 0;    // Contador de carros registrados
    int option;          // Opção escolhida pelo usuário

    // Loop principal para o menu
    while (1) {
        showMenu();  // Exibe o menu para o usuário
        printf("Escolha uma opção: ");
        scanf("%d", &option);

        // Condicional para verificar qual ação o usuário deseja
        if (option == 1) {
            registerCar(cars, &carCount);  // Registrar um novo carro
        } else if (option == 2) {
            calculateDiscount(cars, carCount);  // Calcular o desconto dos carros
        } else if (option == 3) {
            printf("Saindo do programa...\n");
            break;  // Sair do loop
        } else {
            printf("Opção inválida. Tente novamente.\n");
        }
    }

    return 0;
}


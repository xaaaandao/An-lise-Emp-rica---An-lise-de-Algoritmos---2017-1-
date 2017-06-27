#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <limits.h>
#include <math.h>

int maximoValor(int x, int y){
	if(x > y)
		return x;
	return y;
}

/**
* A função geraVetor em que recebemos um arranjo de inteiros,
* um inteiro n, que é o tamanho do arranjo, e preenchemos esse arranjo com posições
* geradas aleatoriamente.
@param vetor[], é um arranjo de inteiros que será preenchido.
@param n, é o tamanho do arranjo de inteiros.
@return void, retorna nada.
*/
void geraVetor(int vetor[], int n){
	int i = 0;
	srand (0);
	while(i < n){
		vetor[i] = (rand()%10);
		printf("%d ", vetor[i]);
		i++;
	}
	printf("\n");
}

/**
* A função algoritmoUm em que recebemos um arranjo de inteiros,
* um inteiro n, que é o tamanho do arranjo, em que encontramos o subarranjo máximo
* e no final imprimimos o melhor valor.
@param vetor[], é um arranjo de inteiros que será encontrado o subarranjo máximo.
@param n, é o tamanho do arranjo de inteiros.
@return void, retorna nada.
*/
void algoritmoUm(int vetor[], int n){
	int i = 0, j = 0, k = 0, melhor = 0, somatorio = 0;
	for(i = 0; i < n; i++){
		for(j = i; j < n; j++){
			somatorio = 0;
			for(k = i; k <= j; k++){
				somatorio = somatorio + vetor[k];
			}
			if(somatorio > melhor){
				melhor = somatorio;
			}
		}
	}
    printf("melhor: %d\n", melhor);	
}

int maiorMeioSubarranjo(int vetor[], int inicio, int meio, int fim){
	int esquerda_somatorio = INT_MIN, direita_somatorio = INT_MIN;
	int somatorio = 0;
	for(int i = meio; i >= inicio; i--){
		somatorio = somatorio + vetor[i];
		if(somatorio > esquerda_somatorio){
			esquerda_somatorio = somatorio;
		}
	}
	somatorio = 0;
	for(int i = meio + 1; i <= fim; i++){
		somatorio = somatorio + vetor[i];
		if(somatorio > direita_somatorio){
			direita_somatorio = somatorio;
		}
	}
	return esquerda_somatorio + direita_somatorio;
}

int algoritmoTres(int vetor[], int inicio, int fim){
	if(inicio == fim){
		return vetor[inicio];
	} else {
		int meio = (inicio + fim) / 2;
		int esquerda_somatorio = algoritmoTres(vetor, inicio, meio);
		int direita_somatorio = algoritmoTres(vetor, meio + 1, fim);
		int meio_somatorio = maiorMeioSubarranjo(vetor, inicio, meio, fim);
		if((esquerda_somatorio >= direita_somatorio) && (esquerda_somatorio >= meio_somatorio)){
			return esquerda_somatorio;
		} else if((direita_somatorio >= esquerda_somatorio) && (direita_somatorio >= meio_somatorio)){
			return direita_somatorio;
		} else {
			return meio_somatorio;
		}
	}
}

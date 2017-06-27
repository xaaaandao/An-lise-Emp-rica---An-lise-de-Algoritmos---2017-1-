#include <stdio.h>
#include <stdlib.h>
#include <time.h>

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
		vetor[i] = (rand()%100);
		i++;
	}
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

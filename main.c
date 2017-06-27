#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "algoritmos.h"

int main(){
	int n = 10, vetor[n];
	clock_t start, end;
    double cpu_time_used;
    
    system("clear");
    /* Algoritmo 1 */
    start = clock();
    algoritmoUm(vetor, n);
    end = clock();
    cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC;
	printf("\033[1m\033[32mtempo de execução algoritmo um:\033[0m %f segundos\n", cpu_time_used * 1000);

	/* Algoritmo 2 */
    start = clock();
    //maximoSubarranjo(vetor, n);
    end = clock();
    cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC;
	printf("\033[1m\033[32mtempo de execução algoritmo dois:\033[0m %f segundos\n", cpu_time_used * 1000);

	/* Algoritmo 3 */
    start = clock();
    //maximoSubarranjo(vetor, n);
    end = clock();
    cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC;
	printf("\033[1m\033[32mtempo de execução algoritmo três:\033[0m %f segundos\n", cpu_time_used * 1000);


	/* Algoritmo 4 */
    start = clock();
    //maximoSubarranjo(vetor, n);
    end = clock();
    cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC;
	printf("\033[1m\033[32mtempo de execução algoritmo quatro:\033[0m %f segundos\n", cpu_time_used * 1000);

	return 0;
}

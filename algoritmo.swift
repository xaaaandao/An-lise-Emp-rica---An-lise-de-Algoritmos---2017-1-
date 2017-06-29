/* Para utilizar a função de rand */
import Foundation

/**
* Esta função geraVetor recebemos um vetor e o tamanho do vetor
* preenchemos um vetor com os valores começando pela
* metade do número do tamanho do vetor negativo, e incremtamos colocando 
* cada valor em uma posição até preencher inteiro;
@param valores, vetor do tipo de inteiro, que preenchemos com valores;
@param n, tipo de inteiro, que é o tamanho do vetor;
@return nada, é void, ou seja, retorna nada.
*/
func geraVetor(_ valores: inout [Int], n : Int){
	var i = 0, valor = ((n / 2) * (-1))
	while i < n {
		valores.insert(valor, at:i)
		valor+=1
		i+=1
	}
}

/**
* Esta função preencheVetor recebemos um vetor que será aplicado 
* no algoritmo, o vetor que preenchemos na função geraVetor e o tamanho do vetor.
* Preenchemos o vetor que será aplicado os quatros algoritmo e gerando uma posição 
* aleatória do vetor da função geraVetor e pegando o valor dessa posição
* e colocando no vetor que será aplicado os algoritmos, após isso tiramos o valor da
* posição gerada aleatória.
@param valores, vetor do tipo de inteiro, que preenchemos com a função geraVetor();
@param vetor, vetor do tipo de inteiro, que será aplicado os quatro algoritmos;
@param n, tipo de inteiro, que é o tamanho dos vetores;
@return nada, é void, ou seja, retorna nada.
*/
func preencheVetor(_ valores: inout [Int], _ vetor: inout [Int], n : Int){
	var i = 0
	var conversor : Int32, posicao : Int
	while i < n {
		conversor = Int32(valores.count)
		posicao = Int(rand()%conversor)
		vetor.insert(valores[posicao], at:i)
		valores.remove(at: posicao)
		i+=1
	}
}

/* Algoritmo 1 */
/**
* Esta função enumeration recebemos um vetor que será aplicado 
* no algoritmo o máximo valor do subarranjo e o tamanho do vetor.
* Esse algoritmo é o menos eficiente para se procurar o máximo valor do subarranjo;
@param vetor, vetor do tipo de inteiro, que será aplicado a função enumeration();
@param n, tipo de inteiro, que é o tamanho dos vetores;
@return melhor, é um inteiro que retorna o melhor valor.
*/
func enumeration(_ vetor: inout [Int], n : Int) -> Int{
	var i = 0, j = 0, k = 0
	var melhor = 0, somatorio = 0
	while i < n{
		j = i
		while j < n{
			somatorio = 0
			k = i
			while k <= j{
				somatorio += vetor[k]
				k+=1
			}

			if somatorio > melhor{
				melhor = somatorio
			}
			j+=1
		}
		i+=1
	}
	return melhor
}

/* Algoritmo 2*/
/**
* Esta função betterEnumeration recebemos um vetor que será aplicado 
* no algoritmo o máximo valor do subarranjo e o tamanho do vetor.
* Esse algoritmo é melhor que a função enumeration para se procurar o máximo valor do subarranjo;
@param vetor, vetor do tipo de inteiro, que será aplicado a função enumeration();
@param n, tipo de inteiro, que é o tamanho dos vetores;
@return melhor, é um inteiro que retorna o melhor valor.
*/
func betterEnumeration(_ vetor: inout [Int], n : Int) -> Int{
	var i = 0, j = 0
	var melhor = 0, somatorio = 0
	while i < n{
		somatorio = 0
		j = i
		while j < n{
			somatorio += vetor[j];
			if(somatorio > melhor){
				melhor = somatorio;
			}
			j+=1
		}
		i+=1
	}
	return melhor
}

/* Algoritmo 3 */
/**
* Esta função findMaxCrossingSubarray recebemos um vetor de inteiros
* o começo, o meio e o fim desse vetor, em que pegamos o somatorio da 
* do começo até o meio do vetor, do meio até o fim do vetor.
* Por fim, retornamos o valor do somatório do começo até o meio do vetor
* mais o meio até o fim do vetor;
@param vetor, vetor do tipo de inteiro, que será aplicado a função enumeration();
@param inicio, tipo de inteiro, que é a posição inicial do vetor;
@param meio, tipo de inteiro, que é a metade do tamanho do vetor;
@param fim, tipo de inteiro, que é a posição final do vetor;
@return esquerda_somatorio+direita_somatorio, é um inteiro que retorna a soma de esquerda_somatorio + direita_somatorio
*/
func findMaxCrossingSubarray(_ vetor: inout[Int], inicio : Int, meio : Int, fim : Int) -> Int{
	var esquerda_somatorio : Int = -2147483648, direita_somatorio : Int = -2147483648
	var somatorio : Int = 0, i : Int
	i = meio
	while i >= inicio{
		somatorio += vetor[i]
		if(somatorio > esquerda_somatorio){
			esquerda_somatorio = somatorio
		}
		i-=1
	}
	somatorio = 0
	i = meio + 1
	while i <= fim{
		somatorio += vetor[i]
		if somatorio > direita_somatorio{
			direita_somatorio = somatorio
		}
		i+=1
	}
	return esquerda_somatorio + direita_somatorio
}

/**
* Esta função divideAndConquer recebemos um vetor que será aplicado 
* no algoritmo o máximo valor do subarranjo, a posição inicial 
* e a posição final do vetor. Esse algoritmo é melhor que a função 
* divideAndConquer para se procurar o máximo valor do subarranjo utilizando
* o conceito de divisão e conquista;
@param vetor, vetor do tipo de inteiro, que será aplicado a função enumeration();
@param inicio, tipo de inteiro, que é a posição inicial do vetor;
@param fim, tipo de inteiro, que é a posição final do vetor;
@return esquerda_somatorio|meio_somatorio|direita_somatorio, é um inteiro que retorna um desses valores valor.
*/
func divideAndConquer(_ vetor: inout[Int], inicio : Int, fim : Int) -> Int{
	if inicio == fim {
		return vetor[inicio]
	} else {
		//let meio = (inicio + fim) / 2;
		let meio = inicio + (fim - inicio) / 2;
		let esquerda_somatorio = divideAndConquer(&vetor, inicio : inicio, fim : meio);
		let direita_somatorio = divideAndConquer(&vetor, inicio : meio + 1, fim : fim);
		let meio_somatorio = findMaxCrossingSubarray(&vetor, inicio : inicio, meio : meio, fim : fim);
		if esquerda_somatorio >= direita_somatorio && esquerda_somatorio >= meio_somatorio {
			return esquerda_somatorio
		} else if direita_somatorio >= esquerda_somatorio && direita_somatorio >= meio_somatorio {
			return direita_somatorio
		} else {
			return meio_somatorio
		}
	}
}

/* Algoritmo 4 */
/**
* Esta função dynamicProgramming recebemos um vetor que será aplicado 
* no algoritmo o máximo valor do subarranjo, a posição inicial 
* e a posição final do vetor. Esse algoritmo é melhor que a função 
* dynamicProgramming para se procurar o máximo valor do subarranjo utilizando
* o conceito de programação dinâmica;
@param vetor, vetor do tipo de inteiro, que será aplicado a função enumeration();
@param fim, tipo de inteiro, que é a posição final do vetor;
@param inicio, tipo de inteiro, que é a posição inicial do vetor;
@return somatorio, é um inteiro que retorna o máximo do subarranjo.
*/
func dynamicProgramming(_ vetor: inout[Int], fim : Int, inicio : Int) -> Int{
	var auxiliar : Int = inicio
	var somatorio : Int = vetor[auxiliar] + vetor[auxiliar + 1]
	if auxiliar == fim - 2 {
		auxiliar = 0
		while auxiliar < fim{
			if(vetor[auxiliar] > somatorio){
				somatorio = vetor[auxiliar]
			}
			auxiliar+=1
		}
		return somatorio
	}

	if somatorio > vetor[auxiliar + 1]{
		vetor[auxiliar + 1] = somatorio
	}
	return dynamicProgramming(&vetor, fim : fim, inicio : auxiliar + 1)
}

/* Ver se funfa no outro pc e o tempo */
/* Adicionar documentação das funções */
/* https://github.com/samuelsnyder/dyn-prog-max-subarray */
/* https://stackoverflow.com/questions/2129794/how-to-log-a-methods-execution-time-exactly-in-milliseconds */
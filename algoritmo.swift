import Foundation

func geraVetor(_ valores: inout [Int], n : Int){
	var i = 0, valor = ((n / 2) * (-1))
	while i < n {
		valores.insert(valor, at:i)
		valor+=1
		i+=1
	}
}

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

func divideAndConquer(_ vetor: inout[Int], inicio : Int, fim : Int) -> Int{
	if inicio == fim {
		return vetor[inicio]
	} else {
		let meio = (inicio + fim) / 2;
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

/* https://github.com/samuelsnyder/dyn-prog-max-subarray */
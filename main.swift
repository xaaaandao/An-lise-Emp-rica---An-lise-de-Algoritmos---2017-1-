/* Para utilizar a função que calcula o tempo é necessário Foundation */
import Foundation

/**
* Esta função main() basicamente chama as demais quatro funções que tentam
* resolver o problema do subarranjo máximo. Geramos o vetor de maneira aleatório
* e aplicamos esse vetor em cada um deles e calcuamos o tempo de cada uma dessas funções;
@param nenhum, não tem nenhum parâmetro;
@return nada, é void, ou seja, retorna nada.
*/
func main(){
	/* Exemplo 1 R: 187 */
	//var vetor = [31,-41,59,26,-53,58,97,-93,-23,84]
	/* Exemplo 2 R: 239 */
	//var vetor = [22, -27, 38, -34, 49, 40, 13, -44, -13, 28, 46, 7, -26, 42, 29, 0, -6, 35, 23, -37, 10, 12, -2, 18, -12, -49, -10, 37, -5, 17, 6, -11, -22, -17, -50, -40, 44, 14, -41, 19, -15, 45, -23, 48, -1, -39, -46, 15, 3, -32, -29, -48, -19, 27, -33, -8, 11, 21, -43, 24, 5, 34, -36, -9, 16, -31, -7, -24, -47, -14, -16, -18, 39, -30, 33, -45, -38, 41, -3, 4, -25, 20, -35, 32, 26, 47, 2, -4, 8, 9, 31, -28, 36, 1, -21, 30, 43, 25, -20, -42]
	/* Exemplo 3 R: 322 -> Aqui */
	//var vetor = [-18, -47, -40, -43, -2, 48, 31, -24, 36, -49, 4, -29, -4, -39, 12, 24, 8, 40, 45, -17, 6, -11, -5, -30, -8, 25, -44, -9, -20, -50, -12, -32, 41, 10, -42, -15, 11, -38, 37, 21, 33, -22, 16, -41, -46, -33, -26, 7, -3, -28, 29, 20, 27, 3, 15, 49, 23, -1, 14, 32, -31, -13, -48, -14, 13, 39, 46, -35, -36, 0, 17, -27, -21, 28, -7, 44, -10, 34, -19, 47, 42, -34, 5, 26, -45, 35, 9, -25, 38, -37, -23, 22, -6, -16, 18, 43, 30, 2, 19, 1]
	/* Exemplo 4 R: 271 */
	//var vetor = [-43, 15, -6, 14, 18, -22, -26, -5, 26, 17, -21, -12, -35, 41, 45, -3, 3, -25, 1, 30, -11, -30, -27, -1, 48, 44, -40, 32, -23, 29, 12, -20, -48, 42, -16, -36, -49, 43, -28, 21, 33, -44, -9, 38, 31, 35, -34, -24, -41, 7, -14, -46, -29, 23, -47, 9, -45, -37, -38, -10, 20, 5, 2, 39, 34, 46, -7, 13, -15, 11, -32, 37, -50, -8, 36, -17, -2, 4, 8, -13, 19, 16, 27, -31, -18, -39, 49, -42, 10, 28, 22, 47, -4, 0, 24, 40, -19, 25, 6, -33]
	/* Exemplo 5 R: 281 */
	//var vetor = [15, -42, 40, -33, -47, 13, -27, 1, -39, -41, 11, 33, 4, -18, -44, 43, 39, -20, -23, 5, 12, 19, -12, 46, -19, -2, 35, -16, -45, -14, 16, -35, -24, -15, 2, -30, -13, 24, -50, 7, -10, 0, -4, 6, 42, 9, -31, -34, -1, 21, 36, -7, -36, -17, 32, 10, -32, 48, 18, -43, 31, 30, 25, 23, -29, -40, 45, -3, 41, 17, -46, -5, 34, 49, 3, 37, 14, 22, -38, -49, -37, -22, 47, 27, -11, 29, -48, -26, 38, -21, -25, -9, 20, 8, 44, 26, -8, -6, -28, 28]
	/* Exemplo 6 R: 215 -> aqui */
	//var vetor = [-27, -14, 6, 22, -29, 10, -38, -8, -17, 18, -20, 23, -7, 17, 49, 44, 1, -16, 9, -46, -31, 48, -9, 16, 4, -48, 13, 28, 37, -11, -28, -47, -18, -34, -10, -1, -32, -36, 25, 42, 3, -19, -15, 19, -44, -45, 36, 31, -3, 0, 33, -25, 7, 12, 24, 43, -5, -37, -30, -43, -42, -35, 35, -50, 29, 5, 32, 30, -26, 26, 8, -12, 41, -41, -2, -13, -40, 34, 38, 15, 11, -39, 20, 27, -4, 14, -21, -33, -49, 2, 47, -24, -6, 46, -23, 45, 40, -22, 21, 39]
	/* Exemplo 7 R: 207 */
	//var vetor = [-48, -10, 15, 27, 6, -32, -34, -3, 49, -26, 34, -29, 17, -8, -13, 45, -37, -49, -30, -50, 25, -12, 5, 18, 32, 4, 19, -22, 35, -4, -31, -19, 22, 1, -36, -40, 39, -45, 21, -15, 20, 26, -33, 10, 28, 48, 38, -46, -27, -24, 40, -38, 9, 37, -39, 43, -43, -6, 44, -42, -5, -7, -14, 41, 23, -35, 24, 0, -17, 3, 29, -9, -23, 13, 12, 31, 42, -25, 16, -21, -11, -44, 30, 36, 7, 46, 14, -20, -2, 11, -16, 2, -41, -18, 47, 8, -28, -47, -1, 33]
	/* Exemplo 8 R: 309 */
	//var vetor = [-27, 6, -32, 29, -5, 33, 12, 45, -35, 25, 10, -18, -36, -1, 4, 9, 41, -20, 7, -29, -43, 37, 46, 24, -12, -49, 8, 16, 22, -21, 26, 27, 3, 0, 38, 28, -33, -50, -19, 17, 11, 1, 15, 48, 49, 23, -22, 18, 30, -10, -45, 21, -39, -40, -14, 20, -3, -42, -26, -37, -48, 32, -28, 40, -16, -23, -41, 19, 47, -4, 42, -47, -13, -38, -17, -44, -15, -30, -6, 39, 34, -31, -2, 5, -46, -24, -11, 35, 44, -9, 2, -34, 43, -8, 13, 36, 31, 14, -25, -7]
	/* Exemplo 9 R: 195 */
	//var vetor = [30, -17, 34, 35, 1, -18, -34, 15, -7, -11, -5, 24, -31, -15, 39, 7, 38, -28, 41, 31, -41, 8, -4, 4, -40, 45, -36, -19, -39, -43, -6, -20, 25, -44, 48, 19, 33, 36, -8, 32, -26, 49, -22, 22, -3, 0, -23, -38, -13, -21, -2, 37, -24, 9, -42, 44, 40, 28, 20, -32, 10, -30, -33, -25, 2, -48, 46, 5, -29, -9, 42, 13, 18, 12, 29, -10, -45, 43, 3, 14, -12, 6, -1, -50, -46, -27, -35, 17, -49, -14, -37, 16, 23, -16, 26, 47, 21, 11, 27, -47]
	/* Exemplo 10 R: 390 */
	//var vetor = [8, -39, -24, -30, 41, -8, 22, -13, 49, 17, 9, 0, -4, -10, 19, 3, 44, -38, -37, -7, 33, 5, -14, 15, -16, -49, 48, -6, 1, 47, -27, -48, 26, 45, 46, -19, 2, -5, 38, 40, 28, 39, 4, 37, 12, 21, -1, -42, -32, 34, -36, 32, -41, -45, -31, -50, 10, -3, 23, 30, 43, -21, -47, -40, -35, -2, -34, -28, -12, -9, 24, 36, -23, 13, -25, 6, 25, 11, 20, 18, 16, -11, 31, -15, 35, -33, 42, 7, -22, -29, 29, -17, -20, -43, -18, 27, -46, -26, -44, 14]
	/* Exemplo 11 R: 0 -> aqui */
	//var vetor = [-3,-4,-5,-6,-7]
	/* Se usar o alguns dos exemplos descomentar aqui embaixo */
	//let n = vetor.count
	var valores = [Int]()
	var vetor = [Int]()
	let n = 100

	geraVetor(&valores, n : n)
	preencheVetor(&valores, &vetor, n : n)
	print(vetor)

	var methodStart = Date()
	if(temElementoNegativo(&vetor)){
		print("máximo subarray: 0")	
	} else {
		print("máximo subarray: \(enumeration(&vetor, n : n))")	
	}
	var methodFinish = Date()
	var executionTime = methodFinish.timeIntervalSince(methodStart)
	executionTime*=0.001
	print("tempo de execução para o enumeration: \(executionTime) em milissegundos")


	methodStart = Date()
	if(temElementoNegativo(&vetor)){
		print("máximo subarray: 0")	
	} else {
		print("máximo subarray: \(betterEnumeration(&vetor, n : n))")
	}	
	methodFinish = Date()
	executionTime = methodFinish.timeIntervalSince(methodStart)
	executionTime*=0.001
	print("tempo de execução para o betterEnumeration: \(executionTime) em milissegundos")

	methodStart = Date()
	if(temElementoNegativo(&vetor)){
		print("máximo subarray: 0")	
	} else {
		print("máximo subarray: \(divideAndConquer(&vetor, inicio : 0, fim : n-1))")
	}
	methodFinish = Date()
	executionTime = methodFinish.timeIntervalSince(methodStart)
	executionTime*=0.001
	print("tempo de execução para o divideAndConquer: \(executionTime) em milissegundos")

	methodStart = Date()
	if(temElementoNegativo(&vetor)){
		print("máximo subarray: 0")	
	} else {
		print("máximo subarray: \(dynamicProgramming(&vetor, fim : n-1, inicio : 0)) ")
	}
	methodFinish = Date()
	executionTime = methodFinish.timeIntervalSince(methodStart)
	executionTime*=0.001
	print("tempo de execução para o dynamicProgramming: \(executionTime) em milissegundos")


}

main()
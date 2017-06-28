import Foundation

func main(){
	var valores = [Int]()
	var vetor = [Int]()
	let n = 30

	geraVetor(&valores, n : n)
	preencheVetor(&valores, &vetor, n : n)
	print(vetor)

	var methodStart = Date()
	print(enumeration(&vetor, n : n))
	var methodFinish = Date()
	var executionTime = methodFinish.timeIntervalSince(methodStart)
	print("tempo de execução para o enumeration: \(executionTime) em microssegundos")


	methodStart = Date()
	print(betterEnumeration(&vetor, n : n))
	methodFinish = Date()
	executionTime = methodFinish.timeIntervalSince(methodStart)
	print("tempo de execução para o betterEnumeration: \(executionTime) em microssegundos")

	methodStart = Date()
	print(divideAndConquer(&vetor, inicio : 0, fim : n-1))
	methodFinish = Date()
	executionTime = methodFinish.timeIntervalSince(methodStart)
	print("tempo de execução para o divideAndConquer: \(executionTime) em microssegundos")

	methodStart = Date()
	print(dynamicProgramming(&vetor, fim : n-1, inicio : 0))
	methodFinish = Date()
	executionTime = methodFinish.timeIntervalSince(methodStart)
	print("tempo de execução para o dynamicProgramming: \(executionTime) em microssegundos")


}

main()
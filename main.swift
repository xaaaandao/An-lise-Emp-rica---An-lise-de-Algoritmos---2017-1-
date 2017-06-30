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
	/* Exemplo 3 R: 322 */
	//var vetor = [-18, -47, -40, -43, -2, 48, 31, -24, 36, -49, 4, -29, -4, -39, 12, 24, 8, 40, 45, -17, 6, -11, -5, -30, -8, 25, -44, -9, -20, -50, -12, -32, 41, 10, -42, -15, 11, -38, 37, 21, 33, -22, 16, -41, -46, -33, -26, 7, -3, -28, 29, 20, 27, 3, 15, 49, 23, -1, 14, 32, -31, -13, -48, -14, 13, 39, 46, -35, -36, 0, 17, -27, -21, 28, -7, 44, -10, 34, -19, 47, 42, -34, 5, 26, -45, 35, 9, -25, 38, -37, -23, 22, -6, -16, 18, 43, 30, 2, 19, 1]
	/* Exemplo 4 R: 271 */
	//var vetor = [-43, 15, -6, 14, 18, -22, -26, -5, 26, 17, -21, -12, -35, 41, 45, -3, 3, -25, 1, 30, -11, -30, -27, -1, 48, 44, -40, 32, -23, 29, 12, -20, -48, 42, -16, -36, -49, 43, -28, 21, 33, -44, -9, 38, 31, 35, -34, -24, -41, 7, -14, -46, -29, 23, -47, 9, -45, -37, -38, -10, 20, 5, 2, 39, 34, 46, -7, 13, -15, 11, -32, 37, -50, -8, 36, -17, -2, 4, 8, -13, 19, 16, 27, -31, -18, -39, 49, -42, 10, 28, 22, 47, -4, 0, 24, 40, -19, 25, 6, -33]
	/* Exemplo 5 R: 281 */
	//var vetor = [15, -42, 40, -33, -47, 13, -27, 1, -39, -41, 11, 33, 4, -18, -44, 43, 39, -20, -23, 5, 12, 19, -12, 46, -19, -2, 35, -16, -45, -14, 16, -35, -24, -15, 2, -30, -13, 24, -50, 7, -10, 0, -4, 6, 42, 9, -31, -34, -1, 21, 36, -7, -36, -17, 32, 10, -32, 48, 18, -43, 31, 30, 25, 23, -29, -40, 45, -3, 41, 17, -46, -5, 34, 49, 3, 37, 14, 22, -38, -49, -37, -22, 47, 27, -11, 29, -48, -26, 38, -21, -25, -9, 20, 8, 44, 26, -8, -6, -28, 28]
	/* Exemplo 6 R: 215 */
	//var vetor = [-27, -14, 6, 22, -29, 10, -38, -8, -17, 18, -20, 23, -7, 17, 49, 44, 1, -16, 9, -46, -31, 48, -9, 16, 4, -48, 13, 28, 37, -11, -28, -47, -18, -34, -10, -1, -32, -36, 25, 42, 3, -19, -15, 19, -44, -45, 36, 31, -3, 0, 33, -25, 7, 12, 24, 43, -5, -37, -30, -43, -42, -35, 35, -50, 29, 5, 32, 30, -26, 26, 8, -12, 41, -41, -2, -13, -40, 34, 38, 15, 11, -39, 20, 27, -4, 14, -21, -33, -49, 2, 47, -24, -6, 46, -23, 45, 40, -22, 21, 39]
	/* Exemplo 7 R: 207 */
	//var vetor = [-48, -10, 15, 27, 6, -32, -34, -3, 49, -26, 34, -29, 17, -8, -13, 45, -37, -49, -30, -50, 25, -12, 5, 18, 32, 4, 19, -22, 35, -4, -31, -19, 22, 1, -36, -40, 39, -45, 21, -15, 20, 26, -33, 10, 28, 48, 38, -46, -27, -24, 40, -38, 9, 37, -39, 43, -43, -6, 44, -42, -5, -7, -14, 41, 23, -35, 24, 0, -17, 3, 29, -9, -23, 13, 12, 31, 42, -25, 16, -21, -11, -44, 30, 36, 7, 46, 14, -20, -2, 11, -16, 2, -41, -18, 47, 8, -28, -47, -1, 33]
	/* Exemplo 8 R: 309 */
	//var vetor = [-27, 6, -32, 29, -5, 33, 12, 45, -35, 25, 10, -18, -36, -1, 4, 9, 41, -20, 7, -29, -43, 37, 46, 24, -12, -49, 8, 16, 22, -21, 26, 27, 3, 0, 38, 28, -33, -50, -19, 17, 11, 1, 15, 48, 49, 23, -22, 18, 30, -10, -45, 21, -39, -40, -14, 20, -3, -42, -26, -37, -48, 32, -28, 40, -16, -23, -41, 19, 47, -4, 42, -47, -13, -38, -17, -44, -15, -30, -6, 39, 34, -31, -2, 5, -46, -24, -11, 35, 44, -9, 2, -34, 43, -8, 13, 36, 31, 14, -25, -7]
	/* Exemplo 9 R: 195 */
	//var vetor = [30, -17, 34, 35, 1, -18, -34, 15, -7, -11, -5, 24, -31, -15, 39, 7, 38, -28, 41, 31, -41, 8, -4, 4, -40, 45, -36, -19, -39, -43, -6, -20, 25, -44, 48, 19, 33, 36, -8, 32, -26, 49, -22, 22, -3, 0, -23, -38, -13, -21, -2, 37, -24, 9, -42, 44, 40, 28, 20, -32, 10, -30, -33, -25, 2, -48, 46, 5, -29, -9, 42, 13, 18, 12, 29, -10, -45, 43, 3, 14, -12, 6, -1, -50, -46, -27, -35, 17, -49, -14, -37, 16, 23, -16, 26, 47, 21, 11, 27, -47]
	/* Exemplo 10 R: 390 */
	//var vetor = [8, -39, -24, -30, 41, -8, 22, -13, 49, 17, 9, 0, -4, -10, 19, 3, 44, -38, -37, -7, 33, 5, -14, 15, -16, -49, 48, -6, 1, 47, -27, -48, 26, 45, 46, -19, 2, -5, 38, 40, 28, 39, 4, 37, 12, 21, -1, -42, -32, 34, -36, 32, -41, -45, -31, -50, 10, -3, 23, 30, 43, -21, -47, -40, -35, -2, -34, -28, -12, -9, 24, 36, -23, 13, -25, 6, 25, 11, 20, 18, 16, -11, 31, -15, 35, -33, 42, 7, -22, -29, 29, -17, -20, -43, -18, 27, -46, -26, -44, 14]
	/* Exemplo 11 R: 0 */
	//var vetor = [-3,-4,-5,-6,-7]
	/* Exemplo 11 R: 571245 */
	//var vetor = [884,642,778,622,350,57,833,999,529,487,332,32,35,122,924,243,773,640,398,750,421,678,794,583,32,400,298,366,553,509,754,918,817,785,909,38,885,15,18,629,691,408,129,424,737,762,219,574,8,223,704,259,324,328,686,685,352,871,15,380,302,278,596,403,840,354,824,257,818,899,212,803,186,859,580,255,247,887,32,35,596,775,858,602,912,249,143,630,185,273,885,854,880,797,996,96,596,674,674,563,777,258,516,960,588,451,839,419,633,789,402,973,118,902,715,871,462,995,914,27,341,30,568,756,988,46,758,217,286,738,629,342,320,826,981,674,437,768,942,911,140,340,430,673,284,901,703,502,666,219,485,844,123,374,221,863,918,582,63,178,977,481,793,156,684,204,253,662,853,176,302,105,147,269,288,314,279,339,307,306,896,510,530,851,921,715,201,913,416,962,262,931,33,398,833,802,172,913,981,246,437,280,772,630,116,516,653,840,224,484,330,412,627,144,138,420,826,574,517,639,327,339,286,84,959,993,63,773,76,200,883,917,439,567,331,911,278,267,578,472,823,391,653,958,109,193,614,987,639,801,881,961,378,226,936,201,974,34,319,580,441,40,521,974,545,136,29,651,824,549,502,726,448,526,311,824,187,772,849,228,981,294,627,704,724,91,464,148,286,704,451,421,28,846,36,316,354,697,883,558,715,327,32,330,996,182,93,149,186,420,88,636,910,201,365,311,659,531,497,264,127,504,719,304,158,3,839,927,129,187,392,438,102,649,849,24,358,757,102,540,150,746,164,572,196,556,116,774,826,597,129,454,451,763,142,839,740,996,371,328,901,204,311,498,886,803,827,256,172,727,773,22,407,126,756,979,991,659,570,85,56,415,385,473,983,274,871,657,61,77,150,421,952,557,212,862,307,515,129,333,928,800,837,559,868,105,745,434,556,1000,885,61,73,888,472,769,892,839,509,226,992,183,9,976,401,175,64,47,760,44,696,935,495,893,58,313,238,679,967,328,94,758,456,957,51,939,213,674,138,3,663,460,780,711,881,450,515,308,356,691,996,908,245,676,696,403,732,838,229,369,840,292,596,218,110,610,959,928,771,514,559,696,629,600,367,588,322,584,121,848,158,814,229,731,779,178,18,288,57,593,796,454,870,279,21,20,893,722,344,872,828,691,667,100,594,181,494,769,720,885,857,715,475,792,829,793,551,541,563,421,60,785,759,285,870,681,683,620,164,69,813,196,905,957,535,560,723,846,48,239,144,999,496,202,316,740,682,443,9,962,684,607,589,342,564,837,15,281,913,521,348,202,291,372,826,616,822,718,952,499,792,77,741,644,774,767,725,227,634,41,521,186,568,849,270,860,484,624,270,42,373,693,581,905,446,143,865,4,852,872,338,592,24,923,167,289,377,931,670,851,369,8,428,739,442,563,107,885,24,844,884,176,579,699,259,229,806,467,122,268,412,683,516,875,521,21,492,711,58,831,399,310,534,4,217,178,748,88,746,798,660,706,831,86,443,392,602,497,731,612,493,428,271,785,119,300,151,785,495,249,113,966,578,898,254,440,949,901,758,741,582,517,420,343,353,390,256,29,822,490,306,119,746,189,859,409,546,132,813,210,819,345,992,416,506,165,361,344,804,129,379,252,32,52,411,269,650,646,159,335,811,927,947,585,467,749,918,803,250,592,534,721,523,928,388,10,8,417,199,387,906,574,584,506,666,794,614,303,204,644,971,775,852,474,306,318,277,56,891,206,843,288,841,386,944,646,641,673,970,673,535,426,123,458,386,154,475,579,774,398,830,74,637,648,502,298,409,934,73,379,927,677,693,850,349,981,26,934,164,264,880,402,901,633,913,489,893,434,620,831,288,426,34,381,857,798,782,306,650,397,660,492,686,228,142,500,921,679,888,915,403,531,932,857,782,873,620,379,585,213,463,10,18,604,664,666,303,629,80,127,360,820,350,475,43,256,358,151,783,501,911,724,976,436,503,561,637,652,759,746,440,930,915,61,279,930,920,272,465,335,647,748,515,966,432,964,702,488,511,969,212,207,920,354,399,257,11,242,148,758,43,86,674,289,879,257,171,38,311,805,589,859,861,734,192,157,237,516,963,360,849,39,468,128,507,277,43,184,204,887,960,883,534,406,130,600,512,320,497,311,444,650,115,267,725,509,15,948,535,663,885,341,695,578,517,437,818,911,275,661,762,206,132,471,163,103,80,977,14,919,490,696,485,692,269,937,825,649,839,254,941,833,214,396,740,540,602,502,721,165,53,449,367,714,304,505,59,906,832,896,485,220,909,13,296,589,74,856,500,340,472,13,326,522,576,887,617,297,299,976,17,252,448,686,795,44,340,845,954,382,295,946,942,305,923,479,726,423,185,688,238,883,285,832,84,799,80,905,938,532,105,506,113,194,416,982,422,80,954,634,191,851,672,332,325,756,571,577,247,319,226,170,987,650,347,785,533,661,575,298,689,648,136,384,939,735,343,673,812,909,632,401,855,968,766,518,599,226,669,106]
	/* Se usar os exemplos acima descomentar a linha abaixo */
	//let n = vetor.count
	var valores = [Int]()
	var vetor = [Int]()
	let n = 100000

	geraVetor(&valores, n : n)
	preencheVetor(&valores, &vetor, n : n)
	print(vetor)

	var methodStart = Date()
	print("máximo subarray: \(enumeration(&vetor, n : n))")	
	var methodFinish = Date()
	var executionTime = methodFinish.timeIntervalSince(methodStart)
	executionTime*=0.001
	print("tempo de execução para o enumeration: \(executionTime) em milisegundos")


	methodStart = Date()
	print("máximo subarray: \(betterEnumeration(&vetor, n : n))")
	methodFinish = Date()
	executionTime = methodFinish.timeIntervalSince(methodStart)
	executionTime*=0.001
	print("tempo de execução para o betterEnumeration: \(executionTime) em milisegundos")

	methodStart = Date()
	print("máximo subarray: \(divideAndConquer(&vetor, inicio : 0, fim : n-1))")
	methodFinish = Date()
	executionTime = methodFinish.timeIntervalSince(methodStart)
	executionTime*=0.001
	print("tempo de execução para o divideAndConquer: \(executionTime) em milisegundos")

	methodStart = Date()
	print("máximo subarray: \(dynamicProgramming(&vetor)) ")
	methodFinish = Date()
	executionTime = methodFinish.timeIntervalSince(methodStart)
	executionTime*=0.001
	print("tempo de execução para o dynamicProgramming: \(executionTime) em milisegundos")
}

main()

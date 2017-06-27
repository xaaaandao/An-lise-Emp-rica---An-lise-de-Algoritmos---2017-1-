all:
	gcc algoritmos.c -c 
	gcc main.c -lm -o main algoritmos.o

clear:
	rm main
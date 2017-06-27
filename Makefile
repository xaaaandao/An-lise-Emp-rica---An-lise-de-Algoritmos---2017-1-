all:
	gcc algoritmos.c -c
	gcc main.c -o main algoritmos.o

clear:
	rm main
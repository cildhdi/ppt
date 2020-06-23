#include <stdio.h>
#include <malloc.h>
#include <stdlib.h>

int arraySize = 100000;
int repeat = 100000;

int main(int argc, char **argv) {
    double* testArray = (double*)malloc(arraySize * sizeof(double));
    double sum = 0.0;
    int i, j;
    for(i = 0; i < arraySize; ++i) {
        testArray[i] = i;
    }
    for(i = 0; i < repeat; ++i) {
        for(j = 0; j < arraySize; ++j) {
            sum += testArray[(i+j)%arraySize];
        }
    }
    printf("%E\n", sum);

    free(testArray);
    return 0;
}
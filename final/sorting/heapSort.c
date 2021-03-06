


#include "common.h"
#include "utils.h"
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include "vector.h"
#include "myMemory.h"
#include <string.h>



void heapSort(int *, unsigned int);


void heapAdjust(int *, unsigned int start, unsigned int end);


void
heapAdjust(int *base, unsigned int start, unsigned int end)
{
	int val = base[start];
	int i , j;
	
	for (i = start, j = 2*i; j <= end;) {
		if (j+1<=end && base[j+1] > base[j])
			++j;
		if (base[j] <= val)
			break;
		
		base[i] = base[j];
		i = j;
		j = 2*j;
	} 
	base[i] = val;
}

void
heapSort(int *base, unsigned int size)
{

	int start;
	int end = size - 1;
	int temp;	
	int i;
	start = end/2;	

	for(;start >= 0; --start) {
		heapAdjust(base, start, end);
	} 

	
	for(i = size - 1; i > 0; --i) {
		temp = base[0];
		base[0] = base[i];
		base[i] = temp;
		heapAdjust(base, 0, i - 1);
	}

}

int main()
{

	FILE *fp = NULL;
	int temp;
	LPVector data = NULL;
	int *base = NULL;
	unsigned int size = 0;
	unsigned int align;
	unsigned int i,j;	
	bool Changed;
	int min, minIdx;


	if ((fp = fopen("input.txt", "r")) == NULL) {
		printf("unable to open input file.");
		exit(-1);
	}

	if (False == createVector(&data, sizeof(int))) {
		goto cleanup;
	}

	

	while(fscanf(fp, "%d", &temp) > 0) {
		pushBackToVector(data, &temp);
	}
	
	size = sizeOfVector(data);
	base = (int *)myAlloc(size * sizeof(int));
	if (NULL == base) {
		printf("Out Of Memory!");
		goto cleanup;
	}
		
	memcpy(base, dataOfVector(data), size * sizeof(int));

	printf("\nData in file:\n");
	align = 0;
	
	for (i = 0; i < size; ++i) {
		printf("%5d", *(int *)(base + i));
		++align;
		if ((align%5) == 0 ) putchar('\n');
	}
	if (align % 5) putchar('\n');

	heapSort(base, size);
	
	printf("\nAfter Sort:\n");
	align = 0;
	
	for (i = 0; i < size; ++i) {
		printf("%5d", *(int *)(base + i));
		++align;
		if ((align%5) == 0 ) putchar('\n');
	}
	if (align % 5) putchar('\n');
cleanup:

	if (fp)
		fclose(fp);

	if (data)
		destroyVector(&data);

	return 0;
}


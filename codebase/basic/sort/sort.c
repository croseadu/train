#include "../../include/my.h"
#include "../../include/util.h"


void printArray(int *array, int maxIndex);
void bubbleSort(int *array, int arrayIndex);
void insertSort(int *array, int arrayIndex);
void selectSort(int *array, int arrayIndex);
void quickSort(int *array, int arrayIndex);
void shellSort(int *array, int arrayIndex);
void mergeSort(int *array, int arrayIndex);
void heapSort(int *array, int arrayIndex);

int main()
{
	int maxElements, curIndex, data;
	int *array = NULL, arrayIndex, sizeOfArray;
	char *inputBuffer, c;
	STATUS status;

	inputBuffer = (char *)malloc(sizeof(char) * INIT_BUFFER_SIZE);
	if (NULL == inputBuffer)
	{
		Print(("Out of Memory when allocate inputBuffer"));
		exit(-1);
	}	
	maxElements = INIT_BUFFER_SIZE;

	c = getchar();
	curIndex = 0;
	while (c != '\n')
	{
		inputBuffer[curIndex++] = c;
		c = getchar();

		if (curIndex >= maxElements - 1)
		{
			maxElements += INCRE_BUFFER_SIZE;
			inputBuffer = (char *)realloc(inputBuffer, sizeof(char) * maxElements);
			if (inputBuffer == NULL)
			{
				Print(("Out of Memory when enlarge input buffer"));
				exit(-1);
			}
		}
	}
	inputBuffer[curIndex] = '\0';

	array = (int *)malloc(sizeof(int) * INIT_BUFFER_SIZE);
	if (NULL == array)
	{
		Print(("Out of Memory when allocate array"));
		exit(-1);
	}	
	sizeOfArray = INIT_BUFFER_SIZE;

	curIndex = 0;
	arrayIndex = 1;
	while ((status = getNextNumber(inputBuffer, &curIndex, &data)) == OK)
	{
		Print(("NextNumber is %d\n", data));
		if (arrayIndex >= sizeOfArray)
		{
			sizeOfArray += INCRE_BUFFER_SIZE;
			array = (int *)realloc(array, sizeof(int) * sizeOfArray);
			if (array == NULL)
			{
				Print(("Out of Memory when enlarge array buffer"));
				exit(-1);
			}
		}
		array[arrayIndex++] = data;
	}
	free(inputBuffer);

	printf("Input Array is:");
	printArray(array, arrayIndex);
	
	//bubbleSort(array, arrayIndex);
    	//insertSort(array, arrayIndex);
	//selectSort(array, arrayIndex);
	//quickSort(array, arrayIndex);
	//shellSort(array, arrayIndex);
	//mergeSort(array, arrayIndex);
	heapSort(array, arrayIndex);
	printf("After Sort, Array is:");
	printArray(array, arrayIndex);


	return 0;
}

void printArray(int *array, int maxIndex)
{
	int i = 1, k = 0;
	for (; i < maxIndex; i++)
	{
		printf("%5d%s", array[i],((++k)%5)?"":" ");
	}
	putchar('\n');
}

void bubbleSort(int *array, int arrayIndex)
{
	BOOL bChanged;
	int i, j;

	for (i = arrayIndex - 1; i > 1; i--)
	{
		bChanged = FALSE;
		for (j = 1; j < i; j++)
		{
			if (array[j] > array[j+1])
			{
				int temp;
				temp = array[j];
				array[j] = array[j+1];
				array[j+1] = temp;
				bChanged = TRUE;
			}
		}

		if (bChanged == FALSE)
			break;
	}
	

}

void insertSort(int *array, int arrayIndex)
{
	int i,j;
	int temp;
		
	for (i = 2; i < arrayIndex; i++)
	{
		if (array[i] < array[i - 1])
		{
			temp = array[i];
			array[0] = temp;

			for (j = i - 1; array[j] > temp; j--)
			{
				array[j+1] = array[j];
			}
			array[j+1] = temp;
		}	
	}
}

int selectMin(int *array, int from, int end)
{
	int minIndex = from, iterIndex = from+1;
	int minValue = array[from];

	do
	{
		if (array[iterIndex] < minValue)
		{
			minIndex = iterIndex;
			minValue = array[iterIndex];
		}

	}while (iterIndex++ < end);
	
	return minIndex;
}

void selectSort(int *array, int arrayIndex)
{
	int i = 1, k;
	
	for (; i < arrayIndex - 1; i++)
	{
		k = selectMin(array, i, arrayIndex - 1);

		if (k != i)
		{
			int temp;
			temp = array[i];
			array[i] = array[k];
			array[k] = temp;
		}

	}
}

int partition(int *array, int start, int end)
{
	int temp = array[start];
	int from = start, to = end - 1;

	while(from < to)
	{
		while (from < to && array[to] >= temp)
			to--;
		array[from] = array[to];
		while (from < to && array[from] <= temp)
			from++;
		array[to] = array[from];
	}

	array[from] = temp;
	return from;
}
void quick(int *array, int start, int end)
{
	int pivot;
	
	if (start+1 >= end)
		return;


	pivot = partition(array, start, end);
	quick(array, start, pivot);
	quick(array, pivot+1, end);
}
void quickSort(int *array, int arrayIndex)
{
	quick(array, 1, arrayIndex);

}

void shellSort(int *array, int arrayIndex)
{

	static int delta[3]= {5,3,1};
	int i,j,k,temp;

	for (k = 0; k < 3; k++)
	{
	
		for (i = 1+delta[k]; i < arrayIndex; i++)
		{
			if (array[i] < array[i - delta[k]])
			{
				temp = array[i];

				for (j = i - delta[k]; j > 0 && array[j] > temp; j-= delta[k])
					array[j+delta[k]] = array[j];

				array[j+delta[k]] = temp;
			}
		
		}
		
	}

}

void merge(int *src, int *dst, int start, int end)
{
	int middle = (start + end)/2;

	int src0Index = start, src1Index = middle+1, dstIndex = start;
	while (src0Index <=middle && src1Index <= end)
	{
		if (src[src0Index] < src[src1Index])
		{
			dst[dstIndex++] = src[src0Index++];
		}
		else
		{
			dst[dstIndex++] = src[src1Index++];
		}
	}

	while(src0Index <= middle)
	{
		dst[dstIndex++] = src[src0Index++];
	}

	while(src1Index <= end)
	{
		dst[dstIndex++] = src[src1Index++];
	}
}
void _mergeSort(int *src, int * dst, int start, int end)
{
	int middle;
	int *buffer;
	if (start >= end)
	{
		dst[start] = src[start];
		return;
	}
	buffer = (int *)malloc((end+1)*sizeof(int));
	if (NULL == buffer)
	{
		Print(("Out of memory when allocate temp buffer in mergeSort\n"));
		exit(-1);
	}
	middle = (start + end)/2;
	_mergeSort(src, buffer, start, middle);
	_mergeSort(src, buffer,middle+1, end);
	merge(buffer, dst, start, end);
}

void mergeSort(int *array, int arrayIndex)
{
	_mergeSort(array, array, 1, arrayIndex - 1);
}


void heapAdjust(int *array, int start, int end)
{
	int i = start, j = 2*i, temp;
	temp = array[i];
	Print(("heap Adjust, %d\n", start));
	for(;2*i <= end;)
	{
		j = 2 * i;
		if (j+1 <= end && array[j+1] > array[j])
			j++;
		if (array[j] <= temp)
			break;
		array[i] = array[j];
		i = j;
	}

	array[i] = temp;
	
	
}
void heapSort(int *array, int arrayIndex)
{
	int end = arrayIndex - 1, i, temp;

	for (i = end/2; i > 0; i--)
	{
		heapAdjust(array, i, end);
	}

	for (i = end; i > 1; i--)
	{
		Print(("Select, %d\n", i));
		temp = array[i];
		array[i] = array[1];
		array[1] = temp;
		heapAdjust(array, 1 , i - 1);
	}

}






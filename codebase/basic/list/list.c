#include "../../include/my.h"
#include "../../include/list.h"
#include "../../include/util.h"

int main()
{
	STATUS status;
	int data;
	int curIndex, maxElements;
	char *inputBuffer, c;
	SINGLE_LIST *pListHead;

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
	
	initList(&pListHead);	

	curIndex = 0;
	while ((status = getNextNumber(inputBuffer, &curIndex, &data)) == OK)
	{
		Print(("NextNumber is %d\n", data));
		insertToListTail(pListHead,data);
	}
	free(inputBuffer);

	if (status == ERROR)
	{
		Print(("error in input \n"));
		exit(-1);
	}
	
	Print(("Input List is :\n"));
	printList(pListHead);	

	reverseList(pListHead);
	Print(("After reverse, List is :\n"));
	printList(pListHead);


	quickSortList(pListHead);
	Print(("After Sort:\n"));
	printList(pListHead);	

	destoryList(pListHead);
	return 0;
}

STATUS initList(LP_SINGLE_LIST *ppListHead)
{
	*ppListHead = (LP_SINGLE_LIST)malloc(sizeof(SINGLE_LIST));
	if (NULL == *ppListHead)
	{
		Print(("Out Of Memory when allocate list head\n")) ;
		return ERROR;
	}
	
	(*ppListHead)->data = -1;
	(*ppListHead)->pNextNode = NULL;
	return OK;
}	

void printList(const LP_SINGLE_LIST pListHead)
{
	int align = 0;
	LP_SINGLE_LIST pIterNode = pListHead->pNextNode;

	while (pIterNode)
	{
		printf("%5d%s", pIterNode->data, (((++align)%5)?"":"\n")) ;
		pIterNode = pIterNode->pNextNode;
	}
}

STATUS insertToListTail(LP_SINGLE_LIST pListHead, int data)
{
	LP_SINGLE_LIST pInsertNode = pListHead;
	while (pInsertNode->pNextNode)
		pInsertNode = pInsertNode->pNextNode;

	pInsertNode->pNextNode = (LP_SINGLE_LIST)malloc(sizeof(SINGLE_LIST));

	if (NULL == pInsertNode->pNextNode)
	{
		Print(("Out Of Memory when allocate a node\n")) ;
		return ERROR;
	}

	pInsertNode->pNextNode->data = data;
	pInsertNode->pNextNode->pNextNode = NULL;
	
	return OK;
}

void destoryList(LP_SINGLE_LIST pListHead)
{
	LP_SINGLE_LIST pNextNode, pIterNode = pListHead;
	while (pIterNode)
	{
		pNextNode = pIterNode->pNextNode;
		free(pIterNode);
		pIterNode = pNextNode;
	}
	
}
void bubbleSortList(LP_SINGLE_LIST pListHead)
{
	int temp;	
	BOOL bChanged;
	LP_SINGLE_LIST pIterEnd = NULL, pIterNode = NULL;
	LP_SINGLE_LIST pStartNode = pListHead->pNextNode;	
	
	while (pStartNode->pNextNode != pIterEnd)
	{
		pIterNode = pStartNode;
		bChanged = FALSE;
		while (pIterNode->pNextNode != pIterEnd)
		{
			if (pIterNode->data > pIterNode->pNextNode->data)
			{
				temp = pIterNode->data;
				pIterNode->data = pIterNode->pNextNode->data;
				pIterNode->pNextNode->data = temp;
				bChanged = TRUE;
			}
			pIterNode = pIterNode->pNextNode;
		}
		if (bChanged == TRUE)
			break;
		pIterEnd = pIterNode;
	}
}

void insertSortList(LP_SINGLE_LIST pListHead)
{
	LP_SINGLE_LIST pInsertNode, pLastNode, pIterNode, pInsertNextNode;

	if (NULL == pListHead->pNextNode || NULL == pListHead->pNextNode->pNextNode)
	{
		return;
	}

	pInsertNode = pListHead->pNextNode->pNextNode;

	pListHead->pNextNode->pNextNode = NULL;
	pLastNode = pListHead->pNextNode;

	while (pInsertNode)
	{
		pInsertNextNode = pInsertNode->pNextNode;
		pInsertNode->pNextNode = NULL;

		if (pLastNode->data > pInsertNode->data)
		{
			pIterNode = pListHead;		
			while (pIterNode->pNextNode->data <= pInsertNode->data)
				pIterNode = pIterNode->pNextNode;
			
			pInsertNode->pNextNode = pIterNode->pNextNode;
			pIterNode->pNextNode = pInsertNode;	
		}
		else
		{
			pLastNode->pNextNode = pInsertNode;
			pLastNode = pInsertNode;
		}
		pInsertNode = pInsertNextNode;
	}

}

LP_SINGLE_LIST selectMinimal(const LP_SINGLE_LIST pListHead)
{
	LP_SINGLE_LIST 	pPrevNode = NULL;
	LP_SINGLE_LIST 	pIterNode = pListHead;
	int		temp = pIterNode->data;	
	
	while (pIterNode->pNextNode)
	{
		if (pIterNode->pNextNode->data < temp)
		{
			temp = pIterNode->pNextNode->data;
			pPrevNode = pIterNode;
		}
		pIterNode = pIterNode->pNextNode;
	}

	return pPrevNode;
}

void selectSortList(LP_SINGLE_LIST pListHead)
{
	LP_SINGLE_LIST pSelectList = pListHead->pNextNode;
	LP_SINGLE_LIST pInsertPos, pSelectNodePrev;
	
	if (NULL == pSelectList || NULL == pSelectList->pNextNode)
		return;

	pInsertPos = pListHead;
	
	while (pSelectList)
	{
		pSelectNodePrev = selectMinimal(pSelectList);
		
		if (pSelectNodePrev == NULL)
		{
			pInsertPos->pNextNode = pSelectList;
			pSelectList = pSelectList->pNextNode;
		}
		else
		{
			pInsertPos->pNextNode = pSelectNodePrev->pNextNode;	
			pSelectNodePrev->pNextNode = pSelectNodePrev->pNextNode->pNextNode;
		}
		pInsertPos = pInsertPos->pNextNode;
	}
	pInsertPos->pNextNode = NULL;
}

LP_SINGLE_LIST pivot(LP_SINGLE_LIST pStartNode, LP_SINGLE_LIST pEndNode)
{
	LP_SINGLE_LIST pFirstNode, pLastNode;
	LP_SINGLE_LIST pInsertNode, pNextInsertNode;

	Print(("\npivot start %d, end %d", (pStartNode != NULL)?pStartNode->data:-1, (pEndNode != NULL)?pEndNode->data:-1));

	if (pStartNode == pEndNode || pStartNode->pNextNode == pEndNode)
		return pStartNode;

	pFirstNode = pStartNode;
	pLastNode = pStartNode;
	pInsertNode = pStartNode->pNextNode;
	


	while (pInsertNode != pEndNode)
	{
		pNextInsertNode = pInsertNode->pNextNode;
		
		if (pInsertNode->data < pStartNode->data)
		{
			pInsertNode->pNextNode = pFirstNode;
			pFirstNode = pInsertNode;
		}
		else
		{
			pLastNode->pNextNode = pInsertNode;
			pLastNode = pInsertNode;
		}

		pInsertNode = pNextInsertNode;

	}
	
	pLastNode->pNextNode = pEndNode;
	return pFirstNode;	
	
}

LP_SINGLE_LIST quickSort(LP_SINGLE_LIST pStartNode, LP_SINGLE_LIST pEndNode)
{
	LP_SINGLE_LIST pPartionNode;
	LP_SINGLE_LIST pHead;

	Print(("\nquickSort start %d, end %d", (pStartNode != NULL)?pStartNode->data:-1, (pEndNode != NULL)?pEndNode->data:-1));
	
	if (pStartNode == pEndNode ||
	    pStartNode->pNextNode == pEndNode)
		return pStartNode;
	
	pPartionNode = pivot(pStartNode, pEndNode);
	pHead = quickSort(pStartNode->pNextNode, pEndNode);
	pStartNode->pNextNode = pHead;

	return quickSort(pPartionNode, pStartNode);
}

void quickSortList(LP_SINGLE_LIST pListHead)
{	
	pListHead->pNextNode = quickSort(pListHead->pNextNode, NULL);	
}

void reverseList(LP_SINGLE_LIST pListHead)
{
	LP_SINGLE_LIST pIterNode = pListHead->pNextNode;
	LP_SINGLE_LIST pNextNode;

	pListHead->pNextNode = NULL;

	while (pIterNode)
	{
		pNextNode = pIterNode->pNextNode;
		pIterNode->pNextNode = pListHead->pNextNode;
		pListHead->pNextNode = pIterNode;
		pIterNode = pNextNode;
	}
}





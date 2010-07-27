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
		insertToListTail(pListHead,data);
	}
	free(inputBuffer);

	if (status == ERROR)
	{
		Print(("error in input \n"));
		exit(-1);
	}
	
	Print(("Input List is :"));
	printList(pListHead);	


	bubbleSortList(pListHead);
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

	LP_SINGLE_LIST pStartNode = pListHead->pNextNode;
	LP_SINGLE_LIST pIterNode = pStartNode->pNextNode;
	LP_SINGLE_LIST pInsertNodePrev, pIterNodePrev, pNextNode;

	while (pIterNode != NULL)
	{
		pInsertNodePrev = pListHead;
		while (pInsertNodePrev->pNextNode != pIterNode)
		{
			if (pInsertNodePrev->pNextNode->data > pIterNode->data)
				break;
			pInsertNodePrev = pInsertNodePrev->pNextNode;
		}			
		
		pNextNode = pIterNode->pNextNode;
		if (pInsertNodePrev->pNextNode != pIterNode)
		{
			pIterNodePrev->pNextNode = pIterNode->pNextNode;
			pIterNode->pNextNode = pInsertNodePrev->pNextNode;
			pInsertNodePrev->pNextNode = pIterNode;			
		}
		
		pIterNodePrev = pIterNodePrev->pNextNode;
		pIterNode = pNextNode;
	}
}





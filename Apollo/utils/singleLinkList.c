#include "singleLinkList.h"


#include "memory.h"

#include  <stdio.h>
#include  <assert.h>
#include  <string.h>

BOOL 
createSingleLinkList(
	LPSingleLinkList 	*ppList,
	unsigned int 		elementSize,
	Printer 		printer,
	Less 			less)
{
	LPSingleLinkList pList;


	pList = myAlloc(sizeof(SingleLinkList));
	if (NULL == pList) {
		return False;
	}

	pList->pHead = NULL;
	pList->elementSize = elementSize;
	pList->printer = printer;
	pList->less = less;

	*ppList = pList;
	return True;
}

void
clearSingleLinkList(
	LPSingleLinkList pList)
{
	LPSingleLinkListNode pIterNode, pNextNode;

	pIterNode = pList->pHead;
	while (pIterNode) {
		pNextNode = pIterNode->pNext;

		myFree(pIterNode->data);
		myFree(pIterNode);


		pIterNode = pNextNode;	
	}	

	pList->pHead = NULL;
}

void
destroySingleLinkList(
	LPSingleLinkList *ppList)
{
	LPSingleLinkList pList;

	assert(ppList != NULL);
	pList = *ppList;
	assert (pList != NULL);

	clearSingleLinkList(pList);

	myFree(pList);
	*ppList = NULL;
}


static LPSingleLinkListNode
createNewSingleLinkListNode(
	const LPSingleLinkList pList,
	const void *data)
{
	LPSingleLinkListNode pNewNode;

	pNewNode = myAlloc(sizeof(SingleLinkListNode));
	if (NULL == pNewNode)
		return NULL;

	pNewNode->data = myAlloc(pList->elementSize);
	if (NULL == pNewNode->data) {
		assert(0 && "Out Of memory");
		myFree(pNewNode);
		return NULL;
	}

	memcpy(pNewNode->data, data, pList->elementSize);
	pNewNode->pNext = NULL;

	return pNewNode;
}


BOOL
insertToHeadOfSingleLinkList(
	LPSingleLinkList pList,
	const void *data)
{
	LPSingleLinkListNode pNode;

	pNode = createNewSingleLinkListNode(pList, data);
	if (NULL == pNode) {
		return False;
	}

	pNode->pNext = pList->pHead;
	pList->pHead = pNode;

	return True;
	
}

BOOL
insertToTailOfSingleLinkList(
	LPSingleLinkList pList,
	const void *data)
{
	LPSingleLinkListNode pNode;
	SingleLinkListIter it;

	pNode = createNewSingleLinkListNode(pList, data);
	if (NULL == pNode) {
		return False;
	}

	it = &pList->pHead;
	while (*it != NULL)
		it = &(*it)->pNext;

	*it = pNode;
	pNode->pNext = NULL;

	return True;
}


void
insertBeforeInSingleLinkList(
	LPSingleLinkList pList,
	SingleLinkListIter it,
	const void *data)
{
	LPSingleLinkListNode pNode;

	pNode = createNewSingleLinkListNode(pList, data);
	assert (pNode != NULL); 
	pNode->pNext = *it;
	*it = pNode;
}

SingleLinkListIter
findInSingleLinkList(
	LPSingleLinkList pList,
	const void *data)
{
	SingleLinkListIter it;
	it = &pList->pHead;

	while ( *it != NULL && 
	        !(pList->less((*it)->data, data) == False &&
		  pList->less(data, (*it)->data) == False) ) {
		it = &(*it)->pNext;
	}

	return it;
}

SingleLinkListIter
findIfInSingleLinkList(
	LPSingleLinkList pList,
	Pred pred)
{
	SingleLinkListIter it;
	it = &pList->pHead;

	while ( *it != NULL && 
		pred((*it)->data) ) {
		it = &(*it)->pNext;
	}

	return it;
}



void
removeFromSingleLinkList(
	LPSingleLinkList pList,
	SingleLinkListIter it)
{
	LPSingleLinkListNode pNode = *it;

	if (NULL == pNode) {
		return;
	}

	*it = pNode->pNext;
	myFree(pNode->data);
	myFree(pNode);
}

BOOL
removeIfInSingleLinkList(
	LPSingleLinkList pList,
	Pred pred)
{
	SingleLinkListIter it = &pList->pHead;
	LPSingleLinkListNode pNode;
	BOOL bFound = False;

	while (*it != NULL) {
		if (pred((*it)->data) == True) {
			pNode = *it;
			*it = pNode->pNext;

			myFree(pNode->data);
			myFree(pNode);

			bFound = True;
		} else {
			it = &(*it)->pNext;
		}

	}

	return bFound;
}



void
reverseSingleLinkList(
	LPSingleLinkList pList)
{
	LPSingleLinkListNode pIter, pNext;
	
	if (pList->pHead == NULL) {
		return;
	}

	pIter = pList->pHead->pNext;
	pList->pHead->pNext = NULL;
	while (pIter != NULL) {
		pNext = pIter->pNext;

		pIter->pNext = pList->pHead;
		pList->pHead = pIter;

		pIter = pNext;
	}
}

static void
insertSortSingleLinkList(
	LPSingleLinkList pList)
{
	SingleLinkListIter it;
	LPSingleLinkListNode pNode = pList->pHead;
	LPSingleLinkListNode pNext;

	if (NULL == pNode)
		return;

	pNode = pNode->pNext;
	if (NULL == pNode)
		return;
	

	pList->pHead->pNext = NULL;
	while (pNode != NULL) {
		it = &pList->pHead;
		pNext = pNode->pNext;		

		while (*it != NULL && pList->less((*it)->data, pNode->data) == True)
			it = &(*it)->pNext;

		pNode->pNext = *it;
		*it = pNode;

		pNode = pNext;
	}
	
		

}

void
sortSingleLinkList(
	LPSingleLinkList pList)
{
	insertSortSingleLinkList(pList);
}

void
uniqueSingleLinkList(
	LPSingleLinkList pList)
{
	LPSingleLinkListNode pIterNode, pNextNode;
	
	SingleLinkListIter it = &pList->pHead;

	if (pList->pHead == NULL || pList->pHead->pNext == NULL)
		return;

	pIterNode = pList->pHead->pNext;
	pList->pHead->pNext = NULL;
	it = &pList->pHead->pNext;

	while (pIterNode != NULL) {
		pNextNode = pIterNode->pNext;
		
		if (pList->less(pIterNode->data, (*it)->data) == False &&
		    pList->less((*it)->data, pIterNode->data) == False) {
			*it = pNextNode;		
	
			myFree(pIterNode->data);
			myFree(pIterNode);

		} else {
			it = &(*it)->pNext; 
		}

		
		pIterNode = pNextNode;
	} 
}

BOOL
isSingleLinkListEmpty(
	LPSingleLinkList pList)
{
	return (pList->pHead == NULL) ? True : False;
}

unsigned int
getSizeOfSingleLinkList(
	LPSingleLinkList pList)
{
	unsigned int count = 0;
	LPSingleLinkListNode pIter = pList->pHead;

	while (pIter) {
		++count;
		pIter = pIter->pNext;
	}

	return count;
}


void
dumpSingleLinkList(
	const LPSingleLinkList pList,
	const char *separator,
	unsigned int itemsPerLine)
{
	unsigned int count = 0;
	LPSingleLinkListNode pIterNode = pList->pHead;
	
	printf("\n");
	while (pIterNode) {
		printf("%s", count != 0 ? separator : "");
		pList->printer(pIterNode->data);
		pIterNode = pIterNode->pNext;
		++count;
		if (count % itemsPerLine == 0)
			printf("\n");
	}

	if (count % itemsPerLine != 0)
		printf("\n");

}










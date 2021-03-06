#ifndef _MY_SINGLE_LINK_LIST_H
#define _MY_SINGLE_LINK_LIST_H

#include "common.h"

typedef struct _SingleLinkListNode
{
  	void * data;
  	struct _SingleLinkListNode *pNextNode;
}SingleLinkListNode, *LPSingleLinkListNode;


typedef LPSingleLinkListNode * IteratorOfSingleLinkList;


typedef struct _SingleLinkList
{
	LPSingleLinkListNode pHead;

	unsigned int 	elementSize;
	Printer  	printer;
	Less		less;	

}SingleLinkList, *LPSingleLinkList;


bool createSingleLinkList(LPSingleLinkList *ppList, unsigned int elementSize, Printer printer, Less less);
void destroySingleLinkList(LPSingleLinkList *ppList);


void clearSingleLinkList(LPSingleLinkList pList);
bool insertToHeadOfSingleLinkList(LPSingleLinkList pList, const void *data);
bool insertToTailOfSingleLinkList(LPSingleLinkList pList, const void *data);

bool insertBeforeInSingleLinkList(LPSingleLinkList pList, const void *data, IteratorOfSingleLinkList);
bool insertAfterInSingleLinkList(LPSingleLinkList pList, const void *data, IteratorOfSingleLinkList);

IteratorOfSingleLinkList findInSingleLinkList(LPSingleLinkList pList, const void *data);
IteratorOfSingleLinkList findIfInSingleLinkList(LPSingleLinkList pList, Pred pred);

bool removeInSingleLinkList(LPSingleLinkList pList, const void *data);
bool removeIfInSingleLinkList(LPSingleLinkList pList, Pred);

bool eraseFromSingleLinkList(LPSingleLinkList pList, IteratorOfSingleLinkList iter);


bool isSingleLinkListEmpty(const LPSingleLinkList);

void sortSingleLinkList(LPSingleLinkList);
void traverseSingleLinkList(LPSingleLinkList, Visitor);


void reverseSingleLinkList(LPSingleLinkList);

#endif


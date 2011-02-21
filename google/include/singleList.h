#ifndef _SINGLE_LIST_H
#define _SINGLE_LIST_H
#include "common.h"

typedef BOOL (*COMPARE_FUNC)(void *pFirst, void *pSecond);
typedef void (*VISIT_FUNC)(void *pData);

typedef struct _SINGLE_LIST
{
	char * pData;
	struct _SINGLE_LIST *pNext;
}SINGLE_LIST_NODE, *LP_SINGLE_LIST_NODE;

STATUS createSingleList(LP_SINGLE_LIST_NODE *ppListHead, unsigned int elementSize);
void destroySingleList(LP_SINGLE_LIST_NODE pListHead);

STATUS insertToHead(LP_SINGLE_LIST_NODE pListHead, void * pData);
STATUS insertToTail(LP_SINGLE_LIST_NODE pListHead, void * pData);
STATUS insertToList(LP_SINGLE_LIST_NODE pListHead, void * pData, LP_SINGLE_LIST_NODE pInsertPos, BOOL bIsBefore);


BOOL findItemInList(const LP_SINGLE_LIST_NODE pListHead, void *pKeyData, void *pGetData, COMPARE_FUNC pFunc);
void deleteItemFromList(LP_SINGLE_LIST_NODE pListHead, void *pKeyData, COMPARE_FUNC pFunc);

void listTraverse(LP_SINGLE_LIST_NODE pListHead, VISIT_FUNC visit);
#endif





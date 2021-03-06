
#include "list.h"
#include <stdio.h>

static int counter = 0;
static void printInt(void *val)
{
  printf("%5d", *(int *)val);
  ++counter;
  if (!(counter%4))
    putchar('\n');
}

static bool less(void *lhs, void *rhs)
{
  int op0 = *(int *)lhs;
  int op1 = *(int *)rhs;
  return op0 < op1;
}


static bool equal(void *lhs, void *rhs)
{
  int op0 = *(int *)lhs;
  int op1 = *(int *)rhs;
  return op0 == op1;
}


static void findModN(void *val)
{
  const int n = 3;
  int temp = *(int *)val;
  if (!(temp%3)){
    printf("Find %d is Mod %d\n", temp, n);

  }
}
static bool isModN(void *val)
{
  const int n = 3;
  int temp = *(int *)val;
  return (temp%3) == 0;
}

int main()
{
  FILE *fp;
  char buf[4096];

  LPList pList = NULL;
  int data;

  if ((fp = fopen("in.txt","r")) == NULL) {
    printf("Can't open input file\n");
    return -1;
  }

  if (!initList(&pList, sizeof(int), printInt, equal, less)){
    printf("Failed to create List\n");
    return -1;
  }
  
  while (fscanf(fp, "%d", &data) != EOF)
    {
      insertToListHead(pList,&data);
    }

  printList(pList);
  
  sortList(pList);

  printf("After Sorted:\n");
  printList(pList);

  visitList(pList, findModN);
  deleteIfInList(pList, isModN);
  printf("After remove ModN\n");
  printList(pList);
  destroyList(&pList);

  fclose(fp);
  return 0;
}

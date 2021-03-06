#include "../include/common.h"
#undef MAX
#define MAX 10
#define KEY_NUM 3

typedef struct _NODE
{
  int value;
  int next;
}NODE, *LP_NODE;

#define INIT 20
#define INCRE 20
int hint[MAX][2];
void distribute(LP_NODE pHead, int numOfData, int keyIndex);
void collect(LP_NODE pHead);
int main()
{
  FILE *fp;
  char buf[4096];
  int weight[4096];
  int index, curIndex;
  int numOfData;
  int maxElement;
  NODE *pHead;
  int i, p;
  int j;
 

  if ((fp = fopen("input/radixSort.txt", "r")) == NULL)
    {
      printf ("Cannot Open File radixSort.txt\n");
      exit(-1);
    }

  numOfData = 0;
  pHead = (LP_NODE)malloc(sizeof(NODE)*INIT);
  if (NULL == pHead)
    {
      fclose(fp);
      exit(OVERFLOW);
    }
  maxElement = INIT-1;

  while (fgets(buf, 4095, fp))
    {
      index = 0;
      curIndex = 0;

      while (buf[curIndex] == '\t' || buf[curIndex] == ' ')
	curIndex++;

      while (sscanf(buf+curIndex, "%d", &weight[index]))
	{
	  index++;
	  while (isdigit(buf[curIndex]))
	    curIndex++;
	  while (buf[curIndex] == '\t' || buf[curIndex] == ' ')
	    curIndex++;
	  if (buf[curIndex] == '\n')
	    break;
	}
      if (index > maxElement - numOfData)
	{
	  pHead = realloc(pHead, sizeof(int) * (maxElement + 1 + INCRE));
	  maxElement += INCRE;
	  if (pHead == NULL)
	    {
	      fclose(fp);
	      printf ("Out Of Memory in Line %d, File %s", __LINE__, __FILE__);
	      exit(OVERFLOW);
	    }
	}
      i = 0;
      while (i < index)
	{
	  (pHead + numOfData + 1)->value = weight[i];
	  i++;
	  numOfData++;
	}
    }

  i = 0;
  while (i <= numOfData)
    {
      (pHead + i)->next = i+1;
      if(i && (pHead+i)->value >= 1000)
	{
	  printf("KEY NUM is too big\n");
	  exit(-1);
	}
      i++;
    }
  (pHead + numOfData)->next = 0;

  for (i = 1; i <= KEY_NUM; i++)
    {
      memset(hint, 0, sizeof(hint));
      distribute(pHead, numOfData, i);
      printf("\nDistribute:");
      for (j = 0; j < MAX; j++)
	printf("%d[%d,%d]", j, hint[j][0],hint[j][1]);

      collect(pHead);
    }

  printf("\nResult:\n");
  printf("Header:[%d] ** ", pHead->next);
  for (i = 1; i <= numOfData; i++)
    {
      printf("a[%d]%d(%d)  ", i, (pHead + i)->value, (pHead+i)->next);
      if (i && i%10 == 0 )
	putchar('\n');
    }
  putchar('\n');
  printf ("rearrange:\n");

  p = pHead->next;
  i = 1;
  while (i < numOfData)
    {
      while (p < i)
	{
	  p = (pHead+p)->next;
	}
	    

	  if (p > i)
	    {
	      NODE tempNode;			
	      int temp;
	      tempNode = *(pHead+i);
	      *(pHead+i) = *(pHead+p);
	      *(pHead+p) = tempNode;
	      temp = (pHead+i)->next;
	      (pHead+i)->next = p;
	      p = temp;
	    }
	  else
	    p = (pHead+p)->next;
      i++;
    }

  for (i = 1; i <= numOfData; i++)
    {
      printf("%5d", (pHead + i)->value);
      if (i && i%10 == 0 )
	putchar('\n');
    }

  fclose(fp);
  free(pHead);

}

int getKey(int value, int keyIndex)
{
  int temp = value;
  while (keyIndex-- > 1)
    temp /= 10;
  return temp%10;
}

void distribute(LP_NODE pHead, int numOfData, int keyIndex)
{
  int i;
  int cur;
  for (i = pHead->next; i != 0; i = (pHead+i)->next)
    {
      cur = getKey((pHead+i)->value, keyIndex);
      if (hint[cur][0] == 0)
	{
	  hint[cur][0] = i;
	  hint[cur][1] = i;
	}
      else
	{
	  (pHead+hint[cur][1])->next = i;
	  hint[cur][1] = i;
	}
    }
}
void collect(LP_NODE pHead)
{
  int i = 0;
  int prev;

  prev = 0;
  while (i < MAX)
    {
      while (i < MAX && hint[i][0] == 0)
	i++;
      if (i >= MAX)
	break;
      (pHead+prev)->next = hint[i][0];
      prev = hint[i][1];
      i++;
    }
  (pHead+prev)->next = 0;
}

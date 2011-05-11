/*
Problem Statement for FlowerGarden

 

 

                        Problem Statement

                            You are planting a flower garden with bulbs to give

                        you joyous flowers throughout the year. However, you

                        wish to plant the flowers such that they do not block

                        other flowers while they are visible.

                        You will be given a int[] height, a int[] bloom, and a

                        int[] wilt. Each type of flower is represented by the

                        element at the same index of height, bloom, and wilt.

                        height represents how high each type of flower grows,

                        bloom represents the morning that each type of flower

                        springs from the ground, and wilt represents the evening

                        that each type of flower shrivels up and dies. Each

                        element in bloom and wilt will be a number between 1 and

                        365 inclusive, and wilt[i] will always be greater than

                        bloom[i]. You must plant all of the flowers of the same

                        type in a single row for appearance, and you also want

                        to have the tallest flowers as far forward as possible.

                        However, if a flower type is taller than another type,

                        and both types can be out of the ground at the same

                        time, the shorter flower must be planted in front of the

                        taller flower to prevent blocking. A flower blooms in

                        the morning, and wilts in the evening, so even if one

                        flower is blooming on the same day another flower is

                        wilting, one can block the other.

                        You should return a int[] which contains the elements of

                        height in the order you should plant your flowers to

                        acheive the above goals. The front of the garden is

                        represented by the first element in your return value,

                        and is where you view the garden from. The elements of

                        height will all be unique, so there will always be a

                        well-defined ordering.

                        

                        Definition

                            Class:FlowerGarden

                              Method:getOrdering

                              Parameters:int[], int[], int[]

                              Returns:int[]

                              Method signature:int[] getOrdering(int[] height,

                              int[] bloom, int[] wilt)

                              (be sure your method is public)

 

                           

 

                        

                        Constraints

                        -height will have between 2 and 50 elements, inclusive.

                        -bloom will have the same number of elements as height

                        -wilt will have the same number of elements as height

                        -height will have no repeated elements.

                        -Each element of height will be between 1 and 1000,

                        inclusive.

                        -Each element of bloom will be between 1 and 365,

                        inclusive.

                        -Each element of wilt will be between 1 and 365,

                        inclusive.

                        -For each element i of bloom and wilt, wilt[i] will be

                        greater than bloom[i].

                         

                        Examples

                        0)

                            {5,4,3,2,1}

			    {1,1,1,1,1}

			    {365,365,365,365,365}

 

			    Returns: { 1,  2,  3,  4,  5 }

                                These flowers all bloom on January 1st and wilt

                                on December 31st. Since they all may block each

                                other, you must order them from shortest to

                                tallest.

 

 

                        1)

                            {5,4,3,2,1}

			    {1,5,10,15,20}

			    {4,9,14,19,24}

 

			    Returns: { 5,  4,  3,  2,  1 }

                                The same set of flowers now bloom all at

                                separate times. Since they will never block each

                                other, you can order them from tallest to

                                shortest to get the tallest ones as far forward

                                as possible.

 

 

                        2)

                            {5,4,3,2,1}

			    {1,5,10,15,20}

			    {5,10,15,20,25}

 

			    Returns: { 1,  2,  3,  4,  5 }

                                Although each flower only blocks at most one

                                other, they all must be ordered from shortest to

                                tallest to prevent any blocking from occurring.

 

 

                        3)

                            {5,4,3,2,1}

			    {1,5,10,15,20}

			    {5,10,14,20,25}

 

			    Returns: { 3,  4,  5,  1,  2 }

                                The difference here is that the third type of

                                flower wilts one day earlier than the blooming

                                of the fourth flower. Therefore, we can put the

                                flowers of height 3 first, then the flowers of

                                height 4, then height 5, and finally the flowers

                                of height 1 and 2. Note that we could have also

                                ordered them with height 1 first, but this does

                                not result in the maximum possible height being

                                first in the garden.

 

 

                        4)

                            {1,2,3,4,5,6}

			    {1,3,1,3,1,3}

			    {2,4,2,4,2,4}

 

			    Returns: { 2,  4,  6,  1,  3,  5 }

 

 

                        5)

                            {3,2,5,4}

			    {1,2,11,10}

			    {4,3,12,13}

 

			    Returns: { 4,  5,  2,  3 }
*/


#include "../../../include/common.h"

void getOrder(const int h[], 
	      const int b[], 
	      const int w[], 
	      int order[],
	      const int n);
int main()
{

   int height[] =  {1,2,3,4,5,6};
  int bloom[] =  {1,3,1,3,1,3};
  int wilt[] = {2,4,2,4,2,4} ;
  //int height[]={5,4,3,2,1};
  //int bloom[]={1,5,10,15,20};
  //int wilt[]=  {4,9,14,19,24};//{5,10,14,20,25};//{5,10,15,20,25};
  int order[20];

  getOrder(height, bloom, wilt, order, sizeof(height)/sizeof(height[0]));


  return 0;
}

int overlap(const int b[], const int w[], const int i, const int j)
{
  if (b[i] >= b[j]
      && b[i] <= w[j])
    return 1;
  if (b[j] >= b[i]
      && b[j] <= w[i])
    return 1;

  return 0;
}

void getOrder(const int h[], 
	      const int b[], 
	      const int w[], 
	      int order[],
	      const int n)
{
  int i, j, k, m;

  order[0] = 0;
  for (i = 1; i < n; i++)
    {
      for (j = i-1; j >=0; j--)
	{
	  if (overlap(b,w, order[j], i) 
	      && h[i] > h[order[j]])
	    break;
	}
      
      for (k = j+1; k < i; k++)
	{
	  if (overlap(b,w, order[k],i)
	      && h[order[k]] > h[i])
	    break;
	}
      
      for (m = k-1; m > j; m--)
	{
	  if (h[order[m]] > h[i])
	    break;
	}

      j = m;
      for(k = i-1; k > j; k--)
	order[k+1] = order[k];
      order[j+1] = i;
    }

  printf("\nOrder:");
  for (i = 0; i < n; i++)
    printf("%5d", h[order[i]]);
  putchar('\n');

}


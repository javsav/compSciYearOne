// This program asks the user to enter a number, then it doubles it. The bug
// in the original version was the lack of the ampersand (&) next to the x
// variable, which is required as a pointer to the memory location where the
// integer should be stored. This is not required for character arrays, because
// the name of the character array itself is a pointer to the first element of
// the array, which is the memory address of the first element.

// Include standard input & output library
#include <stdio.h>

// Declare main function.
int main(void) {
  // Initialise var x as an integer equal to zero.
  int x = 0;

  // Prompt user to enter a number to be multiplied by two.
  printf("enter a number and I'll double it: ");

  // Get [num] from user for variable x, provide memory address with ampersand.
  scanf("%d", &x);

  // Print statement 'twice [num] is [2*num], perform calculation 2*x within.
  printf("twice %d is %d\n", x, 2 * x);

  // Indicate successful execution and terminate.
  return 0;
}
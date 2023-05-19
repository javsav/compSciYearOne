/* This program receives an input of n numbers (specified by the user),
 * creates a dynamic array in the heap, with a memory size of n * an int size,
 * obtains user input and appends n numbers to a dynamic array, then counts the
 * number of odds and evens in the input array, assigns dynamic arrays for both
 * with the counts * int size, and finally, prints the odd numbers, a new line,
 * the even numbers, and a new line.*/

#include <stdio.h>   // For scanf and printf.
#include <stdlib.h>  // For malloc and free.

int main() {
  // Integers to determine number of total, even, and odd numbers.
  int numberOfNums = 0, oddCount = 0, evenCount = 0;

  // Int pointers to the three below arrays in the heap.
  int *numArray, *oddArray, *evenArray;

  // Explain program, and ask user how many values they would like to assess.
  printf(
      "This program will ask you for how many numbers you would like to "
      "input.\nIt will then ask you to enter each number.\nFollowing the "
      "final number entered, it will print the odd numbers on one line, "
      "followed by the even numbers on a line below.\n");
  printf("Please enter how many numbers you would like to input: ");

  // Obtain input of number of values to assess for divisibility by 2.
  int input = scanf("%d", &numberOfNums);

  // If scanf failed, print error msg and terminate.
  if (input != 1) {
    printf(
        "\n\nERROR: Invalid input (letter, or character). ABORTING "
        "PROGRAM.\n\n");
    return 1;  // Indicate unsuccessful execution and terminate.
  }

  if (numberOfNums < 1) {
    printf(
        "\n\nERROR: Number of values to be entered must be greater than zero. "
        "ABORTING PROGRAM.");
    return 1;  // Indicate unsuccessful execution and terminate.
  }
  // define numArray using int pointer,allocate memory for usr numberOfNums.
  numArray = (int *)malloc(numberOfNums * sizeof(int));

  // Check if malloc has properly allocated memory for numberOfNums in heap.
  if (numArray == NULL) {
    printf(
        "ERROR: Memory allocation failed! Please try running the program again "
        "and inputting a smaller number. ABORTING PROGRAM. \n");
    return 1;  // If NULL, indicate unsuccessful execution and terminate.
  }

  // Read in the required number of nums and append to numArray.
  for (int numIndex = 0; numIndex < numberOfNums; numIndex++) {
    printf("Please enter number %d: ", numIndex + 1);
    int input = scanf("%d", &numArray[numIndex]);
    // If scanf failed, print error msg and terminate.
    if (input != 1) {
      printf(
          "\n\nERROR: Invalid input. (Letter or excessively large number). "
          "ABORTING PROGRAM.\n\n");
      return 1;  // Indicate unsuccessful execution and terminate.
    }
  }
  // Count number of even & odd numbers to determine amount of memory needed.
  for (int count = 0; count < numberOfNums; count++) {
    if (numArray[count] % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }
  }

  // Assign required memory to even and odd arrays on the heap using malloc.
  evenArray = (int *)malloc(evenCount * sizeof(int));
  oddArray = (int *)malloc(oddCount * sizeof(int));

  // Int even used to assign evenArray its own index
  int even = 0;
  // Iterate through numArray, and assign even and odd numbers to their arrays.
  for (int count = 0; count < numberOfNums; count++) {
    if (numArray[count] % 2 == 0) {
      evenArray[even] = numArray[count];
      // Increment even index
      even++;
    }
  }
  // Int odd used to assign evenArray its own index
  int odd = 0;
  for (int count = 0; count < numberOfNums; count++) {
    if (numArray[count] % 2 != 0) {
      oddArray[odd] = numArray[count];
      // Increment odd index
      odd++;
    }
  }
  // Free memory allocated to numArray
  free(numArray);

  // Print odd numbers
  for (int count = 0; count < oddCount; count++) {
    printf("%d ", (oddArray[count]));
  }

  printf("\n");

  // Print even numbers on a new line
  for (int count = 0; count < evenCount; count++) {
    printf("%d ", evenArray[count]);
  }
  // Free memory allocated to evenArray & oddArray
  free(evenArray);
  free(oddArray);

  printf("\n");  // Print new line at the end of output
  return 0;      // Indicate successful execution and terminate
}

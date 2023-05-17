/* This program receives an input of n temperatures (specified by the user),
 * obtains each of the n temperatures as floats, and creates a dynamic array in
 * the heap, with a memory size of n * the size of a float. It then appends
 * these characters to an array, and uses a for loop to iterate from the final
 * element of the array (n - 1th element) to the 0th element, and prints each
 * temperature in the reverse order that they were entered, with 1 number after
 * the decimal place. */

#include <stdio.h>   // For scanf and printf
#include <stdlib.h>  // For malloc and free

int main() {
  // numberOfTemps var determines num temps to input & memory allocation size.
  int numberOfTemps = 0;
  // Float pointer to tempArray.
  float *tempArray;

  // Ask the user for the number of temperatures
  printf("Please enter the number of temperatures that you wish to input: ");
  scanf("%d", &numberOfTemps);

  // Define tempArray using float pointer,allocate memory for usr numberOfTemps.
  tempArray = (float *)malloc(numberOfTemps * sizeof(float));

  // Check if malloc has properly allocated memory for numberofTemps in heap.
  if (tempArray == NULL) {
    printf(
        "ERROR: Memory allocation failed! Please try running the program again "
        "and inputting a smaller number. \n");
    return 1;  // If NULL, indicate unsuccessful execution and terminate.
  }

  /* Read in temps up to numberofTemps and append each to the numberofTempsth
   * index of tempArray */
  for (int tempIndex = 0; tempIndex < numberOfTemps; tempIndex++) {
    printf("Enter temperature %d (degrees Celsius): ", tempIndex + 1);
    scanf("%f", &tempArray[tempIndex]);
  }
  // Print below msg
  printf("\nYou entered the following temperatures:\n");

  // Iterate through tempArray from the final index to the 0th index, step -1.
  for (int tempIndex = numberOfTemps - 1; tempIndex > -1; tempIndex--) {
    // Print each temperature with one decimal place in reverse order.
    printf("%.1f ", tempArray[tempIndex]);
  }
  printf("\n");

  // Free memory allocated by malloc to tempArray
  free(tempArray);

  return 0;  // Indicate successful execution and terminate.
}

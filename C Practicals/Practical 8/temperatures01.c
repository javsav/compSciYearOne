/* This program receives an input of n temperatures (specified by the user),
 * obtains each of the n temperatures as floats, and creates a dynamic array in
 * the heap, with a memory size of n * the size of a float. It then appends
 * these characters to an array, and uses a for loop to iterate from the final
 * element of the array (n - 1th element) to the 0th element, and prints each
 * temperature in the reverse order that they were entered, with 1 number after
 * the decimal place. */

#include <float.h>   // For max float size
#include <limits.h>  // For max int size
#include <stdio.h>   // For scanf and printf
#include <stdlib.h>  // For malloc and free

int main() {
  // numberOfTemps var determines num temps to input & memory allocation size.
  long int numberOfTemps = 0;  // Long int to deter memory allocation overflow.

  // Double pointer to first element of tempArray.
  double *tempArray;

  // Define absolute zero and tempInput variables.
  float absZero = -273.15, tempInput = 0;

  // Explain program, ask user how many values they would like to input.
  printf(
      "This program will ask you for how many temperatures you would like to "
      "input.\nIt will then ask you to enter each temperature.\nFollowing the"
      " final temperature entered, it will print temperatures back to you in "
      "reverse.\n");

  printf(
      "Please enter the number of temperatures that you wish to input.\nThe "
      "acceptable range is between 1 and %d inclusive: ",
      INT_MAX - 1);

  // Obtain user input and assign input to numberOfTemps for error checking.
  int input = scanf("%ld", &numberOfTemps);

  // If non integer input, print error msg and terminate.
  if (input != 1) {
    printf(
        "\n\nERROR: Invalid input: letter or character. Please enter a valid "
        "number. ABORTING PROGRAM.\n\n");
    return 1;  // Indicate unsuccessful execution and terminate.
  }

  // If user enters 0 or negative number, disp error msg and terminate.
  if (numberOfTemps < 1) {
    printf(
        "\n\nERROR: Number of temperatures must be greater than "
        "zero. ABORTING PROGRAM.\n");
    return 1;  // Indicate unsuccessful execution and terminate.
  }

  // If user enters number greater than INT_MAX, disp error msg and terminate.
  if (numberOfTemps >= INT_MAX) {  // Deters memory allocation overflow.
    printf(
        "\n\nERROR: Number of temperatures must be less than %d, the maximum "
        "integer size on your system. ABORTING PROGRAM.\n",
        (INT_MAX - 1));
    return 1;  // Indicate unsuccessful execution and terminate.
  }

  // Allocate numberOfTemps * float bytes of memory in heap, assign to tempArray
  tempArray = (double *)malloc(numberOfTemps * sizeof(double));

  // Check if malloc has properly allocated memory for numberofTemps in heap.
  if (tempArray == NULL) {
    printf(
        "\n\nERROR: Memory allocation failed! Please try running the program "
        "again and inputting a smaller number. ABORTING PROGRAM.\n");
    return 1;  // If NULL, indicate unsuccessful execution and terminate.
  }

  // Print instructions for input and min/max temperatures.
  printf(
      "\n\nPlease enter %ld temperatures, one at a time, pressing enter after "
      "each temperature.\nThe acceptable range for temperatures is:\nGreater "
      "than or equal to %.2f, and less than %.0f degrees Celsius.\n",
      numberOfTemps, absZero, FLT_MAX);

  // Read numberofTemps temperatures, append to tempIndexth index of tempArray.
  for (int tempIndex = 0; tempIndex < numberOfTemps; tempIndex++) {
    printf("Enter temperature %d (degrees Celsius): ", tempIndex + 1);
    int input = scanf("%f", &tempInput);

    // If scanf fails, print error msg and terminate.
    if (input != 1) {
      printf(
          "\n\nERROR: Invalid input: letter or character. ABORTING "
          "PROGRAM.\n\n");
      return 1;  // Indicate unsuccessful execution and terminate.
    }

    // Check for input temperatures less than absolute zero.
    if (tempInput < absZero) {
      printf(
          "\n\nERROR: Temperature entered was less than %.2f. ABORTING "
          "PROGRAM.\n",
          absZero);
      return 1;  // Indicate unsuccessful execution and terminate.
    }

    // Check for input temperatures greater than max float value.
    if (tempInput >= FLT_MAX) {
      printf(
          "\n\nERROR: Temperature entered was greater than %.0f. ABORTING "
          "PROGRAM.\n",
          (FLT_MAX));
      return 1;  // Indicate unsuccessful execution and terminate.
    }
    // Append tempInput to tempArray.
    tempArray[tempIndex] = tempInput;
  }

  // Print description before listing temperatures in reverse order.
  printf("\nYou entered the following temperatures (degrees Celsius): \n");

  // Iterate through tempArray from the final index to the 0th index, step -1.
  for (int tempIndex = numberOfTemps - 1; tempIndex > -1; tempIndex--) {
    // Print each temperature with one decimal place in reverse order.
    printf("%.1f ", tempArray[tempIndex]);
  }
  printf("\n");  // New line.

  // Free memory allocated by malloc to tempArray
  free(tempArray);

  return 0;  // Indicate successful execution and terminate.
}

/* This program receives an input of temperatures from a user as floats, and
 * stores them in a dynamic array in the heap, with an initial memory size of
 * five floats worth of data. The first time that more than five floats are
 * entered, it creates a newTempArray with double the data capacity of the
 * previous tempArray, and copies the previous tempArray to it, freeing up the
 * memory of the old temp array. Then the newTempArray is renamed to tempArray.
 * This behaviour continues ad infinitum, until the user enters -100 to
 * terminate temperature entries, effectively meaning that the array is fully
 * dynamic. Finally, a for loop is used to iterate from the final element of the
 * array (numTemps - 1th element) to the 0th element, and prints each
 * temperature in the reverse order that they were entered, with 1 number after
 *  the decimal place. */

#include <stdio.h>   // For scanf and printf
#include <stdlib.h>  // For malloc and free
#include <string.h>  // For memcpy

int main() {
  float *tempArray;   // Pointer to tempArray
  int arraySize = 5;  // Initial arraySize
  float temp = 0;     // Initialise temp variable
  // Defining dynamic array with 5 integers worth of data assigned in the heap.
  tempArray = (float *)malloc(arraySize * sizeof(float));

  // Ensure enough memory exists to allocate dynamic array
  if (tempArray == NULL) {
    printf(
        "ERROR: Memory allocation failed. Try inputting a smaller number. "
        "ABORTING PROGRAM.\n");
    return 1;  // If failed indicate unsuccessful execution and terminate.
  }

  // Value that counts the number of temperatures entered
  int numTemps = 0;

  // Value to increase readability of inf while loop.
  int tempsBeingEntered = 1;
  printf(
      "This program will ask you to enter a series of temperatures.\nOnce you"
      " have finished entering those temperatures, please enter -100 as the "
      "final temperature to end input.\n-100 will not be considered a "
      "temperature, and only serves to terminate the input.\n");

  while (tempsBeingEntered) {
    printf("Enter temperature %d (degrees Celsius): ", numTemps + 1);
    // Error checking for invalid scanf inputs
    int input = scanf("%f", &temp);

    // If scanf failed, print error msg and terminate.
    if (input != 1) {
      printf(
          "\n\nERROR: Invalid input: letter, character, or excessively large "
          "number. ABORTING PROGRAM.\n\n");
      return 1;  // Indicate unsuccessful execution and terminate.
    }

    // End temperature input when user enters -100.
    if (temp == -100) {
      break;
    }

    // Append temp to tempArray
    tempArray[numTemps] = temp;

    // Increment numTemps each time a valid temperature is entered.
    numTemps++;

    // When the number of temperatures entered equals the array size, double it.
    if (numTemps == arraySize) {
      arraySize *= 2;

      // Create newTempArray with the new doubled array size.
      float *newTempArray = (float *)malloc(arraySize * sizeof(float));
      // Check if the memory allocation fails and:
      if (newTempArray == NULL) {
        printf("Memory allocation failed.\n");
        return -1;  // If failed indicate unsuccessful execution and terminate.
      }
      // Use memcpy to copy numTemps elements of tempArray to newTempArray
      memcpy(newTempArray, tempArray, numTemps * sizeof(float));
      // Free memory allocated to tempArray to prevent memory leaks in loop.
      free(tempArray);
      // Reset tempArray to newTempArray for next iteration of loop
      tempArray = newTempArray;
    }
  }
  // Print below msg
  printf("\nYou entered the following temperatures (degrees Celsius): \n");

  /* Print the temps in reverse order using a for loop, starting at the numTemps
  -1th index, ending at the 0th index, and iterating by -1 indexes each loop */
  for (int tempIndex = numTemps - 1; tempIndex > -1; tempIndex--) {
    printf("%.1f ", tempArray[tempIndex]);
  }
  printf("\n");  // New line.
  // Free memory from tempArray before finishing the program.
  free(tempArray);
  return 0;  // Indicate successful execution and terminate.
}

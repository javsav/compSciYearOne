/* This program receives an input of temperatures from a user as floats, and
 * stores them in a dynamic array in the heap, with an initial memory size of
 * five floats worth of data. The first time that more than five floats are
 * entered, it allocates a pointer to new tempArray with double the data
 * capacity of the previous tempArray, and copies the previous tempArray to it,
 * freeing up the memory allocated to tempArray. Then the pointer to
 * newTempArray is reassigned to tempArray, allowing for the next iteration.
 * This behaviour continues ad infinitum, until the user enters -100 to
 * terminate temperature entries, effectively meaning that the array is fully
 * dynamic. Finally, a for loop is used to iterate from the final element of the
 * array (numTemps - 1th element) to the 0th element, and prints each
 * temperature in the reverse order that they were entered, with 1 number after
 *  the decimal place. The minimum temperature is absolute zero, and the maximum
 * temperature is more than ten times that of the hottest star known. */

#include <stdio.h>   // For scanf and printf
#include <stdlib.h>  // For malloc and free
#include <string.h>  // For memcpy

int main() {
  float *tempArray;                            // Pointer to tempArray
  int arraySize = 5;                           // Initial arraySize
  float minTemp = -273.15, maxTemp = 3000000;  // Min & max temperature values.

  // Initialise temp variable for temperature inputs
  float temp = 0;

  // Allocate 5 floats worth of data in the heap & assign to tempArray pointer.
  tempArray = (float *)malloc(arraySize * sizeof(float));

  // Ensure initial memory allocation for tempArray pointer is successful.
  if (tempArray == NULL) {
    printf(
        "ERROR: Memory allocation for tempArray failed. ABORTING PROGRAM.\n");
    return 1;  // If failed indicate unsuccessful execution and terminate.
  }

  // Value that counts the number of temperatures entered & is an array index.
  int numOfTemps = 0;

  // Value to increase readability of inf while loop.
  int tempsBeingEntered = 1;
  printf(
      "This program will ask you to enter a series of temperatures.\nOnce you"
      " have finished entering those temperatures, please enter -100 as the "
      "final temperature to end input.\n-100 will not be considered a "
      "temperature, and only serves to terminate the input.\n After "
      "termination of input, the program will read back the temperatures in "
      "reverse order.\nThe acceptable temperature range is -273.15 to "
      "3,000,000 degrees Celsius.\n\n");

  while (tempsBeingEntered) {
    printf("Enter temperature %d (degrees Celsius): ", numOfTemps + 1);
    // Obtain input and assign int input for error checking
    int input = scanf("%f", &temp);

    // If input is non-numeric, print error message and terminate program.
    if (input != 1) {
      printf(
          "\n\nERROR: Invalid input: letter or character. ABORTING "
          "PROGRAM.\n\n");
      return 1;  // Indicate unsuccessful execution and terminate.
    }

    if (temp < minTemp || temp > maxTemp) {
      printf(
          "\n\nERROR: Invalid input: temperature out of range. ABORTING "
          "PROGRAM.\n\n");
      return 1;  // Indicate unsuccessful execution and terminate.
    }

    // End temperature input when user enters -100.
    if (temp == -100) {
      break;
    }

    // Append temp to tempArray
    tempArray[numOfTemps] = temp;

    // Increment numOfTemps each time a valid temperature is entered.
    numOfTemps++;

    // When the number of temperatures entered equals the array size, double it.
    if (numOfTemps == arraySize) {
      arraySize *= 2;

      // Create newTempArray with the new doubled array size.
      float *newTempArray = (float *)malloc(arraySize * sizeof(float));
      // Check if the memory allocation fails and:
      if (newTempArray == NULL) {
        printf(
            "ERROR: Memory allocation failed. Maximum number of temperatures "
            "exceeded for your system ABORTING PROGRAM.\n");

        return -1;  // If failed indicate unsuccessful execution and terminate.
      }
      // Copy numOfTemps * sizeof(float) bytes from tempArray to newTempArray
      memcpy(newTempArray, tempArray, numOfTemps * sizeof(float));

      // Free memory allocated to tempArray to prevent memory leaks in loop.
      free(tempArray);

      // Assign newTempArray pointer to tempArray for next iteration.
      tempArray = newTempArray;
    }
  }
  printf("\nYou entered the following temperatures (degrees Celsius): \n");

  /* Print temps in reverse order using a for loop, starting at the numOfTemps
  -1th index, ending at the 0th index, and iterating by -1 indexes each loop */
  for (int tempIndex = numOfTemps - 1; tempIndex > -1; tempIndex--) {
    printf("%.1f ", tempArray[tempIndex]);
  }

  printf("\n");

  // Free memory allocated during final iteration of while-loop to tempArray.
  free(tempArray);

  return 0;  // Indicate successful execution and terminate.
}

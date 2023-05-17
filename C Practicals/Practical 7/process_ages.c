/* This program reads in an array of up to 10 integers representing peoples'
 * ages in years, and calculates and prints the maximum age, minimum age and the
 * mean age (with a scale of 1 digit after the decimal point). The program
 * stops reading when either the 10th number is entered or the user enters
 * -1. If the user enters any other negative number or a value above 150, they
 * are warned and prompted again for a valid age. */

#include <stdio.h>   // Standard input & output library for stdin and printf.
#include <stdlib.h>  // C Stanard library included for qsort function.

/* Define compare function: helper function for qsort() (implementation of
 * quicksort in C stdlib). It receives two void pointers, num1 and num2,
 * casts them to int pointers, and then dereferences them to retrieve the
 * int values that they point to in memory. The function then returns an int
 * value of 0, -1, or 1, depending on their relative values, to guide qsort() to
 * sort them in ascending order. */
int compare(const void* num1, const void* num2) {
  /* Cast void* num1 to int* pointer, and dereference to retrieve the int
   * value that it points to in memory. Do the same for num2 */
  int numA = *((int*)num1);
  int numB = *((int*)num2);

  // Compare numA and numB:
  // If both are equal, return 0, indicating no sorting preference.
  if (numA == numB) {
    return 0;

    // If numA is smaller than numB, return -1, to place numA before numB.
  } else if (numA < numB) {
    return -1;

    // Else, numA is larger than numB; return 1 to place numA after numB.
  } else {
    return 1;
  }
}

int main(void) {
  // Initialise int ageArray as zeros to OVR garbage data.
  int ageArray[10] = {0};

  // Initialise integers age & ageCount as 0.
  int age = 0, ageCount = 0;

  // Initialise float for average as 0.0 to have ages summed to.
  float average = 0.0;

  // Explain program and how to use it.
  printf(
      "This program will give you the minimum, maximum, and average values of "
      "a set of up to ten ages.\nThe acceptable age range is between 0 and 150 "
      "inclusive.\nIf you would like to enter less than ten ages, "
      "please enter -1 as the final age number you enter.\nThis value (-1) "
      "will not be included in the statistics; it indicates to the program that"
      " you have finished entering ages.\nThe maximum, minimum, and average "
      "of the ages you enter will be displayed on a new line separated by "
      "spaces.\n\n");

  /* While loop stops requesting ages after ten ages are entered, or when
   * broken by the if statement, allowing to users to enter less than ten ages.
   * The while loop allows reprompting if invalid ages are entered, or no ages
   * are entered, with the use of continue after the else if statement. */
  while (ageCount < 10) {
    // Prompt user to enter ages, correct for 0th indexing with ageCount + 1.
    printf("Please enter age number %d: ", ageCount + 1);

    // Obtain user input and assign to age variable.
    scanf("%d", &age);

    // Print new line between each age request.
    printf("\n");

    /* When user enters a -1, break from the while loop and do not append -1, or
     * increase ageCount variable. */
    if (age == -1) {
      break;

      // If invalid age is entered, display error message and:
    } else if (age < -1 || age > 150) {
      printf(
          "\nERROR: Invalid age entered (Age less than -1 or age greater "
          "than 150); Please re-enter age %d. Enter -1 to "
          "terminate age entry early.\n\n",
          ageCount + 1);

      // Restart current iteration of while loop.
      continue;

      // If no invalid age or -1 is entered:
    } else {
      // Assign each age to the ageCounth index of ageArray
      ageArray[ageCount] = age;
      ageCount++;  // Increment ageCount by one each iteration of while loop.
    }
  }

  /* If no ages are entered (-1 is entered as the first age), display error
   * message and terminate program. This can not happen with the way that the
   * script currently is, but if I were to use the script for something else or
   * change it, it is a good safeguard to have in place (defensive programming).
   */
  if (ageCount == 0) {
    printf(
        "ERROR: You did not enter any ages. Please enter up to ten ages, with "
        "-1 as the final age if you with to terminate your entry early. "
        "ABORTING PROGRAM.\n");

    // Indicate unssuccessful execution and terminate.
    return 1;
  }

  /* Sort aray using qsort - C implementation of quick sort. Takes 4 arguments:
   * 1: Pointer to 0th element of array (ageArray), 2: Number of elements in the
   * array (ageCount), 3: Size of each element in the array (sizeof(int)), 4:
   * Pointer to the compare function at the beginning of the script, compare(),
   * which returns < 0, == 0 or, > 0  if the first element to be compared is
   * less than, equal to, or larger than the second respectively. */
  qsort(ageArray, ageCount, sizeof(int), compare);

  /* Calculate average of ages: iterate over ageArray to sum ages in ageArray to
   * the average variable, then: */
  for (int ageIndex = 0; ageIndex < ageCount; ageIndex++) {
    average += ageArray[ageIndex];
  }

  // Divide average by the number of ages in ageArray (represented by ageCount)
  average /= ageCount;

  // Print max(ageCount -1 to account for 0th index), min, and average.
  printf("%d %d %.1f\n", ageArray[ageCount - 1], ageArray[0], average);

  return 0;  // Indicate successful execution and terminate.
}
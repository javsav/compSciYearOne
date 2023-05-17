/* This is a program which reads in a string of 20 characters or less from the
 * user into an array. The program then reverses that string and prints out the
 * reversed version followed by a newline. */

#include <math.h>   // Include math library for floor function when strLength/2.
#include <stdio.h>  // Standard input & output library for fgets & printf funcs.
#include <string.h>  // String library used for strlen & strcspn function.

int main() {
  /* Define char array usrString with 21 bytes to include null terminator,
   * overwrite garbage data with null terminators. */
  char usrString[21] = {0};

  // Explain program & prompt user to input a string of 20 characters or less.
  printf(
      "This program will reverse a string of 20 characters or less that you "
      "input, on a new line after you input your string.\nPlease enter a "
      "string that you would like to reverse of 20 or less characters, "
      "including spaces, numbers, and special characters: ");

  // Obtain string from user using fgets and assign to usrString char array.
  fgets(usrString, sizeof(usrString), stdin);

  // Check for empty input (0th index usrString is new line) and notify user.
  if (usrString[0] == '\n') {
    printf(
        "\nERROR: Invalid input. You did not input any data. ABORTING "
        "PROGRAM.\n");

    return 1;  // Indicate unsuccessful execution and terminate.
  }

  /* Find index of newline character (due to user pressing enter during stdin
   * of fgets function) in usrString char array using string span complement
   * function and replace with null terminator. */
  usrString[strcspn(usrString, "\n")] = '\0';

  // Reverse usrString:
  // Obtain length of string that user has input (minus new line).
  int strLength = strlen(usrString);

  // Iterate through first half of string (floor for odd numbers).
  for (int strIndex = 0; strIndex < floor((strLength / 2)); strIndex++) {
    // Save current iterated character in tempCharacter variable.
    char tempCharacter = usrString[strIndex];

    /* Replace current iterated character with character from end of string
     * - e.g. for the 0th character in a 5 character string, it is replaced with
     * the 5th - 0 - 1 = 4th index of strIndex (the fifth character of the
     * string). */
    usrString[strIndex] = usrString[strLength - strIndex - 1];

    /* Overwrite the character from the end of the string with the character
     * that it has replaced, stored in the tempCharacter variable. */
    usrString[strLength - strIndex - 1] = tempCharacter;

    /* This process repeats each iteration through the first half of the string
     * until the string is reversed. */
  }
  // Print reverse of originalString followed by a new line.
  printf("%s\n", usrString);
}
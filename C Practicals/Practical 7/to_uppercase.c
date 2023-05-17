/* This program reads a string of no more than 20 characters from the user. The
 * string represents a person's name, and can only comprise lower case letters
 * and commas (the commas are to separate names, and count as a character).
 * After reading the string, the program converts the string to all uppercase
 * letters and prints it, followed by a newline. Comma characters are left
 * unchanged. */
#include <ctype.h>   // Ctype library for toupper function.
#include <stdio.h>   // Standard input and output library for stdin and printf.
#include <string.h>  // String library for strlen and strcspn functions.

int main() {
  /* Initialise nameArray character array as 21 bytes - 20 characters plus 1
   * null terminator */
  char nameArray[21];

  // Prompt user for string entry in desired format.
  printf(
      "This program will convert lower case to upper case.\nThe maximum "
      "character limit including commas is 20.\nOnly lower case letters and "
      "commas are valid forms of input.\nNo spaces or special characters other "
      "than commas are allowed.\nEntries longer than 20 characters will be "
      "truncated.\nAn example of a correct format is as follows: 'joe,bloggs'"
      " .\nPlease enter your first name and last name, separated by a comma, "
      "all in lowercase as per the example: ");

  // Obtain character input and append to nameArray (including new line).
  fgets(nameArray, sizeof(nameArray), stdin);

  // Check for empty input (0th index nameArray is new line) and notify user.
  if (nameArray[0] == '\n') {
    printf(
        "\nERROR: Invalid input. You did not input any data. ABORTING "
        "PROGRAM.\n");

    return 1;  // Indicate unsuccessful execution and terminate.
  }

  // Use strcspn to detect spaces in input, print error message and abort.
  if (nameArray[strcspn(nameArray, " ")]) {
    printf("\nERROR: Invalid input. A space was detected. ABORTING PROGRAM.\n");
    return 1;  // Indicate unsuccsessful execution and terminate program.

    // Else use strcspn to detect special character\num other than a comma, and:
  } else if (nameArray[strcspn(nameArray, "!")] ||
             nameArray[strcspn(nameArray, "@")] ||
             nameArray[strcspn(nameArray, "#")] ||
             nameArray[strcspn(nameArray, "$")] ||
             nameArray[strcspn(nameArray, "%")] ||
             nameArray[strcspn(nameArray, "^")] ||
             nameArray[strcspn(nameArray, "&")] ||
             nameArray[strcspn(nameArray, "*")] ||
             nameArray[strcspn(nameArray, "(")] ||
             nameArray[strcspn(nameArray, ")")] ||
             nameArray[strcspn(nameArray, "-")] ||
             nameArray[strcspn(nameArray, "_")] ||
             nameArray[strcspn(nameArray, "+")] ||
             nameArray[strcspn(nameArray, "=")] ||
             nameArray[strcspn(nameArray, "~")] ||
             nameArray[strcspn(nameArray, "\"")] ||
             nameArray[strcspn(nameArray, "[")] ||
             nameArray[strcspn(nameArray, "]")] ||
             nameArray[strcspn(nameArray, "{")] ||
             nameArray[strcspn(nameArray, "}")] ||
             nameArray[strcspn(nameArray, ".")] ||
             nameArray[strcspn(nameArray, "/")] ||
             nameArray[strcspn(nameArray, "\\")] ||
             nameArray[strcspn(nameArray, "<")] ||
             nameArray[strcspn(nameArray, ">")] ||
             nameArray[strcspn(nameArray, ":")] ||
             nameArray[strcspn(nameArray, ";")] ||
             nameArray[strcspn(nameArray, "'")] ||
             nameArray[strcspn(nameArray, "?")] ||
             nameArray[strcspn(nameArray, "`")] ||
             nameArray[strcspn(nameArray, "1")] ||
             nameArray[strcspn(nameArray, "2")] ||
             nameArray[strcspn(nameArray, "3")] ||
             nameArray[strcspn(nameArray, "4")] ||
             nameArray[strcspn(nameArray, "5")] ||
             nameArray[strcspn(nameArray, "6")] ||
             nameArray[strcspn(nameArray, "7")] ||
             nameArray[strcspn(nameArray, "8")] ||
             nameArray[strcspn(nameArray, "9")] ||
             nameArray[strcspn(nameArray, "0")]) {
    printf(
        "\nERROR: Invalid input. An invalid special character or number was "
        "detected. ABORTING PROGRAM.\n");  // Print error emssage

    return 1;  // Indicate unsuccsessful execution and terminate program.
  }

  /* Find index of newline character (due to user pressing enter during stdin
   * of fgets function) in nameArray using string span complement function and
   * replace with null terminator */
  nameArray[strcspn(nameArray, "\n")] = '\0';

  // Iterate through each character in nameArray
  for (int stringIndex = 0; stringIndex < strlen(nameArray); stringIndex++) {
    // If the stringIndexth character isn't a comma:
    if (nameArray[stringIndex] != ',') {
      // Use toupper function to convert non comma character to uppercase
      nameArray[stringIndex] = toupper(nameArray[stringIndex]);
    }
  }
  // Print nameArray with the original string converted to uppercase.
  printf("%s\n", nameArray);

  return 0;  // Indicate successful execution and terminate.
}
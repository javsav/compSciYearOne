// This program requests the user to input their first name, last name, age, and
// employment fraction (e.g. 0.5 = full-time, 1 = part-time). It then prints
// these values to the terminal in a format prescribed by the practical. I added
// defensive programming strategies to ensure that the correct format is entered
// in the form of a while loop.

#include <stdio.h>   // Include standard input & output library.
#include <string.h>  // Include string library for defensive programming(strlen)

int main(void) {  // Declare main function.
  // Define vars firstName,lastName as char arrays w max 11 bytes-10 char +
  // numll terminator ('\0') - indicates end of str in char array.
  char firstName[11], lastName[11];
  int age = 0;           // Define var age as int.
  float empFract = 0.1;  // Define var empFract as float.

  // Define char array inputArray, length 256 bytes to store user input w fgets
  char inputArray[256];  // Set bytes to 256 in case of large user input
  // Each char = one byte of memory - 10 bytes for firstName + 1 space, + 10
  // bytes for lastName + 1 space + 3 chars for age + 1 space + 4 chars for
  // float (X.XX) + 1 '\n' (when enter is pressed) + 1 null terminator ('\0').
  int numInputs = 0;  // Initialise int inputs for 'defensive programming'
  int conditionsNotMet = 1;  // Var to increase readability of inf while-loop

  while (conditionsNotMet) {  // Run loop until conditions met and breaks (l 51)

    printf(  // Prompt user to enter name, age and employment fraction.
        "\nEnter your first name (max 10 characters), surname (max 10 "
        "characters), age (max 140), and employment fraction (between 0 and "
        "1), separated by spaces.");

    // Give example of proper input method
    printf(
        "\nAn example of the correct format is as follows (and demonstrates "
        "the maximum number of permitted characters): Sunithanda Mohammamed "
        "100 0.55.\nPress enter after entering the four variables separated by "
        "spaces: ");

    // Obtain usr input w fgets (stdin) append it to inputArray as characters.
    fgets(inputArray, sizeof(inputArray), stdin);

    // sscanf parses chars in inputArray, vars separated by spaces (%s %s %d %f)
    //-firstName, lastName, age, empFract, and assigns these chars to respective
    // variables with respective types. numInputs var counts num of usr inputs.
    numInputs =
        sscanf(inputArray, "%s %s %d %f", firstName, lastName, &age, &empFract);

    // When below conditions are met, break while loop.
    if (numInputs == 4 && strlen(firstName) <= 10 && strlen(lastName) <= 10 &&
        age >= 0 && age <= 140 && empFract >= 0 && empFract <= 1) {
      break;

    } else {  // Else, loop print error msg then loop through prompts until met.
      printf(
          "\nERROR: Invalid input(s). Please ensure you read the required input"
          " format, number of inputs, and enter your details again.\n");
      printf("\nYou entered %d input(s).\n", numInputs);
    }
  }
  // Print values in desired format as specified by practical.
  printf(
      "\nYour name is %s %s, you are %i years old, and your employment "
      "fraction is %.1f.\n",
      firstName, lastName, age, empFract);

  return 0;  // Indicate successful execution and terminate.
}
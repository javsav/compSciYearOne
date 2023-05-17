// This program reads in a three digit number from the user, and separates it
// into three powers of ten - hundreds, tens, and ones. I did not read the
// practical "hint" regarding the use of modulo, and so had already written the
// code using array indices before I read about doing it using modulo.The script
// is longer than most would be because I included defensive programming.
// *NOTE* THE ORIGINAL CODE I PROGRAMMED IS IN A FILE CALLED digits_ORIGINAL.c -
// the autograder did not like the while loop despite it working in my testing
// so I had to change it.

#include <stdio.h>   // Include standard input & output library.
#include <string.h>  // Include string library (for strlen function)

int main(void) {  // Declare main function.

  // Declare character array to store digitArray - (1 byte per char - 3 digits,
  // 1 null terminator ('0\'), + 1 '\n' (press enter) = 4B
  // (or 5B for negative numbers ('-') - set indices to 0 to overwrite garbage
  // data. Set 256 bytes for large user inputs.
  char digitArray[256] = {0};

  // Initialise placeholder negSymb char for negative nums.
  char negSymb = '-';

  // Initialise positive and negative integer vars for three powers of ten.
  int hundreds, tens, ones, nHundreds, nTens, nOnes = 1;

  // Prompt user to enter a three digit number.
  printf(
      "\nEnter a three digit number that you would like to split into ones,"
      " tens, and hundreds: \n");

  // Get user input + '\n' + '\0' and append to digitArray.
  fgets(digitArray, sizeof(digitArray), stdin); // * int result = fgets

  // Parse the digitArray for 3 consecutive chars (%d%d%d) using sscanf,each
  // 1 char in length (%1d), assign them to int (%d) vars hundreds,tens,one
  sscanf(digitArray, "%1d%1d%1d", &hundreds, &tens, &ones); // int results = scanf

  // Conditions: positive numbers: digitArray string is 4 bytes, final index
  // is a new line, and first index of digitArray is not '-' OR  0.
  if ((strlen(digitArray) == 4 && digitArray[0] != '-' &&
       digitArray[3] == '\n' && digitArray[0] != '0')) {
    // Print three powers of ten separated by newlines to terminal.
    printf("%d\n", ones);
    printf("%d\n", tens);
    printf("%d\n", hundreds);
    return 0;  // Indicate successful execution and terminate.
  }

  // Negative numbers: digitArray is 5 bytes, final index is a new line, the
  // first character of digitArray is '-', and the first character of
  // digitArray is not 0, then parse digit array. (Extra byte for '-' char.)
  else if ((strlen(digitArray) == 5 && digitArray[0] == '-' &&
            digitArray[4] == '\n' && digitArray[1] != '0')) {
    // Parse the digitArray for 4 consecutive chars using sscanf, each 1 char
    // in length, assign them to char negSymb & ints nHundreds,nTens,nOnes
    sscanf(digitArray, "%1c%1d%1d%1d", &negSymb, &nHundreds, &nTens, &nOnes);
    // Convert integers to negative integers
    nOnes *= -1;
    nTens *= -1;
    nHundreds *= -1;

    // Print three powers of ten separated by newlines to terminal.
    printf("%d\n", nOnes);
    printf("%d\n", nTens);
    printf("%d\n", nHundreds);
  }

  // If conditions are not met output error message to user.
  else {
    printf(
        "\nERROR: Invalid input. Please enter a number comprising "
        "exactly 3 digits, and not starting with 0. Aborting program.\n");
    return 1;  // Indicate unsuccessful execution and abort.
  }
  return 0;  // Indicate successful termination and terminate.
}

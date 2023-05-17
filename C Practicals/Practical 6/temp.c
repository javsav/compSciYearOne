// This program receives an input of a temperature in degrees celsius and
// converts it to degrees farenheit for the user.

// Include standard input & output library
#include <stdio.h>

// Declare main function
int main(void) {
  // Define variables celsius, farenheit & numInputs as integers.
  int celsius, fahrenheit, numInputs = 0;
  // Define inputArray to allow for defensive programming with fgets & sscanf,
  // set inputArray size to 256 bytes to handle large user inputs.
  char inputArray[256] = {0};

  // While loop for defensive programming, preventing character inputs.
  while (numInputs != 1) {
    // Prompt user to enter value to convert from C to F degrees.
    printf(
        "\nEnter a temperature in degrees celsius that you wish "
        "to convert to degrees fahrenheit: ");

    // Obtain input of temperature in celsius and append to inputArray.
    fgets(inputArray, sizeof(inputArray), stdin);

    // Parse inputArray with sscanf for an integer and assign numInputs
    // variable to check if characters are entered, and return error message.
    int numInputs = sscanf(inputArray, "%d", &celsius);
    // Break while loop when an integer has been entered
    if (numInputs == 1) {
      break;
    }
    // If character is entered, print error and return to beginning of loop.
    else
      (printf("\nERROR: Please enter a number.\n"));
  }

  // Calculate conversion of var celsius to deg F & assign to var fahrenheit.
  fahrenheit = ((celsius * 9) / 5) + 32;

  // Print initial celsius temperature input and fahrenheit equivalent.
  printf("\n%d degrees Celsius is %d degrees Fahrenheit\n", celsius,
         fahrenheit);
  return 0;  // Indicate successful execution and terminate.
}
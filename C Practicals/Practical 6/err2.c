// This was a script that we had to debug. The initial script did not initialise
// the variable x as an integer (on line 9). Now that this has been debugged,
// the script asks the user for a number, then responds to the user that they
// entered that number.

#include <stdio.h>  // Include standard input & output library.

int main(void) {               // Declare main function
  int x;                       // Initialise integer x
  printf("enter a number: ");  // Prompt for user to enter number.
  scanf("%d", &x);             // Get input from user and assign to var x.
  // Print "you entered: " then the number that the user entered.
  printf("you entered: %d\n", x);
  return 0;  // Indicate successful execution & terminate.
}
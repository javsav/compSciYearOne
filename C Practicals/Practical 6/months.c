// This program takes receives an integer in the range from 1-12 from the user
// and then prints out the corresponding month to that integer.

// Include standard input & output C library.
#include <stdio.h>
// Define main function
int main(void) {
  // Initialise month variable as zero (over-write garbage data).
  int month = 0;
  // Enumerate constant int variables for the months for switch readability.
  enum {
    Jan = 1,
    Feb,
    Mar,
    Apr,
    May,
    Jun,
    Jul,
    Aug,
    Sep,
    Oct,
    Nov,
    Dec,
  };

  printf(
      "\nThis program will return the mohth of the year related to the number"
      " that you input. For example, entering 1 will return \"Jan\", 2 \"Feb\""
      ", etc.\nPlease enter a number between 1 and 12 inclusive: ");

  // Get user input
  scanf("%i", &month);

  // Conditional switch statements evaluate int month and print related month.
  switch (month) {
    case Jan:
      printf("Jan\n");
      break;

    case Feb:
      printf("Feb\n");
      break;

    case Mar:
      printf("Mar\n");
      break;

    case Apr:
      printf("Apr\n");
      break;

    case May:
      printf("May\n");
      break;

    case Jun:
      printf("Jun\n");
      break;

    case Jul:
      printf("Jul\n");
      break;

    case Aug:
      printf("Aug\n");
      break;

    case Sep:
      printf("Sep\n");
      break;

    case Oct:
      printf("Oct\n");
      break;

    case Nov:
      printf("Nov\n");
      break;

    default:
      printf("Dec\n");
  }
  // Indicate succesful execution and terminate.
  return 0;
}
// This program reads in a positive integer representing the number of years a
// person has spent in education so far, and prints out the level of educational
// attainment associated with that number of year's education. 0-7 years
// inclusive - Primary level education,  8-12 years inclusive - Secondary
// level education, 13+ years   - Tertiary level education. The program also
// calculates and prints the years remaining for primary level students until
// high-school, and the years remaining until high-school students finish their
// degrees. Additionally, for tertiary level educated students, the program
// states whether they may or may not have an honours, masters, or doctoral
// degree. If a negative number is entered, the program aborts (defensive prog.)

#include <stdio.h>  // Include standard input & output library.

int main(void) {  // Declare main function.
  // Define primEd, SecEd, and tertEd character vectors.
  char primEd[] = "Primary level education";
  char secEd[] = "Secondary level education";
  char tertEd[] = "Tertiary level education";
  // Define integer yearsEd var: no of years usr has spent in education as -1.
  // -1 is used as the default so that if a large number or char is entered, the
  // error message wil be displayed from the conditional statement assessing
  // whether the value of yearsEd is less than 0.
  int yearsEd = -1;
  // High school and university int vars are to incentivise students.
  int highSchool = 8;
  int university = 12;

  printf(  // Prompt to enter years spent in education so far.
      "\nThis program will determine your level of education.\n\nPlease enter "
      "the number of years that you have spent in education, up to this "
      "point: ");

  scanf("%i", &yearsEd);  // Obtain input for years spent in education.

  // Conditional statements to determine level of education.
  if (yearsEd < 0) {  // If negative/large number entered (defensive prog.):
    printf(
        "\nINVALID input (character, negative or large number). Aborting "
        "program.\n");
    return 0;  // Terminate program.

    // Conditional statement for primary education (0-7 years inclusive).
  } else if (yearsEd <= 7) {
    // Speific conditional statement for exacty 7 years
    if (yearsEd == 7) {
      printf(  // Primary level, one 'year' left til high-school.
          "\nYour level of education is currently classified as '%s.' Keep up "
          "the good work! Less than a year left until high-school!\n",
          primEd);
      return 0;  // Terminate program.
    }
    // For 0-6 yrs, print primary level, use plural 'years' left til high-school
    printf(
        "\nYour level of education is currently classified as '%s.' Keep up "
        "the good work! Only %i years left until high-school!\n",
        primEd, highSchool - yearsEd);

    // Else if educational years are between 8 and 12 inclusive: secondary
    // level:

  } else if (yearsEd <= 12 && yearsEd >= 8) {
    // If specifically 12 yearsEd, print one < 1 'year' until achieving diploma.
    if (yearsEd == 12) {
      printf(
          "\nYour level of education is currently classified as '%s.' If you "
          "wish, you could achieve your high-school diploma in less than a year"
          ", after which the world is your oyster!\n",
          secEd);
      return 0;  // Terminate program
    }

    // If 8-12, print secondary lvl and 'years' left until achieving diploma.
    printf(
        "\nYour level of education is currently classified as '%s.' If you "
        "wish, you could achieve your high-school diploma in %i years, after "
        "which the world is your oyster!\n",
        secEd, university - yearsEd);

    // Else if years are 13 or greater, tertiary level of education.
  } else if (yearsEd >= 13) {
    // If years >= 19, state may have honours, master's or doctorate.
    if (yearsEd >= 19) {
      printf(
          "\nYour level of education is classified as '%s.' Congratulations! "
          "You may even have an Honours, Master's, or Doctoral degree, and if "
          "not, you can always pursue one if you wish!\n",
          tertEd);
      return 0;  // Terminate program.
    }

    // If educational years are greater than or equal to 18, print tertiary
    // level and state mey have honours or master's.
    if (yearsEd >= 18) {
      printf(
          "\nYour level of education is classified as '%s.' Congratulations!"
          " You may even have an Honours or Master's degree, and if not, you"
          " can always pursue one if you wish!\n",
          tertEd);
      return 0;  // Terminate program.
    }

    if (yearsEd >= 16) {  // If yearsEd between 16-17, may have honours
      printf(
          "\nYour level of education is classified as '%s.'Congratulations! "
          "You may even have an Honours degree, and if not, you can always "
          "pursue one if you wish!\n",
          tertEd);
      return 0;
    }

    printf(  // If yearsEd between 13-15, tertiary level, can pursue further.
        "\nYour level of education is classified as '%s.' Congratulations! You "
        "may even be pursuing an Honours, Master's, or Doctoral degree, and if "
        "not, it is always an option!\n",
        tertEd);
  }
}
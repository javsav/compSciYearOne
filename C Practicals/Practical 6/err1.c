// This simple program prints "hello world" to terminal. The error that needed
// to be debugged was that the standard input & output lubrary was not included
// in the original script (#include <stdio.h>)

#include <stdio.h>  // Include standard input & output library.
int main(void) {    // Declare main fcn w output type int no input arguments.
  printf("hello world\n");  // Print "hello world" + new line.
  return 0;                 // Indicate successful execution and terminate.
}
/* This program declares an array of integers called nums, and two additional
 * arrays of the same size (11 bytes) called odds and evens. It then parses the
 * nums array, and appends the odd numbers in the array to the odds array, and
 * the even numbers to the evens array. Finally, it prints the odd numbers on
 * one line, followed by the even numbers on a new line. */

#include <stdio.h>  // Include input & output library for printf

int main(void) {
  // Initialise integer arrays nums, ints, odds, and evens & OVR garbage data.
  int nums[11] = {11, 3, 9, 7, 6, 10, 13, 17, 2, 8, 3};
  int odds[11] = {0}, evens[11] = {0};

  // Initialise number, evenNum, and oddNum: loop indexes and counts of numbers.
  int number = 0, evenNum = 0, oddNum = 0;

  // Iterate through each of the eleven numbers in nums array.
  for (number = 0; number < 11; number++) {
    // If the numberth index of nums is divisible by two with no remainder:
    if (nums[number] % 2 == 0) {
      // Append to the evenNumth index of evens array.
      evens[evenNum] = nums[number];

      // Increment evenNum counter by one for each even number appended.
      evenNum++;

      // Else, if not evenly divisible by two:
    } else {
      // The number is odd, so append to the oddNumth index of odds array.
      odds[oddNum] = nums[number];

      // Increment oddNum counter by one for each odd number appended.
      oddNum++;
    }
  }

  // Starting at 0th index print each number in odds array up to oddNum count.
  for (number = 0; number < oddNum; number++) {
    printf("%d ", odds[number]);
  }
  // Print new line to separate odd and even nums.
  printf("\n");

  // Starting at 0th index print each number in evens array up to evenNum count.
  for (number = 0; number < evenNum; number++) {
    printf("%d ", evens[number]);
  }
  printf("\n");  // Print new line.

  return 0;  // Indicate successful execution and terminate.
}
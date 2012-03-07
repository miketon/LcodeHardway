#include <stdio.h>

int main(int argc, char *argv[]){

  int bugs        = 100;
  double bug_rate = 1.2;

  printf("You have %d bugs at the imaginary rate of %f.\n", bugs, bug_rate);

  long universe_of_defects = 7999999999L * 1L * 1024L * 1024L * 1024L              ;
  printf("The entire universe has %ld bugs.\n", universe_of_defects) ;

  double expected_bugs = bugs * bug_rate                       ;
  printf("You are expected to have %f bugs.\n", expected_bugs) ;

  double part_of_universe = expected_bugs/universe_of_defects              ;
  printf("That is only a %e portion of the universe.\n", part_of_universe) ; //%e scientific notation for really small values

  // this makes no sense, just a demo of something weird
  char nul_byte = '\0'                                           ; //effectively zero
  int care_percentage = bugs * nul_byte                          ; //a char is just a really small integer; you can do math on them for good or bad
  printf("Which means you should care %d%%.\n", care_percentage) ; //%% to print percent char

  printf("Breaking: %c :nullbyte as char   . \n", nul_byte); //prints empty space
  printf("Breaking: %s :nullbyte as string . \n", nul_byte); //prints (null)
  printf("Breaking: %d :nullbyte as int    . \n", nul_byte); //prints 0

  return 0;

}

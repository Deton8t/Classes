// Tricky Pointers


/* 
 * "()" = like pemdas paren not func def
 * "[]" = array of
 * "()" = function returning
 * "*"  = pointer to
 *
 *
 */

// Examples:

// Translates to: |p is | an array of 4 | pointers to | ints 
int *p[4];


// v is | an array of 20 | pointer | a char 
char (*v)[20];

// tom is | a function | returning | pointer to | a function | returning a pointer to | an int
int *(*tom())();

// v2 is a pointer | to a function | that takes an int | and returns void
void (*v2)(int); 

// jerry is | a pointer to | a function that | takes 2 args: int and double | returning | a pointer to | an array of 9 rows and 20 cols | of ints
int (*(*jerry)(int,double))[9][20];

// array of functions that return an int
int af[]();

// pointer to a 2d array of ints
int (*paa)[][];

int f(void);



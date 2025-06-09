/* Nate Harris
 * 2/3/2024
 * CIS 2107
 * Lab 4
 * 
 * Summation: Produce functions based on the descriptions provided in lab
 * these functions interact with 1 dimensional arrays in C.
 */


#include <time.h>
#include <limits.h>
#include <stdio.h>
#include <stdlib.h>

//! Fill array with random integers ranging between 1 and 100
//! @p arr: the array to be filled
void fill_array(int arr[40]);

// find pattern in array
int find_sequence(int arr[40]);

//! Finds the largest number within the range low to high (inclusive) inside arr
//! @p arr: arr that is searched
//! @p low: value of lower bound 
//! @p high: value of higher bound 
//! @r max in range
int find_with_range(int arr[40], unsigned int low, unsigned int high);

// reverse elements of array 
void reverse_array(int arr[40]);

// reverse elements of array in range
void reverse_selected_range_within_array(int arr[40], unsigned int start, unsigned int end);

// helper function to print array
void print_arr(int arr[40]);

int main() {
    int arr[40];
    fill_array(arr);
    find_with_range(arr, 10,19);
    reverse_array(arr);
    reverse_selected_range_within_array(arr, 10,19);
    find_sequence(arr);
    print_arr(arr);
    return 1;
}

void print_arr(int arr[40]) {
    printf("%s", "[");
    for(int i = 0; i < 39; i++) {
        printf("%d,",arr[i]);
    }
    printf("%d",arr[39]);
    puts("]");
    puts("");
}

int find_with_range(int arr[40], unsigned int low, unsigned int high) {
    if(high >= 40) { // Runs on assumption of only 40 long array
        puts("High bound is out of bounds");
        exit(1);
    }
    int i = low;
    int max=INT_MIN;
    while(i++ < high) {
        if(arr[i] > max) max = arr[i];
    }
    printf("Find with range [%d,%d], Highest value is: %d:\n", low,high,max);
    print_arr(arr);
    return max;
}

// fills array with random values seeded by system time
void fill_array(int arr[40]) {
    // Just added this because I noticed that rand would produce the same values after compile
    // this fixes that by seeding the rand function with system time which is different each time its run
    // I thought that was neat
    srand(time(NULL));
    for(int i = 0; i < 40; i++) {
        arr[i] = rand()%101;
    }
    puts("Fill array:");
    print_arr(arr);
}

// Collects reversed values in temp array then writes temp array over inputted
// array
void reverse_array(int arr[40]) {
    int rev_arr[40];
    for(int i = 39; i >= 0; i--) {
        rev_arr[39-i] = arr[i];
    }
    for(int i = 0; i < 40; i++) {
        arr[i] = rev_arr[i];
    }
    puts("Reverse:");
    print_arr(arr);
}

// Does same as previous reverse but with restriction to a smaller range
void reverse_selected_range_within_array(int arr[40], unsigned int start, unsigned int end) {
    int rev_arr[end-start];
    for(int i = end; i >= start; i--){
        rev_arr[end-i] = arr[i];  // offsets needed to make things line up with increment

    }
    for(int i = start; i <= end; i++){
        arr[i] = rev_arr[i-start]; // offsets needed to make things line up with increment
    }
    printf("Reverse in range [%d,%d]:\n", start,end);
    print_arr(arr); 
}

// Searches for pattern using scanned in input from stdin
int find_sequence(int arr[40]) {
    int tom;
    int jerry;
    printf("%s", "Input pattern: ");
    scanf("%d %d", &tom, &jerry);
    puts("Find sequence:");
    for(int i = 0; i < 38; i++)  { // stops at array size-2 bc it looks one ahead of i
        if(arr[i] == tom && arr[i+1] == jerry) {
            printf("Pattern found at %d\n", i);
            return i;
        }
    }
    puts("Pattern not found\n");
    return -1;
}

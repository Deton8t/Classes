 /* Nate Harris
 *  2/10/2024
 *  CIS 2107
 *  Lab 5
 *
 *  Summary: Create a 2D array and perform some operations on
 *  it with functions.
 *
 */
#include <stdio.h>
#include <limits.h>


// Sums all the numbers in a column
int columnSum(int rows, int col, int arr[rows][col]);

// Sums all the numbers in a row 
int rowSum(int row, int cols, int arr[row][cols]);

// Formats the array and outputs it to stdout 
void displayOutputs(int rows, int cols, int arr[rows][cols]);

// Determines if the array is square
// Kinda cheat-y because row and col counts are known
// But if rows and cols was null terminated could be done 
// iteratively 
int isSquare(int rows, int cols);

// Finds the largest value in the 2d array; 
int max(int rows, int cols, int arr[rows][cols]);

int main() {

    puts("Let's make a 2Dim array!");
    int rows, cols;
    printf("%s", "\tHow many rows? ");
    scanf("%d", &rows);   
    printf("%s", "\tHow many columns? ");
    scanf("%d", &cols);   
    int arr[rows][cols];

    for(int i = 0; i < rows; i++) {
        for(int j = 0; j < cols; j++)
        {
            printf("\tenter [%d][%d]: ", i,j);
            scanf("%d", &arr[i][j]);
        }
    }

    puts("");

    for (int row = 0; row < rows; row++ ) {
        printf("Sum of row %d = %d\n", row+1, rowSum(row,cols,arr));
    }

    puts("");

    for (int col = 0; col < cols; col++ ) {
        printf("Sum of col %d - %d\n", col+1, columnSum(rows,col,arr));
    }

    puts("");

    // I don't know how i feel about this,
    // Like should a add a newline after the "?" feels so chunky
    isSquare(rows,cols)? puts("This is a square array") : puts("This is not a square array"); 

    puts("");

    displayOutputs(rows,cols,arr);

    puts("");

    // thought to include this even though not shown in 
    // example just in case
    printf("Your max value is: %d\n", max(rows,cols,arr));
    puts("");
    return 0;
}

int rowSum(int row, int cols, int arr[row][cols]) {
    int sum = 0;
    for(int j = 0; j < cols; j++) {
        sum += arr[row][j];
    }   
    return sum;
}

int columnSum(int rows, int col, int arr[rows][col]) {
    int sum = 0;
    for(int i = 0; i < rows; i++) {
        sum += arr[i][col];
    }   
    return sum;
}

int isSquare(int rows, int cols) {
    return rows == cols;
}

void displayOutputs(int rows, int cols, int arr[rows][cols]) { 
    puts("Here is your 2Dim array:");
    for(int i = 0; i < rows; i++) { 
        printf("%s","[");
        for(int j = 0; j < cols-1; j++) {
            printf("%d,", arr[i][j]);
        }
        printf("%d]\n", arr[i][cols-1]);
    }
}

int max(int rows, int cols, int arr[rows][cols]) {
    int max = INT_MIN;
    for(int i = 0; i < rows; i++) {
        for(int j = 0; j < cols; j++) {
            // This one is cool with me
            max = arr[i][j] > max? arr[i][j] : max;
        }
    }
    return max;
}

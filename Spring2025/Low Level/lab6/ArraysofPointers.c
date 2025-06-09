/* 
Name: Nate Harris 
Date: 17/12/2025 
Course: CSI2107 
HW#: Lab 05: ““Arrays of Pointers to Functions” 

Objective: To design and implement array of function pointer. 

The purpose of this program is to modify existing code related to examslecting 
grades for individual students in a 2D matrix and determining the minimum, maximum, and each average. 

// Each of the functions has also been modified to allow for a
// menu-driven interface. This interface is an array of pointers to the functions.

*/

#include <limits.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define STUDENTS 10
#define GRADES 10

// Iterates through array and prints it with some formatting
void printArray(int students, int exams, int grades[students][exams]);

// Iterates through array and keeps track of smallest value
// outputs that value before completing
void minimum(int students, int exams, int grades[students][exams]);
// Same as min but keeps track of largest
void maximum(int students, int exams, int grades[students][exams]);
// Iterates through array outputting with 3 points of
// precision the average value of the array
void average(int students, int exams, int grades[students][exams]);

// helper function to fill array with random values between
// 0 and 100
void fill_grades(int students, int exams, int grades[students][exams]);

int main()
{
    srand(time(NULL));
    int grades[STUDENTS][GRADES]; 
    fill_grades(STUDENTS, GRADES, grades);
    void (*processGrades[4])(int s,int e,int g[s][e]) = {printArray, minimum, maximum, average}; 
    bool program_should_run = 1;
    while(program_should_run) {
        int input = -1;
        puts("Enter a choice:");
        puts("\t 0  Print the array of grades");
        puts("\t 1  Find the minimum grade");
        puts("\t 2  Find the maximum grade");
        puts("\t 3  Print the average on all tests for each student");
        puts("\t 4 End program");
        scanf("%d", &input);
        switch(input) {
            case 0:
            case 1:
            case 2:
            case 3:
                {
                    processGrades[input](STUDENTS,GRADES,grades);
                    break;
                }
            case 4:
                {
                    puts("Ending Program"); 
                    program_should_run = 0;
                    break;
                }

            default: {
                    puts("Incorrect input, try again");
                    // temp var to store unwanted char input
                    char garbagio[1024];
                    // looked it up bc inputting a char made loop go infinitely without accepting new input
                    // this would clear the char input by reading it from stdin
                    fgets(garbagio, sizeof(garbagio), stdin);
                    break;
                }
        }

    }
}

void fill_grades(int students, int exams, int grades[students][exams]) {
    for(int i = 0; i < students; ++i) {
        for(int j = 0; j < exams; ++j) {
            grades[i][j] = rand()%101;
        }

    }
}
void printArray(int students, int exams, int grades[students][exams]){
    for(int i = 0; i < students; ++i) {
        printf("%s", "[");
        for(int j = 0; j < exams - 1; ++j) {
            printf("%d,", grades[i][j]); 
        }
        printf("%d]\n", grades[i][exams-1]);
    }
}

void minimum(int students, int exams, int grades[students][exams]){
    int min = INT_MAX;
    for(int i = 0; i < students; ++i) {
        for(int j = 0; j < exams; ++j) {
            min = min > grades[i][j] ? grades[i][j] : min;
        }
    }
    printf("Min value is: %d\n", min);
}

void maximum(int students, int exams, int grades[students][exams]){
    int max = INT_MIN;
    for(int i = 0; i < students; ++i) {
        for(int j = 0; j < exams; ++j) {
            max = max < grades[i][j] ? grades[i][j] : max;
        }
    }
    printf("Max value is: %d\n", max);
}
void average(int students, int exams, int grades[students][exams]){
    int total = students * exams;
    int sum = 0;
    for(int i = 0; i < students; ++i) {
        for(int j = 0; j < exams; ++j) {
            sum += grades[i][j];
        }
    }
    printf("The average is: %.3f\n", (float)sum/total);
}

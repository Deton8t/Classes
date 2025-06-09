//CIS2017 Lab7: Race
//The purpose of this program is to simulate and display the race between the tortoise and the hare using a random number
//generator and preset move types. The animal positions are accessed and modified using pointers, and the display is
//controlled using the sleep() function. Sometimes it takes a while due to slippage.


#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <time.h>

#define INT_MIN 1
#define INT_MAX 10

int randomNumberGenerator();
void tortMove(int *tPtr);
void hareMove(int *hPtr);
void printRace(int hPos,int tPos);
int min(int hMin, int tMin);

int main(){
    srand((unsigned)time(NULL));

    int hPos =1;						//hare start position is 1, cannot slip past 1
    int tPos = 1;						//tortoise start position is 1, cannot slip past 1

    puts("\tON YOUR MARK, GET SET");
    puts("\tBANG               !!!!");	//the spacing is modeled after the sample
    puts("\tAND THEY'RE OFF    !!!!");	//the spacing is modeled after the sample

    while(hPos != 70 && tPos!=70){
        sleep(1);						//slows down the race
        hareMove(&hPos);
        tortMove(&tPos);
        printRace(hPos,tPos);
        puts("");
    }
    if(tPos > 70) {
        puts("Turtle wins!!");
        exit(0);
    }
    puts("Hare wins... yuck");
    exit(0);

}

//Finds minimum of hare or tortoise position to decide which position to print first
int min(int hMin, int tMin){
    if(hMin > tMin) return tMin;
    return hMin;
}

int max(int hMax, int tMax) {
    if(hMax > tMax) return hMax;
    return tMax;
}

//Prints the position of the H and T
void printRace(int hPos,int tPos){
    for(int i = 0; i < min(hPos,tPos); i++) {
        printf("%s", " ");
    } 

    if(hPos == tPos) {
        printf("%s","OUCH!!!");
        return;
    } 
 

    if(hPos < tPos) {
        printf("%s", "H");
    } else {
        printf("%s", "T");
    }

    for(int i = 0; i < max(hPos,tPos) - min(hPos,tPos); i++) {
        printf("%s", " ");
    }
   if(hPos > tPos) {
        printf("%s", "H");
    }else {
        printf("%s", "T");
    }
}

//Controls the tortoise movement
void tortMove(int *tPtr){
    int rnd = randomNumberGenerator();
    // big plod
    if(rnd <= 5) {
        *tPtr += 3;
        return;
    }
    // slip
    if(rnd <= 7) {
        *tPtr = max(1, *tPtr-6);
        return;
    }
    // slow plod
    *tPtr += 1;
    return;

}

//Controls the hare movement
void hareMove(int *hPtr){
    int rnd = randomNumberGenerator();
    // sleep
    if(rnd <= 2) {
        return;
    }
    // big yump
    if(rnd <= 4) {
        *hPtr += 9;
        return;
    }
    // big slip
    if(rnd <= 5) { 
        *hPtr = max(1, *hPtr-12);
        return;
    }
    // little yump
    if(rnd <= 8) {
        *hPtr += 1;
        return;
    }
    // little slip
    *hPtr = max(1, *hPtr-2);
}

//Generates random number from 1-10
int randomNumberGenerator(){
    return rand()%10+1; 
}

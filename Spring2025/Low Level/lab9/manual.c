/*
 * Name:    Nate Harris
 * Section: 002	
 * Lab:  	CIS2107_Lab08_Manual 
 * Goal: 	To design and implement functions taking pointers as arguments 
			to process characters and strings.
 */


#include <stdio.h>
#include <memory.h>
#include <ctype.h>
#include <math.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <stdbool.h>

//functions prototypes
void  upperLower(const char * s);
int convertStrtoInt(const char *s1, const char *s2, const char *s3, const char *s4);
float convertStrtoFloat(const char *s1, const char *s2, const char *s3, const char *s4);
void compareStr(const char *s1, const char *s2);
void comparePartialStr(const char *s1, const char *s2, int n);
void randomize(void);
int tokenizeTelNum(char *num);
void reverse(char *text);
int countSubstr (char * line, char * sub);
int countChar (char * line, char c);
int countWords(char *string);
void countAlpha(char *string);
void startsWithB(char *string[]);
void endsWithed(char *string[]);

int main() {

    //random generator
    srand(time(NULL));

    //test for upperLower
    const char test[] = "This iS A Test";
    upperLower(test);

    //test for convertStrtoInt
    printf("\n\nThe sum of 4 strings is: %d\n", convertStrtoInt("-3", "4", "5", "6"));
    // put in new values to make sure it worked in more cases

    //test for convertStrtoFloat
    printf("\n\nThe sum of 4 strings is: %.2f\n", convertStrtoFloat("3.521", "4.6", "5.5", "-6.5"));
    // put in new values to make sure it worked in more cases

    //test for compareStr
    compareStr("Test1", "Test2");

    //test for comparePartialStr
    comparePartialStr("Test1", "Test2", 4);

    //test for randomize
    randomize();

    //test for tokenize number
    char str[] = "(267) 436-6281";
    tokenizeTelNum(str);

    //test for reverse
    char line[] = "Hello world";
    reverse(line);

    //test for countSubstr
    char *line1 = "helloworldworld";
    char *substring = "world";
    printf("\n\nNumber of Substrings %s inside %s: %d\n", substring, line1, countSubstr(line1, substring));

    //test for countChar
    char w = 'w';
    printf("\nNumber of character %c inside %s: %d\n", w, line1, countChar(line1, w));

    //test for countAlpha
    char str1[] = "Hello it's me.";
    countAlpha(str1);

    //test for countWords
    char countstring[] = "hello world!";
    printf("\n\nNumber of words in string is: %d\n", countWords(countstring));

    //test for startsWithB
    char *series[] = {"bored", "hello", "Brother", "manual", "bothered", NULL}; // added NULL to make it doable
    startsWithB(series);

    //test for endsWithed
    endsWithed(series);

}

// 1.(Displaying Strings in Uppercase and Lowercase) 
void upperLower (const char * s) {
    char u[100]; 
    char l[100]; 
    strcpy(u,s);
    strcpy(l,s);
    int i = 0;
    while(u[i] != '\0') {
        if(u[i] >= 'a' && u[i] <= 'z') {
            u[i] -= 'a'-'A';
        }
        i++;
    }
    i = 0;
    while(l[i] != '\0') {
        if(l[i] >= 'A' && l[i] <= 'Z') {
            l[i] += 'a'-'A';
        }
        i++;
    }
    printf("Upper: %s\nLower: %s", u,l);
}

// helper function for convertStrtoInt
int strtoInt(const char* s) {
    int n = 0;
    while(s[n] != '\0') {
        n++;
    }
    int is_negative = 0;
    if(s[0] == '-') {
        is_negative = 1;
    }
    int i = is_negative;
    int value = 0;
    while(i < n) {
        value += (s[i]-'0') * (int)pow(10,n-i-1); 
        i++;
    }
    if(is_negative) {
        return value *= -1;
    }
    return value;
}
// 2.(Converting Strings to Integers for Calculations) 
int convertStrtoInt(const char *s1, const char *s2, const char *s3, const char *s4) {
    int i1,i2,i3,i4;    
    i1 = strtoInt(s1);
    i2 = strtoInt(s2);
    i3 = strtoInt(s3);
    i4 = strtoInt(s4);
    return i1+i2+i3+i4;    
}
int rangedStrtoInt(const char* s, int n) {
    int is_negative = 0;
    if(s[0] == '-') {
        is_negative = 1;
    }
    int i = is_negative;
    int value = 0;
    while(i < n) {
        value += (s[i]-'0') * (int)pow(10,n-i-1); 
        i++;
    }
    if(is_negative) {
        return value *= -1;
    }
    return value;
}
float strToFloat(const char* s) {
    int dot_spot = -1;
    int pre = 0;
    int post = 0; 
    int n = 0;
    while(s[n] != '\0') {
        if(s[n] == '.') dot_spot = n;
        n++;
    }
    if(dot_spot != -1) {
        pre = rangedStrtoInt(s, dot_spot);
        post = strtoInt(s + dot_spot + 1);
    } else {
        pre = strtoInt(s);
    }
    //printf("\npre: %d, post: %d\n", pre, post);
    return (float)pre + (pre < 0? -1 : 1) * (float)post/pow(10,(n-dot_spot-1));
}
//3.(Converting Strings to Floating Point for Calculations) 
float convertStrtoFloat(const char *s1, const char *s2, const char *s3, const char *s4) {
  float f1, f2,f3,f4;
  f1 = strToFloat(s1); 
  f2 = strToFloat(s2); 
  f3 = strToFloat(s3); 
  f4 = strToFloat(s4); 
  return f1+f2+f3+f4;
}

//4.(Comparing Strings) 
void compareStr(const char *s1, const char *s2) {
    int i = 0;
    puts("");
    while(s1[i] != '\0' && s2[i] != '\0') {
        if(s1[i] - s2[i] != 0){
            s1[i] > s2[i]? puts("First string is greater") : puts("First string is less than second");
            return;
        }
        i++;
    }
    puts("They are equal");
}

//5.(Comparing Portions of Strings) 
void comparePartialStr(const char *s1, const char *s2, int n) {
    char d1[n+1], d2[n+1];
    strncpy(d1,s1,n);
    strncpy(d2,s2,n);
    d1[n] = '\0';
    d2[n] = '\0';
    compareStr(d1,d2);


}

//6.(Random Sentences) 
void randomize(void) {
    // I copy and pasted a lot :)
    char article[5][5] = {"the", "a","one", "some", "any"}; 
    char noun[5][5] = {"boy", "girl", "dog", "town", "car"};
    char verb[5][8] = {"drove", "jumped", "ran", "walked", "skipped"};
    char preposition[5][6] = {"to", "from", "over", "under", "on"};
    // article noun verb prep article noun
    // prolly did the math right and it wont segfault :)
    char sentence[4*2+4*2+7+5+5+1] = "";
    srand(time(NULL));
    strcat(sentence,article[rand()%5]);
    strcat(sentence, " ");
    // time change is negligible so i just seeded the next one with the previous
    srand(rand());
    strcat(sentence,noun[rand()%5]);
    strcat(sentence, " ");
    srand(rand());
    strcat(sentence,verb[rand()%5]);
    strcat(sentence, " ");
    srand(rand());
    strcat(sentence,preposition[rand()%5]);
    strcat(sentence, " ");
    srand(rand());
    strcat(sentence,article[rand()%5]);
    strcat(sentence, " ");
    srand(rand());
    strcat(sentence,noun[rand()%5]);
    strcat(sentence, ".");
    sentence[0] = toupper(sentence[0]);
    puts(sentence);
}

//7.(Tokenizing Telephone Numbers) 
int tokenizeTelNum(char *num) {
    char *middle = NULL,*last4 = NULL;
    // move past first (
    num++;
    // pretty much same thing as strtok but its thread safe! (i don't know what that means)
    // the pointer that would be gotten by strtok(NULL, token) is stored in the third input
    strtok_r(num, ")", &middle);
    int area_code = strtoInt(num);
    // skip space
    middle++;
    strtok_r(middle, "-", &last4);
    char phone_str[10] = "";
    strcat(phone_str,middle);
    strcat(phone_str, last4);
    long int phone_num = strtoInt(phone_str); 
    printf("Area code: %d, Ending num: %ld\n", area_code,phone_num);
    // assuming area_code should be returned but stuff is printed as specified 
    return area_code;
}

typedef struct Node {
    struct Node* prev;
    char word[46]; // kinda dumb longest english word has 45 letters but my 2019 thinkpad can handle this
}Node;
//8.(Displaying a Sentence with Its Words Reversed) 
void reverse(char *text) {
    int len = strlen(text);
    char reversed[len+1];
    reversed[len] = '\0';
    // preserve null terminator
    int current_pos = len-1;
    char text_copy[len+1];
    char *save_ptr;
    strcpy(text_copy,text);
    // fill array with spaces :P so any spot not filled by a word is a space
    // left over from debugging but it works so even if it is slower than optimal
    // im not gonna fix it
    for(int i=0; i < len; i++) {
        reversed[i] = ' ';
    }
    while(strtok_r(text_copy," ",&save_ptr) != NULL) {
        // length of token 
        int tok_len = strlen(text_copy);
        int i= 0;
        for(; i < tok_len; i++) {
            reversed[current_pos-i] = text_copy[tok_len-1-i]; // -1 is there to dodge null terminator 
        }
        // subtract the extra one to account for the space
        current_pos -= i+1;
        strcpy(text_copy, save_ptr);
    }
    puts(reversed);
}

//9.(Counting the Occurrences of a Substring) 
int countSubstr (char * line, char * sub) {
    int main_len, sub_len; 
    main_len = strlen(line);
    sub_len = strlen(sub);
    int count = 0;
//for(int i = 0; i <= main_len - sub_len; i++) {
//    bool is_match = true;
//    for(int j = 0; j < sub_len; j++) {
//       if(line[i+j] != sub[j]) {
//          is_match = false;
//       }
//    }
//    if(is_match) count++;
//}
//
    char *line_ptr = strstr(line,sub);
    while(line_ptr != NULL) {
        line_ptr++;
        count++;
        line_ptr = strstr(line_ptr,sub); // I DONT LIKE IT
    }
    return count;

}

//10.(Counting the Occurrences of a Character) 
int countChar (char *line, char c) {
    // pretty tidy code if i do say so myself
    // tbf using brackets is probably more clear tho
    // this isn't python >:P
    int count = 0;    
    char * line_ptr;
    // while(*line_ptr++ != '\0')
    //    if (*line_ptr == c) count++;
    // ok i didn't read directions but i wanna keep my answer there
    // more elegant imo >:P
    // here is how i am supposed to do it
    // well probably not idk it works
    line_ptr = strchr(line,c);
    while(line_ptr != NULL) {
        line_ptr++;
        count++;
        line_ptr = strchr(line_ptr,c);
    }
    return count;

}


//11.(Counting the Letters of the Alphabet in a String) 
void countAlpha(char *string) {
    int counts[26];
    char letters[26] = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'};
    puts(string);
    for(int i = 0; i < 26; i++) {
        counts[i] = countChar(string,letters[i]);
        counts[i] += countChar(string,toupper(letters[i]));
        printf("%c: %d\n",letters[i], counts[i]);
    }

}

//12.(Counting the Number of Words in a String) 
int countWords(char *string) {
    int len = strlen(string);
    char *temp = strtok(string, " ");
    int count = 0;
    while(temp != NULL) 
    {
        count++;
        temp = strtok(NULL, " "); // does this use some kinda stream?
                                  // I don't get how it has this permanence 
                                  // looked it up, is the static memory it uses
                                  // reserved in the include file filescope?
                                  // like strtok's space is reserved on program
                                  // OHHHH I THINK I GET IT, IT ALLOCATES A POINTER
                                  // IN STATIC MEMORY tokens are just generated 
                                  // by using this pointer that is moved and 
                                  // the delimeter character! It also returns
                                  // this pointer I think
    }

    return count;
}

//13.(Strings Starting with "b") 
// I think it's impossible as given (or i would treat the last string literal
// as the sentinel value which feels wrong)
// added NULL to the end as a sentinel value
void startsWithB(char *string[]) {
    int i = 0;
    while( string[i] != NULL) { 
        if(string[i][0] == 'b' || string[i][0] == 'B') {
            puts(string[i]);
        }
        i++;
    }
}

//14.(Strings Ending with "ed") 
void endsWithed(char *string[]) {
     int i = 0;
    while( string[i] != NULL) { 
        int len = strlen(string[i]);
        if(string[i][len-2] == 'e' && string[i][len-1] == 'd') {
            puts(string[i]);
        }
        i++;
    }
}

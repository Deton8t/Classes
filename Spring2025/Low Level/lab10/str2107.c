#include "str2107.h"
#include <err.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/param.h>

void handle_alloc_err(void *p) {
    if(p == NULL) {
        err(EXIT_FAILURE, "ALLOCATION ERROR");
    }
}

// helper func, gives string length up to terminator
// returns -1 if s is null
int str_len(const char *s) {
    if(s == NULL) {
        puts("String is NULL");
        return -1;
    }
    int count = 0;
    while(s[count] != '\0') {
        count++;
    }
    return count;
}
void nate_str_cpy(const char* s1, char *s2) {
    int i = 0;
    for(; s1[i] != '\0'; i++) {
        s2[i] = s1[i];
    }
    s2[i] = '\0';
}
char* str_from_literal(const char* literal) {
    int len = str_len(literal);
    char* str = malloc(sizeof(char) * (len+1));
    handle_alloc_err(str);
    nate_str_cpy(literal, str);
    return str;
}
int all_letters(char *s) {
    int i = 0;
    int is_upper = s[0] >= 65 && s[0] <= 90; 
    while(s[i] != '\0') 
    {
        if(is_upper) {
            if(!(s[i] >= 'A' & s[i] <= 'Z')) {
                return 0;
            }
        }
        else if(!(s[i] >= 'a' && s[i] <= 'z')) {
            return 0;
        }
        i++;
    }
    return 1;
}

int num_in_range(char *s1, char b, char t) {
    int count = 0;
    for(int i = 0; s1[i] != '\0'; i++) {
        if(b <= s1[i] && s1[i] <= t)
            count++; 
    }
    return count;
}

int diff(char *s1, char *s2) {
    int count = 0; 
    int i = 0;
    while(s1[i] != '\0' && s2[i] != '\0') {
        if(s1[i] != s2[i]) {
            count++;
        }
        i++;
    }
    if(s1[i] == '\0') {
        while(s2[i] != '\0') {
            count++;
            i++;
        }
    } else {
        while(s1[i] != '\0') {
            count++;
            i++;
        }
    }
    return count;
}

void shorten(char *s1, int new_len) {
    int len = str_len(s1);
    if(len <= new_len) {
        return;
    }
    char* temp = (char*)malloc(sizeof(char)*(new_len+1));
    handle_alloc_err(temp);
    int i = 0;
    while(i < new_len) {
        temp[i] = s1[i];
        i++;
    }
    temp[i] = '\0'; 
    free(s1);
    s1 = malloc(sizeof(char) * (new_len + 1));
    handle_alloc_err(s1);
    nate_str_cpy(temp,s1);
    free(temp);
}

int len_diff(char *s1, char* s2) {
    return(str_len(s1) - str_len(s2)); // My own helper func
}

void rm_left_space(char *s) {
    int i;
    for(i = 0; s[i] == ' '; i++);
    char* temp = (char*)malloc(sizeof(char)*(str_len(s) - i + 1));
    handle_alloc_err(temp);
    nate_str_cpy(s+i, temp);
    free(s);
    s = (char*) malloc(sizeof(char)*(str_len(s) - i + 1));
    handle_alloc_err(s);
    nate_str_cpy(temp, s);
    free(temp);
}
void rm_space(char *s) {
    rm_left_space(s);
    rm_right_space(s);
}

int find(char *h, char *n) {
    int len_h = str_len(h);
    int len_n = str_len(n);
    printf("h: %d, n: %d\n", len_h,len_n);
    for(int i = 0; i <= len_h - len_n; i++) {
        short int is_same = 1;
        for(int j = 0; j < len_n; j++) {
            if(h[i+j] != n[j]) {
                is_same = 0;
            }
        }
        if(is_same == 1) {
            return i;
        }
    }
    return -1;
}

void rm_right_space(char *s) {
    int i;
    int len = str_len(s);
    for(i = 0; s[len-1-i] == ' '; i++);
    printf("%d\n",i);
    handle_alloc_err(realloc(s,sizeof(char) * len+1-i));
    s[len-i] = '\0';
}

char *ptr_to(char *h, char *n) {
    int i = find(h,n);
    if(i == -1) return NULL;
    char* p = h+i;
    return p;
}
int is_empty(char *s) {
    if(s == NULL) {
        return 1;
    }
    int i = 0;
    while(s[i] != '\0') {
        if(s[i] != ' ') return 0;
        i++;
    }
    return 1;
}
void capitalize(char *s) {
   if(s[0] > 'a' && s[0] < 'z') {
       s[0] -= 'a' - 'A';
   }
   int i = 1;
   while(s[i] != '\0') {
        if(s[i] > 'A' && s[i] < 'Z') {
            s[i] += 'a' - 'A';
        }
        i++;
   }
}

int strcmp_ign_case(char *s1, char *s2) {
    int i = 0;
    while(*(s1 + i) != '\0' && *(s2+i) != '\0'){
        int cmp = *(s1 + i) - *(s2 + i);
        if(cmp != 0) {
            // checking if strings are letters or symbols
            if((*(s1 + i) > 'a' && *(s1 + i) < 'z') ||
               (*(s1 + i) > 'A' && *(s1 + i) < 'Z')) {
                if(abs(cmp) != 'a'-'A') {
                    return cmp;
                }
            } else {
            return cmp;
            }
        }
        i++;
    }
    return 0;
}

void take_last(char *s, int n) {
    int len = str_len(s);
    if(n > len) 
        return;
    char* temp = str_from_literal(s+(len-n));
    free(s);
    s = str_from_literal(temp);
    free(temp);
    // works but does more allocation operations than needed
    // no requirement to do the stuff in place
}

char* dedup(char* s) {
    char used[256] = {'\0'}; 
    int i = 0;
    int used_count = 0;
    while(s[i] != '\0') {
        int is_used = 0;
        for(int j = 0; j < used_count; j++) {
            if(used[j] == s[i]) 
                is_used = 1;
        }
        if(!is_used) {
            used[used_count] = s[i];
            used_count++;
        }
        i++;
    }
    return str_from_literal(used);
    
}

char* pad(char *s, int d) {
    if(s == NULL) {
        return NULL;
    }
    if(d < 1) {
        return NULL;
    }
    int len = str_len(s);
    if(len%d == 0) {
        return str_from_literal(s);
    }
    char* padded = (char*)malloc(sizeof(char) * (len+(d-len%d)+1));
    for(int i = 0; i < len; i++) {
        padded[i] = s[i];
    }
    for(int i = 0; i < d-len%d; i++) {
        padded[i+len] = ' ';
    }
    padded[len+(d-len%d)] = '\0';
    return padded;
}

int ends_with_ignore_case(char *s, char *suff) {
    int len_str = str_len(s);
    int len_suff = str_len(suff);
    
    return find(s+len_str-len_suff,suff) > -1; 
}

char* repeat(char *s, int x, char sep) {
    int len = str_len(s);
    char* repeated = (char *)malloc(sizeof(char) * (len*x+x));
    char* index = &repeated[0];
    for(int i = 0; i < x; i++) {
        for(int j = 0; j < len; j++) {
            *index = s[j];
            index++;
        }
        if(i != x-1) {
            *index = sep;
            index++;
        }
    }
    repeated[len*x+x-1] = '\0';
    return repeated;
}

char *replace(char *s, char *pat, char *rep) {
    int index = 0;
    int pat_count = 0;
    while(1) {
        index = find(s+index, pat);
        if(index != -1) {
            pat_count++;
            index++;
        } else {
            break;
        }
    }
    int len = str_len(s);
    int pat_len = str_len(pat);
    int rep_len = str_len(rep);
    char* replaced = (char*)malloc(sizeof(char) * (len - pat_len * pat_count + rep_len * pat_count + 1));
    int prev_index = 0;
    for(int i = 0; i < pat_count; i++) {
        int index = find(s+prev_index, pat);
        for(int j = 0; j < index; j++) {
            replaced[j+prev_index] = s[j+prev_index];
        }
        prev_index = index;
        for(int j = 0; j < rep_len; j++) {
            replaced[j+prev_index] = rep[j];
        }
        prev_index += rep_len + 1;
    }
    replaced[len-pat_len*pat_count+rep_len*pat_count] = '\0';
    return replaced;
}
char *str_connect(char **strs, int n, char c) {
   int total_len = 0; 
   int word_lens[n]; 
   for(int i = 0; i < n; i++) {
        word_lens[i] = str_len(strs[i]);
        total_len += word_lens[i];
        total_len++;
   }
   char* connected = malloc(sizeof(char) * total_len);
   int offset = 0;
   for(int i = 0; i < n; i++) {
       for(int j = 0; j < word_lens[i]; j++) {
           connected[j+offset] = strs[i][j];
       }
       connected[word_lens[i] + offset] = c;
       offset += word_lens[i]+1;
   }
   connected[total_len-1] = '\0';
   return connected;
}

void rm_empties(char **words) {
    int i = 0;
    while(words[i] != NULL) {
        if(str_len(words[i]) == 0) {
            int j = i;
            while(words[j] != NULL) {
                words[j] = words[j+1];
                j++;
            }
        } else {
        i++;
        }
    }
} 
char **str_chop_all(char *s, char c) {
    int count = 0;
    char char_to_str[2] = {c, '\0'};
    char* current_char = ptr_to(s,char_to_str);
    while(current_char != NULL) {
        count++;
        current_char++;
        current_char = ptr_to(current_char, char_to_str);
    }
    if(count == 0) {
        char** tokens = (char**) malloc(sizeof(char*) * 2);
        tokens[0] = str_from_literal(s);
        tokens[1] = NULL;
    }
    char** tokens = (char**)malloc(sizeof(char*) * (count+2));
    int index = 0;
    char* substr = s;
    for(int i = 0; i < count; i++) {
        index = find(substr, char_to_str);
        tokens[i] = (char*)malloc(sizeof(char) * (index + 1));
        for(int j = 0; j < index; j++) {
            tokens[i][j] = substr[j];
        }
        tokens[i][index] = '\0';
        substr += index+1;
    }
    tokens[count] = str_from_literal(substr);
    tokens[count+1] = NULL;
    return tokens;
}
int main() {
    //  bunch of test cases, strings are created using malloc and the helper function: str_from_literal;
    //  They all passed my test cases but idk if I maybe missed something
    //  printf("%d, %d, %d, \n", all_letters("hi"), all_letters("YO"), all_letters("Ii"));
    //  printf("%d, %d, %d,\n", diff("hi", "hi"), diff("yoooo","sup"),diff("fart","dsrt"));
    //  char* s1 = str_from_literal("hello!");
    //  shorten(s1, 3);
    //  puts(s1);
    //  printf("len_diff(%s,%s): %d\n","hi","meow",len_diff("hi","meow"));
    //  char* s2 = str_from_literal("    hello!    ");
    //  rm_left_space(s2);
    //  rm_right_space(s2);
    //  printf("find(%s,%s): %d\n", "hello!", "llo", find("hello!","llo"));
    //  puts(ptr_to("hello", "ell")); 
    //  printf("is_empty(\"\" , \"hi\", \"  \"): %d, %d, %d\n", is_empty(""),is_empty("hi"),is_empty("  "));
    //  char* s3 = str_from_literal("meOw"); 
    //  capitalize(s3);
    //  puts(s3);
    //  printf("strcmp: %d\n",strcmp_ign_case("heLlow", "hello!"));
    //  take_last(s3,2); 
    //  puts(s3);
    //  char* s4 = dedup("hello from the deep!");
    //  char* s5 = pad(s4, 13);
    //  puts(s4);
    //  printf("%s,\n", s5);
    //  printf("%d,%d\n", ends_with_ignore_case("hello","lo"), ends_with_ignore_case("hello", "yooooooo"));
    //  char* s6 = repeat("hello", 3, '|');
    //  char* s7 = replace("Hello y'all", "y'all", "world");
    //  char* strs[3] = {"hello", "yo", "wassup"};
    //  char* s8 = str_connect(strs, 3, '+');
    //  puts(s6);
    //  puts(s7);
    //  puts(s8);
    //  char* words[] = {"hello","","meow","","bleh",NULL};
    //  rm_empties(words);
    //  char** tokens = str_chop_all("I am the heisenberg", ' '); 
    //  int i = 0;
    //  while(tokens[i] != NULL) {
    //      free(tokens[i]); 
    //      i++;
    //  }
    //  free(tokens);
    //  free(s1);
    //  free(s2);
    //  free(s3);
    //  free(s4);
    //  free(s5);

}



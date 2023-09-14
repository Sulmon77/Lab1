/*** Definition Section has one variable
which can be accessed inside yylex()
and main() ***/
%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int count = 0;
int splitSentenceToWords(char *sentence);
%}
 
/*** Rule Section has three rules, first rule
matches with capital letters, second rule
matches with any character except newline and
third rule does not take input after the enter***/
%%
[A-Z] {printf("%s capital letter\n", yytext);
       count++;}
.     {printf("%s not a capital letter\n", yytext);}
\n    {return splitSentenceToWords(yytext);}
%%
 
/*** Code Section prints the number of
capital letters present in the given input***/
int yywrap(){}
int main(){
    char sentence[1000];  // Assuming the input sentence won't exceed 1000 characters.
    
    printf("Enter an English sentence: ");
    fgets(sentence, sizeof(sentence), stdin);
    
    printf("\nIndividual words in the input sentence:\n");
    splitSentenceToWords(sentence);
    
    printf("\nNumber of Capital letters in the given input: %d\n", count);
 
    return 0;
}

int splitSentenceToWords(char *sentence) {
    char *word = strtok(sentence, " ");  // Tokenize the sentence using space as the delimiter.
    
    while (word != NULL) {
        printf("%s\n", word);  // Print each word on a separate line.
        word = strtok(NULL, " ");  // Get the next word.
    }
    
    return 0;
}

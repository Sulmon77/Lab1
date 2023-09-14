/*** Definition Section has one variable
which can be accessed inside yylex()
and main() ***/
/* 
135860 Sitati Lewis ICS 4B
135865 Omwenga Farajah 
112473 Ogutu Tracy
112272 Sulmon Bahati
110328-Alfred Mwaniki
120047 Wanje Kelvin
137255 Nicole Were

*/
%{
int wordcount = 0;
%}

%option noyywrap



%%
[ \t\r\n]+    { /* Ignore whitespace */ }
[a-zA-Z']+[0-9]*    { printf("%s\n", yytext); wordcount++;} /* Match words (letters and apostrophes)  with optional numbers and print them on separate lines */
[0-9]+            { printf("%s\n", yytext); wordcount++;} /* Match numbers and print them on separate lines */
[@,!^*$£%&()=+\-?<>#;:~{}`¬"]*   { printf("%s\n", yytext); wordcount++;} /* Match special characters and print them on separate lines */
.             { printf("%s\n", yytext); wordcount++;}
%%

int main(int argc, char* argv[]) {
//To take input from a file
 FILE *fp;
 char filename[50];
 printf("Enter the filename: \n");
 scanf("%s",filename);
 fp = fopen(filename,"r");
 yyin = fp;
 yylex();
 printf("\nNumber of tokens "
      "in the given input - %d\n", wordcount);
 return 0;
}

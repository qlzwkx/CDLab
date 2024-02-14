/* lex program to find out all the tokens input C program. */
/* Definition Section */
digit [0-9]
letter [a-zA-Z]
%{
#include <stdio.h>
#include <stdlib.h>
int n= 0;

%}


/* Rule Section */
/* Token specification */


%%
"integer"|"read"|"display"|"if"|"else"|"then"|"while"|"for"|"to"|"step" {n++;printf("\t Keywords : %s\n", yytext);}  
   
[a-zA-Z_][a-zA-Z0-9_]* {n++;printf("\t Identifiers : %s\n", yytext);}  
 
"<="|"=="|"<"|">"|">="|"#" {n++;printf("\t Relational Operator : %s\n", yytext);}

"+"|"-"|"*"|"/" {n++;printf("\t Arithmetic Operator : %s\n", yytext);}

"++" {n++;printf("\t Increment Operator : %s\n", yytext);}

"--" {n++;printf("\t Decrement Operators : %s\n", yytext);}

"=" {n++;printf("\t Assignment Operator : %s\n", yytext);}

"("|")"|"{"|"}"|","|";" {n++;printf("\t Special Symbols : %s\n", yytext);}
 
[0-9] {n++;printf("\t Numbers :  %s\n", yytext);}  
   
.    ;
%%
int main()
{
    extern FILE *yyin;
char filename[100];
printf("This Program program finds all tokens!!\nEnter the name of the file to read:\t");
scanf("%s", filename);
/* Opening file to read */
yyin = fopen(filename, "r");
if (yyin == NULL){
printf("Cannot open file %s\n", filename);
   exit(0);
}
/*call the yylex function.*/
yylex();
printf("\n total no. of token = %d\n", n);  
return 0;
}

/*call the yywrap function*/
int yywrap()
{
return 1;
}
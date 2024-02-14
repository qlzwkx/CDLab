%{
	int no_of_lines = 0 ;
	int no_of_chars = 0 ;
%}

%%
\n ++ no_of_lines ;
. ++ no_of_chars ;
end return 0 ;
%%

int yywrap(){}

int main()
{
printf("Enter Data : ");
yylex();
printf("no of lines = %d \n no of characters = %d ",no_of_lines , no_of_chars);

	return 0;
}
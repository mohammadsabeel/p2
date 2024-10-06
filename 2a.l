%{
#include<stdio.h>
int p=0,n=0,pf=0,nf=0;
%}

%%

[+]?[0-9]+ {p++;}
[-][0-9]+  {n++;}
[0-9]*[.][0-9]+ {pf++;}
[-][0-9]*[.][0-9]+ {nf++;}
[-][0-9]*[.]*[0-9]+[/][-][0-9]*[.]*[0-9]+ {pf++;}
[0-9]*[.]*[0-9]+[/][0-9]*[.]*[0-9]+ {pf++;}
[-][0-9]*[.]*[0-9]+[/][0-9]*[.]*[0-9]+ {nf++;}
[0-9]*[.]*[0-9]+[/][-][0-9]*[.]*[0-9]+ {nf++;}

%%

int main()
{
printf("Enter the numbers:\n");
yylex();
printf("\nNo of positive integers:%d\nNo of negative integers:%d\nNo of positive fractions:%d\nNo of negative fraction:%d\n",p,n,pf,nf);
return 0;
}


#include<stdio.h>
#include<stdlib.h>
#include<string.h>

int main(int argc, char ** argv){

char numero[4];

switch(atoi(argv[1])%4){
case 0:
	strcpy(numero,"00");
	break;
case 1:
	strcpy(numero,"01");
	break;
case 2:
	strcpy(numero,"10");
	break;
case 3:
	strcpy(numero,"11");
	break;
}

printf("%s\n",numero);

return 0;
}

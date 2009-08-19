#include "stdio.h"

int main()
{
  char chr;
  do
    {
    chr = fgetc(stdin);
    fputc(chr,stdout);
    } while( chr != EOF );
}

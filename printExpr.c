#include <stdio.h>

#define PrintExpr(x) (printf("%s = %d\n", #x, (x)))

int main(int argc, char **argv)
{
    PrintExpr(2+2);
    return 0;
}



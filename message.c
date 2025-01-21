#include <stdio.h>

int main(int arg, char **argv)
{
#ifdef MESSAGE
    puts(MESSAGE);
#endif

    return 0;
}

#include <stdio.h>
#include <string.h>

int ft_strlen(const char *str);
char *ft_strcpy(char *dst, char *src);
int ft_strcmp(char *s, char *s2);
ssize_t ft_write(int fildes, const void *buf, size_t nbyte);
char *ft_strdup(const char *s1);

int main()
{
char *str;
char *dst;
str = "mouhcine";
dst =  "mouhcine ";
    // printf("%d\n" ,ft_strcmp(dst,str));
    // printf("%d" ,strcmp(dst,str));
    ft_write(1,"hello",5);
} 
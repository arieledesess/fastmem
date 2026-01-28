// Developer: Sreeraj
// GitHub: https://github.com/s-r-e-e-r-a-j

#ifndef FASTMEM_H
#define FASTMEM_H

#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

void *fm_memcpy(void *dst, const void *src, size_t n);
void *fm_memmove(void *dst, const void *src, size_t n);
int fm_memcmp(const void *a, const void *b, size_t n);
void *fm_memset(void *s, int c, size_t n);
size_t fm_strlen(const char *s);
size_t fm_strnlen(const char *s, size_t n);
void fm_bzero(void *s, size_t n);
void *fm_memchr(const void *s, int c, size_t n);
void *fm_memrchr(const void *s, int c, size_t n);
char *fm_strchr(const char *s, int c);
char *fm_strrchr(const char *s, int c);
int fm_strcmp(const char *a, const char *b);
int fm_strncmp(const char *a, const char *b, size_t n);

#ifdef __cplusplus
}
#endif

#endif

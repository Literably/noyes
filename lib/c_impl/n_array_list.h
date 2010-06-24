#ifndef _N_ARRAY_LIST_H_
#define _N_ARRAY_LIST_H_

typedef struct {
  int capacity;
  void **data;
  int size;
} NList;

NList * n_list_new();
void n_list_free(NList * self);
int n_list_size(const NList * self);
int n_list_add(NList * self, void * object);
int n_list_remove(NList * self, int start, int finish);
void * n_list_get(const NList * self, const int index);
int n_list_is_empty(const NList * self);

#endif
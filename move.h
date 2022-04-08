#include <stdbool.h>

#include <stdio.h>

#define TABLE_HEIGHT 17
#define TABLE_LENGTH 29

extern int data[4][4];
extern int start_y, start_x;

void init_table();
int random_location();
void show();
void run();
int my_random();
void process(int key);
void up_remove_blank();
void down_remove_blank();
void left_remove_blank();
void right_remove_blank();
bool up();
bool down();
bool left();
bool right();
void insert_a_digit();
bool changed(int (*)[4], int (*)[4]);
void copy_arr(int (*)[4], int (*)[4]);
void print();
bool can_move();

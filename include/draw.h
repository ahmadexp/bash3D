#ifndef DRAW_H
#define DRAW_H

#include "vector.h"
#include "objects.h"
#include <stddef.h> // size_t

extern int g_rows;
extern int g_cols;
// stores the pixels to be drawn on the screen
extern color_t* g_screen_buffer;
extern size_t g_screen_buffer_size;
// checks whether the ray hits each pixel
extern plane_t* g_plane_test;

/**
 * @brief Initialises the screen buffer and prepares terminal for writing
 */
void draw_init();
/**
 * @brief Write pixel with coordinates (x, y) on the screen into the screen
 *        buffer `g_screen_buffer`. Note that the origin (0, 0) is at the 
 *        center of the screen.
 *
 * @param x x-coordinate of pixel to write
 * @param y y-coordinate of pixel to write
 * @param c "color" of the pixel as an ASCII character
 */
void draw_write_pixel(int x, int y, color_t c);
/**
 * @brief Draws whatever is stored in the screen buffer `g_screen_buffer` on 
 *        the screen. Then moves the cursor top left and empties the buffer.
 */
void draw_flush_screen();
/**
 * @brief Clears the screen and restores the cursor.
 */
void draw_end();


#endif /* DRAW_H */

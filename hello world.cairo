#include <cairo.h>

int main() {
    cairo_surface_t *surface =
        cairo_image_surface_create(CAIRO_FORMAT_ARGB32, 200, 200);
    cairo_t *cr = cairo_create(surface);

    cairo_select_font_face(cr, "Sans", CAIRO_FONT_SLANT_NORMAL,
                            CAIRO_FONT_WEIGHT_NORMAL);
    cairo_set_font_size(cr, 20.0);
    cairo_move_to(cr, 10.0, 50.0);
    cairo_show_text(cr, "Hello, World!");

    cairo_surface_write_to_png(surface, "hello_world.png");

    cairo_destroy(cr);
    cairo_surface_destroy(surface);

    return 0;
}

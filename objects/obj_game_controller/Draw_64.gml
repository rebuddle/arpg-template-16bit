if (global.pause) {
    var center_x = display_get_gui_width() / 2;
    var center_y = display_get_gui_height() / 2;

    //draw_set_color(c_black);
    //draw_set_alpha(0.5);
    //draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false); // background fade

    draw_set_alpha(1);
    draw_set_color(c_black);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_text(center_x, center_y - 50, "GAME PAUSED");
    draw_text(center_x, center_y + 10, "Press ESC to Resume");
}
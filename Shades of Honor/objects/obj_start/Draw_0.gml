/// @description Insert description here
// You can write your code in this editor
width = string_width(dis_text)
height = string_height(dis_text)
margin = 5

draw_set_color(c_white)
draw_rectangle(x-margin, y-margin, x+width+margin, y+height+margin, false)

draw_set_color(c_black)
draw_text(x,y,dis_text)


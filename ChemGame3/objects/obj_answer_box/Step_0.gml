item_count = 0;

with (obj_proton)
{
    if (point_in_rectangle(x, y, other.x, other.y, 
		other.x + other.box_width, other.y + other.box_height)) {
        other.item_count++;
    }
}
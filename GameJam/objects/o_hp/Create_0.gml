/// @description
vsp_initial = random_range(-6, -3);
vsp = vsp_initial;
hsp_initial = random_range(2, 5) * choose (-1, 1);
hsp = hsp_initial;
hsp_decimal = 0;
vsp_decimal = 0;
drag = 0.05;
die = false;

// pick color
image_index = irandom(image_number -1);

// has bounce happened
bounce = false;

// can be picked up
can_pickup = false;

// enable light
var inst = instance_create_layer(x, y, "Light", o_light);
light_id = inst.id;
inst.type = 5;
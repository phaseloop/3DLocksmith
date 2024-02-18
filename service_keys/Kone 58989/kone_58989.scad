// Tubular key generator by Stephen Smith
// https://www.printables.com/model/22341-tubular-key-customizable

// Modified by 3DLocksmith project for ACE-type bitting

// Set web_thickness = 0 in the code to go back to regular, non print-optimized
// key design


// Detail level
$fn = 50;

// Code to duplicate
key_code = [3,0,6,4,0,4,6];

/*[ Tensioner Dimensions ]*/
// Distance from tensioner to the end of the tube
tensioner_depth = 1.3;
// Distance from inner wall to end of tensioner
tensioner_length = 1.5;
// Width of the tensioner
tensioner_thickness = 1.3;

/*[ Tube Dimensions ]*/
// Length of the main tube
tube_length = 13;
// Outer diameter of the main tube
tube_OD = 9.0;
// Inner diameter of the main tube
tube_ID = 7.7;
// Depth of the main tube
tube_depth = 10;

/*[ Handle Dimensions ]*/
// Thickness of the key handle
handle_thickness = 1;
// Width of the key handle
handle_width = 10;
// Height of the handle
handle_height = 13;

/*[ Cut Specifications ]*/
// Radius of the key cuts
cut_radius = 2;
// Radial shift per cut in degrees
cut_shift = 45;
// Standard depths of each cut code
cut_depths = [0.38, 0.78, 1.16, 1.57, 1.95, 2.36, 2.76];
// Distance from inner wall of the tube to the cut
web_thickness = -1;

union() {
// Cylinder and cuts
difference() {
    cylinder(r=(tube_OD/2), h=tube_length);

    translate([0, 0, -1]) cylinder(r=(tube_ID/2), h=tube_depth+1);
    
    for (i = [1:len(key_code)]) {
        rotate([0, 0, -cut_shift*i]) {
            translate([0, -1*((tube_ID/2)+cut_radius+web_thickness), -1]) {
                cylinder(r=cut_radius, h=cut_depths[key_code[i-1]]+1);
            }
        }
    }
}
// Tensioner
difference() {
    translate([-1*(tensioner_thickness/2),-1*(tube_ID/2), tensioner_depth]) {
        cube([tensioner_thickness, tensioner_length, tube_depth-tensioner_depth]);
    }
}

// Handle
minkowski() {
    translate([-1*(handle_thickness/2), -1*(handle_width/2), tube_length]) {
        cube([handle_thickness, handle_width, handle_height]);
    }
    rotate([0, 90, 0]) sphere(r=handle_thickness/2,center=true);
    rotate([0, 90, 0]) cylinder(r=2,h=handle_thickness/2,center=true);
}
// Structural Bump
translate([0, 0, tube_length]) cylinder(r1=(tube_OD/2), r2=0, h=(handle_height/3));
}
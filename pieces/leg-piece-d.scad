use <../envelopes/servo-arm-envelope.scad>

legPieceD();

module legPieceD() {

    length = 50;
    width = 10;
    thickness = 3;

    hole_diameter = 3;

    difference() {        
        hull() {
            cylinder(h = thickness, r = width, center = false, $fn = 64);
            translate([0, length, 0])
            cylinder(h = thickness, r = width, center = false, $fn = 64);
        }

        translate([0, 0, 0])
        cylinder(h = thickness * 5, r = hole_diameter, center = true, $fn = 64);

        translate([0, length, 0])
        cylinder(h = thickness * 5, r = hole_diameter, center = true, $fn = 64);

    }
}

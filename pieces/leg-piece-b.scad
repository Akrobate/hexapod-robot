use <../envelopes/servo-envelope.scad>

module legPieceB(servo_axis_offset = 52) {

    length = 55;
    width = 10;
    thickness = 3;

    hole_diameter = 3;

    translate([0, -servo_axis_offset, 0])
    difference() {        
        hull() {
            cylinder(h = thickness, r = width, center = false, $fn = 64);
            translate([0, length, 0])
            cylinder(h = thickness, r = width, center = false, $fn = 64);
        }

        translate([0, 0, 0])
            cylinder(h = thickness * 5, r = hole_diameter, center = true, $fn = 64);


        translate([0, servo_axis_offset, 0])
            // scaling to prevent same size object
            servoEnvelope();
    }
}
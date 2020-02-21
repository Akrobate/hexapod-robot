use <../envelopes/servo-envelope.scad>

hipPieceA();


module hipPieceA(){

    difference() {
        union() {
            translate([-11.8 / 2, - 22.2 + (11.8 / 2) - 5, -20])
                cube([11.8, 32.2, 36], center = false);

            union() {
                translate([0, 0, -22]) {
                    cylinder(r= 11.8 / 2, h = 3, $fn = 32);
                    translate([0, 0, -4])
                        cylinder(r= 4.6 / 2, h = 4, $fn = 32);
                }
            }
        }

        translate([
                0,
                0,
                22.7 / 2 + 16 - 15.9
            ])
            servoEnvelope(servo_hole_scale = 1.05);
    }
}

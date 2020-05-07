servoArmEnvelope();

module servoArmEnvelope(hole_h = 7, arm_h = 2) {
    union() {
        translate([0, 0, 0])
        hull() {
            cylinder(h = arm_h, r = 3, center = false, $fn = 64);

            translate([0, 15.0, 0])
                cylinder(h = arm_h, r = 1.5, center = false, $fn = 64);
        }
        cylinder(h = hole_h, r = 2.8, center = true, $fn = 64);
    }
}

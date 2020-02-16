

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

module ___servoArmEnvelope() {
    union() {
        hull() {
            difference() {
                color("Red")
                    import("../assets/sg90/SG90_arm_v2.stl");

                translate([0, 0, 2])
                    cylinder(h = 10, r = 10, center = false);
            }
        }
        hull() {
            difference() {

                color("Red")
                    import("../assets/sg90/SG90_arm_v2.stl");

                translate([0, 0, -3])
                    cylinder(h = 5, r = 100, center = false);
            }
        }
    }
}
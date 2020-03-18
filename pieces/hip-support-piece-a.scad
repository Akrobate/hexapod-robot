use <../envelopes/servo-arm-envelope.scad>

hipSupportPieceA();

/**
 * hipSupportPieceA
 * @name hipSupportPieceA
 * @description Holds the hip component
 * @tag piece
 * @type piece
 * @parent LegHipComponent
 */
module hipSupportPieceA(
    length = 25,
    width = 11.8 + 6
) {
    thickness = 3;

    hole_diameter = 3;

    difference() {
        hull() {
            cylinder(h = thickness, r = width / 2, center = false, $fn = 64);
            
            translate([0, length - 1, thickness / 2])
                cube([width, 2, thickness], center = true);
        }

        translate([0, 0, 1.4])
            // scaling to prevent same size object
            scale([1.02, 1.02, 1])
                servoArmEnvelope(hole_h = 10, arm_h = 3);
    }
}

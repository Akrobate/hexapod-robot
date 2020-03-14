use <../envelopes/servo-arm-envelope.scad>
use <../assets/fonts/Freshman.ttf>

legPieceA();

/**
 * LegPieceA
 * @name LegPieceA
 * @description Hold servo arm to the leg
 * @category leg
 * @tag piece
 * @type piece
 * @parent LegComponent
 */
module legPieceA(
    length = 50,
    width = 6,
    name = "A"
) {
    thickness = 3;

    hole_diameter = 3;

    difference() {        
        hull() {
            cylinder(h = thickness, r = width, center = false, $fn = 64);
            translate([0, length, 0])
            cylinder(h = thickness, r = width, center = false, $fn = 64);
        }

        translate([0, 0, 1.4])
            // scaling to prevent same size object
            scale([1.02, 1.02, 1])
            servoArmEnvelope(hole_h = 10, arm_h = 3);

        translate([0, length, 0])
            cylinder(h = thickness * 5, r = hole_diameter, center = true, $fn = 64);
    }
}

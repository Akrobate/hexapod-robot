use <../envelopes/servo-arm-envelope.scad>
use <../assets/fonts/Freshman.ttf>

legPieceA();

/**
 * LegPieceA
 * @name LegPieceA
 * @description Hold servo arm to the leg
 * @type piece
 * @parent LegComponent
 * @stl
 */
module legPieceA(
    length = 40,
    width = 6
) {
    thickness = 3;

    hole_diameter = 6;

    _fn = 64;

    difference() {
        hull() {
            cylinder(h = thickness, r = width, center = false, $fn = _fn);
            translate([0, length, 0])
                cylinder(h = thickness, r = width, center = false, $fn = _fn);
        }

        translate([0, 0, 1.4])
            scale([1.02, 1.02, 1])
            servoArmEnvelope(hole_h = 10, arm_h = 3);

        translate([0, length, 0])
            cylinder(h = thickness * 5, r = hole_diameter / 2, center = true, $fn = _fn);
    }
}

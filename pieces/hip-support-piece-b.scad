use <../envelopes/servo-arm-envelope.scad>

hipSupportPieceB();

/**
 * hipSupportPieceB
 * @name hipSupportPieceB
 * @description Holds the hip component
 * @tag piece
 * @type piece
 * @parent LegHipComponent
 */
module hipSupportPieceB(
    length = 25,
    width = 11.8 + 6
) {
    thickness = 3;
    hole_diameter = 6;

    difference() {
        hull() {
            cylinder(h = thickness, r = width / 2, center = false, $fn = 64);
            
            translate([0, length - 1, thickness / 2])
                cube([width, 2, thickness], center = true);
        }

        cylinder(h = thickness * 5, r = hole_diameter / 2, center = true, $fn = 64);
    }
}

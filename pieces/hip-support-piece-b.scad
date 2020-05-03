use <../envelopes/servo-arm-envelope.scad>

hipSupportPieceB();

/**
 * hipSupportPieceB
 * @name hipSupportPieceB
 * @description Holds the hip component
 * @type piece
 * @parent LegHipComponent
 * @stl
 */
module hipSupportPieceB(
    length = 25,
    width = 18
) {
    thickness = 3;
    hole_diameter = 6;

    screw_hole_diameter = 3.5;

    difference() {
        hull() {
            cylinder(h = thickness, r = width / 2, center = false, $fn = 64);
            
            translate([0, length - 1, thickness / 2])
                cube([width, 2, thickness], center = true);
        }

        cylinder(h = thickness * 5, r = hole_diameter / 2, center = true, $fn = 64);

        // Screw holes
        translate([-4.5, length - 4, 0])
            cylinder(h = thickness * 5, r = screw_hole_diameter / 2, center = true, $fn = 64);

        translate([4.5, length - 4, 0])
            cylinder(h = thickness * 5, r = screw_hole_diameter / 2, center = true, $fn = 64);
    }
}

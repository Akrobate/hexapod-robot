use <../envelopes/servo-arm-envelope.scad>
use <../assets/fonts/Freshman.ttf>

legPieceC();

/**
 * LegPieceC
 * @name LegPieceC
 * @description Leg Piece C
 * @category leg
 * @type piece
 * @type piece
 * @parent LegComponent
 *
 * @param {Number} length - the length beetween the two asis holes
 * @param {Number} width - the width of the piece
 * @param {String} name - the name of the piece
 *
 */
module legPieceC(
    length = 50,
    width = 6,
    name = "C"
) {
    _fn = 64;
    thickness = 3;
    hole_diameter = 6;
    font_deep = 0.5;

    // Fixations holes configuration
    fixation_hole_diameter = 3.4;
    fixation1_x_offset = 14;
    fixation2_x_offset = 22;

    difference() {        
        hull() {
            cylinder(h = thickness, r = width, center = false, $fn = _fn);
            translate([0, length, 0])
                cylinder(h = thickness, r = width, center = false, $fn = _fn);
        }

        translate([0, 0, 0])
            cylinder(h = thickness * 5, r = hole_diameter / 2, center = true, $fn = _fn);

        translate([0, length, 0])
            cylinder(h = thickness * 5, r = hole_diameter / 2, center = true, $fn = _fn);

        // Fixation holes
        translate([0, fixation1_x_offset, 0])
            cylinder(h = thickness * 5, r = fixation_hole_diameter / 2, center = true, $fn = _fn);

        translate([0, fixation2_x_offset, 0])
            cylinder(h = thickness * 5, r = fixation_hole_diameter / 2, center = true, $fn = _fn);

    }
}

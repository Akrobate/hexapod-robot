use <../envelopes/servo-arm-envelope.scad>
use <../assets/fonts/Freshman.ttf>

legPieceC();

/**
 * LegPieceC
 * @description Leg Piece C
 * @category leg
 * @tag piece
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
    hole_diameter = 3;
    font_deep = 0.5;

    difference() {        
        hull() {
            cylinder(h = thickness, r = width, center = false, $fn = _fn);
            translate([0, length, 0])
                cylinder(h = thickness, r = width, center = false, $fn = _fn);
        }

        translate([width / 2, length / 2, thickness - font_deep + 0.01])
            rotate([0,0,90])
                linear_extrude(font_deep)
                    text(name, font = "Freshman", size = width, halign = "center", $fn = _fn);

        translate([0, 0, 0])
            cylinder(h = thickness * 5, r = hole_diameter, center = true, $fn = _fn);

        translate([0, length, 0])
            cylinder(h = thickness * 5, r = hole_diameter, center = true, $fn = _fn);

    }
}

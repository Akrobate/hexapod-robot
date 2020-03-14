use <../envelopes/servo-envelope.scad>
use <./subpieces/articulation-axis.scad>

legPieceD();

/**
 * LegPieceD
 * @name LegPieceD
 * @description Leg Piece D
 * @category leg
 * @tag piece
 * @type piece
 * @parent LegComponent
 */
module legPieceD(
    length = 30,
    height = 6,
    width = 20,
    _fn = 64
) {

    hull() {
        cylinder(h = length, r = height, center = false, $fn = _fn);
        translate([0, width, 0])
        cylinder(h = length, r = height, center = false, $fn = _fn);
    }

}
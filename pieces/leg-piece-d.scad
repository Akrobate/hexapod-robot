use <../envelopes/screw-envelope.scad>

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

    difference() {

        hull() {
            cylinder(h = length, r = height, center = false, $fn = _fn);
            translate([0, width, 0])
            cylinder(h = length, r = height, center = false, $fn = _fn);
        }

        // translate([0, 0, 0])
        //     rotate([0, 0, 0])
        //         screwEnvelope();
    }
}
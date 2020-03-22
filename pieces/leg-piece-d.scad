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
    height = 8,
    width = 8,
    _fn = 64
) {

    screw_enveloppe_head_height = 3;
    holes_deep_offset = 1;

    difference() {

        hull() {
            cylinder(h = length, r = height / 2, center = false, $fn = _fn);
            translate([0, width, 0])
            cylinder(h = length, r = height / 2, center = false, $fn = _fn);
        }

        // Bottom screws
        translate([0, 0, - screw_enveloppe_head_height - holes_deep_offset])
            rotate([0, 0, 0])
                screwEnvelope();
        
        translate([0, width, - screw_enveloppe_head_height - holes_deep_offset])
            rotate([0, 0, 0])
                screwEnvelope();

        // Top screws
        translate([0, 0, length + screw_enveloppe_head_height + holes_deep_offset])
            rotate([0, 180, 0])
                screwEnvelope();
        
        translate([0, width, length + screw_enveloppe_head_height + holes_deep_offset])
            rotate([0, 180, 0])
                screwEnvelope();
    }
}
use <./articulation-axis.scad>
use <../../envelopes/screw-envelope.scad>

articulationAxisScrewSubPiece();

/**
 * articulationAxisScrewSubPiece
 * @name articulationAxisScrewSubPiece
 * @description articlulation axix with screw throw
 * @tag subPiece
 * @type subPiece
 */
module articulationAxisScrewSubPiece(
    base_diameter = 10,
    base_height = 1,
    axis_diameter = 5,
    axis_height = 3,
    _fn = 128
) {

    difference() {
        articulationAxisSubPiece(
            base_diameter = base_diameter,
            base_height = base_height,
            axis_diameter = axis_diameter,
            axis_height = axis_height,
            _fn = _fn
        );

        translate([0, 0, 7.01])
            rotate([180, 0, 0])
                screwEnvelope();
    }
}
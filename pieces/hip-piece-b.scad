use <../envelopes/servo-envelope.scad>
use <../envelopes/screw-envelope.scad>
use <./subpieces/articulation-axis.scad>

// Positionning for printing
rotate([0, -90, 0])
    hipPieceB();

/**
 * HipPieceB
 * @name HipPieceB
 * @description Hip Piece B
 * @type piece
 * @parent HipComponent
 * @stl 
 */
module hipPieceB(
    x_offset_top_axis = -15,
    x_offset_bottom_axis = -15
) {

    main_piece_height = 36;
    articluation_axis_diameter_offest = 0.2;

    display_optional_screw_holes = false;
    
    screw_hole_diameter = 3.5;

    _fn = 64;

    difference() {
        union() {
            translate(
                [
                    0,
                    -32.2 + 5 + (11.8 / 2),
                    0
                ])
                cube([3, 32.2, main_piece_height]);

            translate(
                [
                    3,
                    x_offset_bottom_axis,
                    7
                ])
                rotate([0, 90, 0])
                    articulationAxisSubPiece(
                        base_diameter = 10,
                        base_height = 1,
                        axis_diameter = 6 - articluation_axis_diameter_offest,
                        axis_height = 3
                    );
        }

        // Hole for the screw of the bottom articulation axis
        if (display_optional_screw_holes)
            translate([4.01 + 3, x_offset_bottom_axis, 7])
                rotate([0, -90, 0])
                    screwEnvelope(center_screwed_position = true);
        
        // 4 Holes for the hip block fixations
        translate([1.5, 0, 0]) {
            translate([0, 6, 15])
                rotate([0, -90, 0])
                    cylinder(r = screw_hole_diameter / 2, h = 10, center = true, $fn = _fn);

            translate([0, -3, 15])
                rotate([0, -90, 0])
                    cylinder(r = screw_hole_diameter / 2, h = 10, center = true, $fn = _fn);

            translate([0, 6, 5])
                rotate([0, -90, 0])
                    cylinder(r = screw_hole_diameter / 2, h = 10, center = true, $fn = _fn);

            translate([0, -3, 5])
                rotate([0, -90, 0])
                    cylinder(r = screw_hole_diameter / 2, h = 10, center = true, $fn = _fn);
        }
    }
}

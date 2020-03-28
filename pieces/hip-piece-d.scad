use <../envelopes/servo-envelope.scad>
use <./subpieces/articulation-axis.scad>
use <../assets/screw/screw.scad>
use <../envelopes/screw-envelope.scad>

hipPieceD();

/**
 * HipPieceD
 * @name HipPieceD
 * @description Hip Piece D
 * @category hip
 * @tag piece
 * @type piece
 * @parent HipComponent
 */
module hipPieceD() {

    _fn = 32;
    debug_colors = true;
    
    main_piece_color = "#FF0000";
    main_piece_height = 10;
    
    articulation_support_color = "#00FF00";
    articulation_support_height = 1;

    articulation_color = "#0000FF";
    articulation_height = 3;

    articluation_axis_diameter_offest = 0.2;

    difference() {
        union() {
            translate(
                [
                    - 11.8 / 2,
                    - 22.2 + (11.8 / 2) - 5,
                    - 0
                ])
                color(debug_colors ? main_piece_color : "")
                cube(
                    [
                        11.8,
                        32.2,
                        main_piece_height
                    ], center = false);

            union() {
                mirror([0, 0, 1])
                    articulationAxisSubPiece(
                        base_diameter = 11.8,
                        base_height = articulation_support_height,
                        axis_diameter = 6 - articluation_axis_diameter_offest,
                        axis_height = articulation_height,
                        _fn = _fn
                    );
            }
        }

        translate([- (11.8 / 2) - 3 - 2.8, 0, 0]) {
            translate([0, 6, 5])
                rotate([0, 90, 0])
                    screwEnvelope();

            translate([0, -3, 5])
                rotate([0, 90, 0])
                    screwEnvelope();
        }

        translate([(11.8 / 2) + 3 + 2.8, 0, 0]) {
            translate([0, 6, 5])
                rotate([0, -90, 0])
                    screwEnvelope();

            translate([0, -3, 5])
                rotate([0, -90, 0])
                    screwEnvelope();
        }

    }
}

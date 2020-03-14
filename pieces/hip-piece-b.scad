use <../envelopes/servo-envelope.scad>
use <./subpieces/articulation-axis.scad>

hipPieceB();

/**
 * HipPieceB
 * @name HipPieceB
 * @description Hip Piece B
 * @category hip
 * @tag piece
 * @type piece
 * @parent HipComponent
 */
module hipPieceB(
    x_offset_top_axis = -15,
    x_offset_bottom_axis = -15
) {

    main_piece_height = 36;
    
    translate(
        [
            0,
            -32.2 + 5 + (11.8 / 2),
            0
        ])
        union() {
            cube([3, 32.2, main_piece_height]);
            translate(
                [
                    3,
                    32.2 - 5 - (11.8 / 2) + x_offset_bottom_axis,
                    7
                ])
                rotate([0, 90, 0])
                    articulationAxisSubPiece(
                        base_diameter = 10,
                        base_height = 1,
                        axis_diameter = 5,
                        axis_height = 3
                    );
        }
}

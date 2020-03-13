use <../envelopes/servo-envelope.scad>
use <./subpieces/articulation-axis.scad>
hipPieceA();

/**
 * HipPieceA
 * @description Hip Piece A
 * @category hip
 * @tag piece
 */
module hipPieceA() {

    _fn = 32;
    debug_colors = false;
    
    main_piece_color = "#FF0000";
    main_piece_height = 26;

    difference() {
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

        translate([
                0,
                0,
                main_piece_height + 22.7 / 2 - 15.9
            ])
            servoEnvelope(servo_hole_scale = 1.05);
    }
}

use <../envelopes/servo-envelope.scad>
use <../envelopes/screw-envelope.scad>
use <./subpieces/articulation-axis.scad>

hipPieceA();

/**
 * HipPieceA
 * @name HipPieceA
 * @description Hip Piece A
 * @type piece
 * @parent HipComponent
 * @stl 
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

        // Cable hole
        translate([-2.5, 5, main_piece_height - 17])
            cube([5, 10, 8]);

        translate([0, 0, -10]) {
        
            // B face screws holes
            translate([(11.8 / 2) + 3 + 2.8, 0, 0]) {
                translate([0, 6, 15])
                    rotate([0, -90, 0])
                        screwEnvelope();

                translate([0, -3, 15])
                    rotate([0, -90, 0])
                        screwEnvelope();
            }

            // C face screws holes
            translate([ -(11.8 / 2) - 3 - 2.8, 0, 0]) {
                translate([0, 6, 15])
                    rotate([0, 90, 0])
                        screwEnvelope();

                translate([0, -3, 15])
                    rotate([0, 90, 0])
                        screwEnvelope();
            }
        }
    }
}

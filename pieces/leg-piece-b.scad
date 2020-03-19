use <../envelopes/servo-envelope.scad>
use <./subpieces/articulation-axis.scad>

legPieceB();

/**
 * LegPieceB
 * @name LegPieceB
 * @description Leg Piece B (Holds servo motor)
 * @category leg
 * @tag piece
 * @type piece
 * @parent LegComponent
 */
module legPieceB(
    length = 70,
    servo_axis_offset = 52,
    fixation_axis_offset = 29
    ) {

    _fn = 64;
    width = 10;
    thickness = 6;

    support_diameter = 12;
    support_thickness = 12.29;
    
    articluation_axis_diameter_offest = 0.2;

    hole_diameter = 3;

    translate([0, -servo_axis_offset, 0]) {

        union() {
            difference() {    
                hull() {
                    cylinder(h = thickness, r = width, center = false, $fn = _fn);
                    translate([0, length, 0])
                    cylinder(h = thickness, r = width, center = false, $fn = _fn);
                }

                translate([0, servo_axis_offset, 0])
                    rotate([0, 0, 180])
                        servoEnvelope();
            }

            
            translate([0, 0, thickness])
                difference() {
                    translate([0, fixation_axis_offset, 0]) {
                        cylinder(h = support_thickness, r = support_diameter / 2, center = false, $fn = _fn);
                        translate([0, 0, support_thickness])
                            rotate([0, 0, 0])
                                articulationAxisSubPiece(
                                    base_diameter = 10,
                                    base_height = 1,
                                    axis_diameter = 6 - articluation_axis_diameter_offest,
                                    axis_height = 3
                                );
                    }


                    //translate([0, fixation_axis_offset, 0])
                    //    cylinder(h = thickness * support_thickness, r = hole_diameter, center = true, $fn = _fn);
                }
        }
    }
}

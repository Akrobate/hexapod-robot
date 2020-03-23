use <../envelopes/servo-envelope.scad>
use <./subpieces/articulation-axis.scad>

legPieceE();

/**
 * LegPieceE
 * @name LegPieceE
 * @description Leg Piece E
 * @category leg
 * @tag piece
 * @type piece
 * @parent LegComponent
 */
module legPieceE(
    length = 35,
    servo_axis_offset = 52,
    screw_hole_offset_1 = 15,
    screw_hole_offset_2 = 25,
) {

    screw_hole_diameter = 3;

    _fn = 64;
    width = 10;
    thickness = 3;

    support_diameter = 12;
    support_thickness = 0.5;
    
    articluation_axis_diameter_offest = 0.2;

    hole_diameter = 3;

    difference() {

        union() {

            hull() {
                cylinder(h = thickness, r = width, center = false, $fn = _fn);
                translate([0, length, 0])
                cylinder(h = thickness, r = width, center = false, $fn = _fn);
            }
            
            translate([0, 0, thickness]) {
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
        }
        
        translate([0, screw_hole_offset_1, thickness / 2])
            cylinder(h = thickness * 2, r = screw_hole_diameter / 2, center = true, $fn = _fn);

        translate([0, screw_hole_offset_2, thickness / 2])
            cylinder(h = thickness * 2, r = screw_hole_diameter / 2, center = true, $fn = _fn);

    }
}

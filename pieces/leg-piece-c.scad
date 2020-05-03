
// Printable positionning

translate([10, 0, 3])
    rotate([0, 180, 0])
    legPieceC();

translate([-10, 0, 3])
    rotate([0, 180, 0])
        mirror([1, 0, 0])
            legPieceC();

/**
 * LegPieceC
 * @name LegPieceC
 * @description Leg Piece C
 * @type piece
 * @parent LegComponent
 * @stl
 */
module legPieceC(
    length = 40,
    width = 6
) {
    _fn = 64;
    thickness = 3;
    hole_diameter = 6;

    // Fixations holes configuration
    screw_hole_diameter = 3.5;
    fixation1_x_offset = 14;
    fixation2_x_offset = 22;

    difference() {        
        hull() {
            cylinder(h = thickness, r = width, center = false, $fn = _fn);
            translate([0, length, 0])
                cylinder(h = thickness, r = width, center = false, $fn = _fn);
        }

        translate([0, 0, 0])
            cylinder(h = thickness * 5, r = hole_diameter / 2, center = true, $fn = _fn);

        translate([0, length, 0])
            cylinder(h = thickness * 5, r = hole_diameter / 2, center = true, $fn = _fn);

        // Fixation holes
        translate([0, fixation1_x_offset, 0])
            cylinder(h = thickness * 5, r = screw_hole_diameter / 2, center = true, $fn = _fn);

        translate([0, fixation2_x_offset, 0])
            cylinder(h = thickness * 5, r = screw_hole_diameter / 2, center = true, $fn = _fn);

        // Places for screw head
        translate([0, fixation1_x_offset, -2])
            cylinder(h = thickness, r = 4.4, center = false, $fn = _fn);

        translate([0, fixation2_x_offset, -2])
            cylinder(h = thickness, r = 4.4, center = false, $fn = _fn);

    }
}

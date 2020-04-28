
bodyPieceC();

/**
 * bodyPieceA
 * @name bodyPieceA
 * @description Body piece A
 * @type piece
 * @parent bodyComponent
 */

module bodyPieceC(
    length = 60,
    width = 18
) {
    thickness = 3;
    hole_diameter = 6;

    screw_hole_diameter = 3.5;

    difference() {
        cube([width, length, thickness], center = false);

        translate([width / 2, length, 0]) {
            // Screw holes
            translate([-4.5,  -4, 0])
                cylinder(h = thickness * 5, r = screw_hole_diameter / 2, center = true, $fn = 64);

            translate([4.5, -4, 0])
                cylinder(h = thickness * 5, r = screw_hole_diameter / 2, center = true, $fn = 64);
        }

        translate([width / 2, 0, 0]) {
            // Screw holes
            translate([-4.5,  4, 0])
                cylinder(h = thickness * 5, r = screw_hole_diameter / 2, center = true, $fn = 64);

            translate([4.5, 4, 0])
                cylinder(h = thickness * 5, r = screw_hole_diameter / 2, center = true, $fn = 64);
        }


        // interblock fixation holes
        length_offset_interblock_fixation_holes = 12;

        translate([width / 2, length, 0]) {
            // Screw holes
            translate([-4.5,  -length_offset_interblock_fixation_holes, 0])
                cylinder(h = thickness * 5, r = screw_hole_diameter / 2, center = true, $fn = 64);

            translate([4.5, -length_offset_interblock_fixation_holes, 0])
                cylinder(h = thickness * 5, r = screw_hole_diameter / 2, center = true, $fn = 64);
        }

        translate([width / 2, 0, 0]) {
            // Screw holes
            translate([-4.5,  length_offset_interblock_fixation_holes, 0])
                cylinder(h = thickness * 5, r = screw_hole_diameter / 2, center = true, $fn = 64);

            translate([4.5, length_offset_interblock_fixation_holes, 0])
                cylinder(h = thickness * 5, r = screw_hole_diameter / 2, center = true, $fn = 64);
        }

    }
}
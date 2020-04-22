use <../envelopes/screw-envelope.scad>

// Positionning for printing
translate([0, -25, 4])
    rotate([-90, 0, 0])
        hipSupportPieceC();

/**
 * hipSupportPieceC
 * @name hipSupportPieceC
 * @description Holds the hip component
 * @tag piece
 * @type piece
 * @parent LegHipComponent
 */
module bodyPieceB(
    length = 8,
    width = 18,
    height = 40
) {

    holes_diameter = 3.5;

    _fn = 64;

    translate([0, 0, height / 2]) {
        difference() {
            cube(
                [
                    width,
                    length,
                    height
                ],
                center = true
            );

            translate([0, 0, -5])
                rotate([90, 0, 0])
                    cylinder(r = holes_diameter / 2, h = length * 2, center = true, $fn = _fn);

            translate([0, 0, 5])
                rotate([90, 0, 0])
                    cylinder(r = holes_diameter / 2, h = length * 2, center = true, $fn = _fn);


            // Places for screw heads
            hull() {
                translate([0, -3, -5])
                    rotate([90, 0, 0]) {
                        cylinder(r = 4.5, h = length, center = true, $fn = _fn);
                    }
                translate([0, -3, 5])
                    rotate([90, 0, 0]) {
                        cylinder(r = 4.5, h = length, center = true, $fn = _fn);
                    }
            }

            // Bottom screw holes
            translate([-4.5, 0, -height / 2 - 3])
                rotate([0, 0, 0])
                    screwEnvelope(center_screwed_position = true);

            translate([4.5, 0, -height / 2 - 3])
                rotate([0, 0, 0])
                    screwEnvelope(center_screwed_position = true);

            // top screw holes
            translate([-4.5, 0, height / 2 + 3])
                rotate([180, 0, 0])
                    screwEnvelope(center_screwed_position = true);

            translate([4.5, 0, height / 2 + 3])
                rotate([180, 0, 0])
                    screwEnvelope(center_screwed_position = true);

        }

    }
}


bodyPieceD();

module bodyPieceD(
    with_platform = true
) {

    fixations_position_lenth = 60;
    fixations_position_width = 40;

    branches_width = 12;

    platform_lenth = 40;
    platform_width = 30;
    platform_z_offset = 1;

    _fn = 64;
    thickness = 3;

    // Fixations holes configuration
    screw_hole_diameter = 3.5;

    union() {
        difference() {        
            hull() {
                translate([0, 0, 0])
                    cylinder(h = thickness, r = branches_width / 2, center = false, $fn = _fn);
                translate([fixations_position_lenth, fixations_position_width, 0])
                    cylinder(h = thickness, r = branches_width / 2, center = false, $fn = _fn);
            }
            translate([0, 0, 0])
                cylinder(h = thickness * 5, r = screw_hole_diameter / 2, center = true, $fn = _fn);

            translate([fixations_position_lenth, fixations_position_width, 0])
                cylinder(h = thickness * 5, r = screw_hole_diameter / 2, center = true, $fn = _fn);
        }

        difference() {        
            hull() {
                translate([0, fixations_position_width, 0])
                    cylinder(h = thickness, r = branches_width / 2, center = false, $fn = _fn);
                translate([fixations_position_lenth, 0, 0])
                    cylinder(h = thickness, r = branches_width / 2, center = false, $fn = _fn);
            }
            translate([0, fixations_position_width, 0])
                cylinder(h = thickness * 5, r = screw_hole_diameter / 2, center = true, $fn = _fn);

            translate([fixations_position_lenth, 0, 0])
                cylinder(h = thickness * 5, r = screw_hole_diameter / 2, center = true, $fn = _fn);
        }

        // Platfor for components
        if (with_platform)
            translate([
                fixations_position_lenth / 2,
                fixations_position_width / 2,
                thickness / 2 + platform_z_offset
                ])
                cube([platform_lenth, platform_width, thickness], center = true);

    }

}
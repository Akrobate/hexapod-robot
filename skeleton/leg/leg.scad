use <../../assets/fonts/Freshman.ttf>

use <./bone.scad>

legSkeleton();

module legSkeleton(name = "L", angle_s1 = 0, angle_s2 = 0) {

    leg_length = 40;
    bone_size = 2;

    rotate([0, -angle_s2, angle_s1]) {
        difference() {
            union() {
                color("Gainsboro")
                    cylinder(r = 10, h = bone_size, center = true);
                boneSkeleton(leg_length, bone_size);
            }
            translate([0, 0, 0.1])
                rotate([0,0,90])
                    linear_extrude(1)
                        text(name, font = "Freshman", size = 6, halign = "center", valign = "center", $fn = 64);
        }
        translate([leg_length, 0, 0])
            rotate([0, angle_s2 + 90, 0])
                union() {
                    color("Gainsboro")
                        rotate([90,0,0])
                        cylinder(r = 5, h = bone_size, center = true);
                        boneSkeleton(leg_length, bone_size);
                }
    }

}
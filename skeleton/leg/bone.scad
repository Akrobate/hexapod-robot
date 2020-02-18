boneSkeleton();

module boneSkeleton(leg_length = 50, bone_size = 2) {
    translate([0, -bone_size / 2, -bone_size / 2])
        color("Gainsboro")
            cube([leg_length, bone_size, bone_size], center = false);
}

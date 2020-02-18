
bodySkeleton();

module bodySkeleton(body_length = 200, body_width = 80, bone_size = 2) {
    difference() {
        color("Gainsboro")
            cube([body_length, body_width, bone_size], center = true);
        cube([body_length - (bone_size * 2), body_width  - (bone_size * 2), bone_size * 2], center = true);
    }
}
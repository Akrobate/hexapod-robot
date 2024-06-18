        

module bone(length, width, thickness, _fn) {
    hull() {
        cylinder(h = thickness, r = width, center = false, $fn = _fn);
        translate([0, length, 0])
            cylinder(h = thickness, r = width, center = false, $fn = _fn);
    }
}


// demo bone
bone(
    length = 40,
    width = 6,
    thickness = 3,
    _fn = 128
);

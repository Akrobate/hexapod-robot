
screw();

module screw(
    center_screwed_position = false,
    diameter_ajustment_head = 0.2,
    diameter_ajustment_screw = -0.1,
    _fn = 128
) {

    head_height = 2.1;
    middle_height = 0.9;
    bottom_height = 6;

    z_centring_translation = center_screwed_position ? -head_height -middle_height : 0;

    translate([0,0, z_centring_translation])
        union() {
            cylinder(
                r = 7.95 / 2 + diameter_ajustment_head,
                h = head_height + middle_height,
                $fn = _fn);
            translate([0, 0, head_height + middle_height])
                cylinder(
                    r1 = 3.4 / 2 + diameter_ajustment_screw,
                    r2 = 3.1 / 2 + diameter_ajustment_screw,
                    h = bottom_height,
                    $fn = _fn
                );
        }
}
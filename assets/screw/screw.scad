// https://www.amazon.fr/TOOGOO-Quadrex-courte-Boitier-dordinateur/dp/B00KBPORXU/ref=sr_1_33?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&keywords=visserie+ordinateur&qid=1583356374&sr=8-33

screw();

module screw(center_screwed_position = false) {

    _fn = 128;
    head_height = 2.1;
    middle_height = 0.9;
    bottom_height = 6;

    z_centring_translation = center_screwed_position ? -head_height -middle_height : 0;

    translate([0,0, z_centring_translation])
        color("#BBB")
            difference() {
                union() {
                    cylinder(r = 7.20 / 2, h = head_height, $fn = 6);
                    
                    translate([0, 0, head_height])
                        cylinder(r = 7.95 / 2, h = middle_height, $fn = _fn);
                    
                    translate([0, 0, head_height + middle_height])
                        cylinder(r1 = 3.4 / 2, r2 = 3.1 / 2, h = bottom_height, $fn = _fn);
                }

                union() {
                    cube([4,1,1.5], center = true);
                    cube([1,4,1.5], center = true);
                }
            }
}

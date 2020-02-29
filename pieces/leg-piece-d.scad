use <../envelopes/servo-arm-envelope.scad>
use <../assets/fonts/Freshman.ttf>

legPieceD();

module legPieceD() {

    length = 50;
    width = 6;
    thickness = 3;

    hole_diameter = 3;

    font_deep = thickness / 3;



    difference() {        
        hull() {
            cylinder(h = thickness, r = width, center = false, $fn = 64);
            translate([0, length, 0])
            cylinder(h = thickness, r = width, center = false, $fn = 64);
        }

        translate([width / 2, length / 2, thickness - font_deep + 0.01])
            rotate([0,0,90])
                linear_extrude(font_deep)
                    text("A", font = "Freshman", size = width, halign = "center", $fn = 64);

        translate([0, 0, 0])
        cylinder(h = thickness * 5, r = hole_diameter, center = true, $fn = 64);

        translate([0, length, 0])
        cylinder(h = thickness * 5, r = hole_diameter, center = true, $fn = 64);

    }
}

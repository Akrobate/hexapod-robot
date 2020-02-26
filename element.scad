// Draft file

use <components/leg.scad>
use <components/hip.scad>
use <envelopes/servo-envelope.scad>
use <components/servo-motor.scad>

// leg tests
angle = $t < 0.5 ? $t * 360 : 360 - $t * 360;
// angle = 90;
// rotate([0, 0, angle])
leg_angle = 45 + ($t < 0.5 ? $t * 180 : 180 - $t * 180);


use <pieces/subpieces/articulation-axis.scad>
articulationAxisSubPiece();

translate([50,50,0])
rotate([0, 0, leg_angle]) {
    translate([10, -10, 25])
        rotate([0, -90, 0])
            leg(param_s1 = leg_angle);

    translate([0,0,0])
        hip(param_s1 = leg_angle);

}
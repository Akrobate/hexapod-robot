// Draft file

use <components/leg.scad>
use <components/hip.scad>
use <components/hip-support.scad>
use <assets/screw/screw.scad>

/**
 * HipLeg
 * @name HipLed
 * @description HipLeg
 * @category root
 * @tag component
 * @type component
 */

// leg tests
angle = $t < 0.5 ? $t * 360 : 360 - $t * 360;
// angle = 90;
// rotate([0, 0, angle])
leg_angle = 45 + ($t < 0.5 ? $t * 180 : 180 - $t * 180);

// min: 60
// max: 120
leg_angle = 90;

display_screws = true;



translate([0,0,0])

    rotate([0, 0, 90])
        translate([0, 0, -3 -1])
            hipSupport();

    rotate([0, 0, leg_angle]) {
        translate([11.1, -15, 30]) // 10
            rotate([0, -90, 0])
                leg(param_s1 = leg_angle);

        translate([0,0,0])
            hip(param_s1 = leg_angle + 90);
    }
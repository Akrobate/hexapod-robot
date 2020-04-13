use <leg.scad>
use <hip.scad>
use <hip-support.scad>
use <../assets/screw/screw.scad>

hipLeg();

/**
 * HipLeg
 * @name legElement
 * @description HipLeg
 * @tag component
 * @type component
 */

module hipLeg(
    angle_knee = 90,
    angle_hip = 90,
    display_screws = true
) {

    rotate([0, 0, 90])
        translate([0, 0, -3 -1])
            hipSupport();

    rotate([0, 0, angle_hip]) {
        translate([11.1, -15, 30]) // 10
            rotate([0, -90, 0])
                leg(param_s1 = angle_knee);

        translate([0,0,0])
            hip(param_s1 = angle_hip + 90);
    }
}
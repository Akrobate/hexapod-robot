use <leg.scad>
use <hip.scad>
use <hip-support.scad>
use <../assets/screw/screw.scad>

hipLegComponent(
    angle_knee = 0,
    angle_hip = 0
);

/**
 * HipLeg
 * @name legElement
 * @description HipLeg
 * @tag component
 * @type component
 * @parent hexapodRobot
 */

module hipLegComponent(
    angle_knee = 0,
    angle_hip = 0,
    center_on_fixation = true,
    display_screws = true
) {

    if (center_on_fixation) {
        translate([25.0, 0, -24.15])
            assembly();
    } else {
        assembly();
    }

    module assembly() {
        rotate([0, 0, 90])
            translate([0, 0, -3 -1])
                hipSupport();

        rotate([0, 0, angle_hip + 90]) {
            translate([11.1, -15, 30])
                rotate([0, -90, 0])
                    leg(servo_angle = angle_knee);

            translate([0,0,0])
                hip(param_s1 = angle_hip + 90);
        }
    };

}
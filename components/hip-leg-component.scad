use <leg-component.scad>
use <hip-component.scad>
use <hip-support-component.scad>
use <../assets/screw/screw.scad>

hipLegComponent(
    angle_knee = 0,
    angle_hip = 0
);

/**
 * hipLegComponent
 * @name hipLegComponent
 * @description HipLeg
 * @type component
 * @parent hexapodRobotComponent
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
                hipSupportComponent();

        rotate([0, 0, angle_hip + 90]) {
            translate([11.1, -15, 30])
                rotate([0, -90, 0])
                    legComponent(servo_angle = angle_knee);

            translate([0,0,0])
                hipComponent(param_s1 = angle_hip + 90);
        }
    };

}
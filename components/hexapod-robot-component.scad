// Draft file
use <hip-leg-component.scad>
use <body-component.scad>

hexapodRobotComponent();

/**
 * hexapodRobotComponent
 * @name hexapodRobotComponent
 * @description Full robot assembly
 * @type component
 * @parent root
 */

module hexapodRobotComponent(
    left_leg_1_hip = 0,
    left_leg_2_hip = 0,
    left_leg_3_hip = 0,
    right_leg_1_hip = 0,
    right_leg_2_hip = 0,
    right_leg_3_hip = 0,
    left_leg_1_knee = 0,
    left_leg_2_knee = 0,
    left_leg_3_knee = 0,
    right_leg_1_knee = 0,
    right_leg_2_knee = 0,
    right_leg_3_knee = 0
) {

    bot_length = 150;
    bot_width = 60;

    // body
    translate([- bot_length / 2, - bot_width / 2, -20])
        bodyComponent();

    // left side
    translate([bot_length / 2, bot_width / 2, 0])
        rotate([0, 0, 90])
            hipLegComponent(left_leg_1_knee, left_leg_1_hip);

    translate([0, bot_width / 2, 0])
        rotate([0, 0, 90])
            hipLegComponent(left_leg_2_knee, left_leg_2_hip);

    translate([ - bot_length / 2, bot_width / 2, 0])
        rotate([0, 0, 90])
            hipLegComponent(left_leg_3_knee, left_leg_3_hip);

    // right side
    translate([bot_length / 2, - bot_width / 2, 0])
        rotate([0, 0, -90])
            mirror([0, 1, 0])
                hipLegComponent(right_leg_1_knee, right_leg_1_hip);

    translate([0, - bot_width / 2, 0])
        rotate([0, 0, -90])
            mirror([0, 1, 0])
                hipLegComponent(right_leg_2_knee, right_leg_2_hip);

    translate([ - bot_length / 2, - bot_width / 2, 0])
        rotate([0, 0, -90])
            mirror([0, 1, 0])
                hipLegComponent(right_leg_3_knee, right_leg_3_hip);
}
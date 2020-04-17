// Draft file
use <components/hip-leg.scad>


// leg tests
angle = $t < 0.5 ? $t * 360 : 360 - $t * 360;
// angle = 90;
// rotate([0, 0, angle])
leg_angle = 45 + ($t < 0.5 ? $t * 180 : 180 - $t * 180);

// min: 60
// max: 120
leg_angle = 90;
angle_knee = 0;
angle_hip = 0;

bot_length = 150;
bot_width = 60;
bone_size = 2;

// left side
translate([bot_length / 2, bot_width / 2, 0])
    rotate([0, 0, 90])
        hipLeg(angle_knee, angle_hip);

translate([0, bot_width / 2, 0])
    rotate([0, 0, 90])
        hipLeg(angle_knee, angle_hip);

translate([ - bot_length / 2, bot_width / 2, 0])
    rotate([0, 0, 90])
        hipLeg(angle_knee, angle_hip);

// right side

translate([bot_length / 2, - bot_width / 2, 0])
    rotate([0, 0, -90])
        mirror([0, 1, 0])
            hipLeg(angle_knee, angle_hip);

translate([0, - bot_width / 2, 0])
    rotate([0, 0, -90])
        mirror([0, 1, 0])
            hipLeg(angle_knee, angle_hip);

translate([ - bot_length / 2, - bot_width / 2, 0])
    rotate([0, 0, -90])
        mirror([0, 1, 0])
            hipLeg(angle_knee, angle_hip);

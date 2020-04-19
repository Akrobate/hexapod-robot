use <components/hexapod-robot.scad>

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


hexapodRobot(
    left_leg_1_hip = angle_hip,
    left_leg_2_hip = angle_hip,
    left_leg_3_hip = angle_hip,
    right_leg_1_hip = angle_hip,
    right_leg_2_hip = angle_hip,
    right_leg_3_hip = angle_hip,
    left_leg_1_knee = angle_knee,
    left_leg_2_knee = angle_knee,
    left_leg_3_knee = angle_knee,
    right_leg_1_knee = angle_knee,
    right_leg_2_knee = angle_knee,
    right_leg_3_knee = angle_knee
);

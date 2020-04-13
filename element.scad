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


hipLeg(
    leg_angle,
    leg_angle
);

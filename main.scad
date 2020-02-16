use <components/leg.scad>
use <element.scad>
use <envelopes/servo-envelope.scad>
use <components/servo-motor.scad>
use <pieces/leg-piece-b.scad>

//angle = $t < 0.5 ? $t * 180
angle = $t < 0.5 ? $t * 360 : 360 - $t * 360;
// angle = 90;

// rotate([0, 0, angle])

leg_angle = 45 + ($t < 0.5 ? $t * 180 : 180 - $t * 180);

leg(param_s1 = leg_angle);


// translate([20,20,0])

// servoEnvelope();

//legPieceB();

// servoMotor();
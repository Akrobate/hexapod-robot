use <../pieces/leg-piece-a.scad>
use <../pieces/leg-piece-b.scad>
use <../pieces/leg-piece-c.scad>
use <../pieces/leg-piece-d.scad>

use <./servo-motor.scad>

module leg(param_s1 = 0) {

    angle_s1_start = -90;
    
    angle_s1 = param_s1 + angle_s1_start;

    hip_knee_distance = 40;

    rotate([0, 0, -angle_s1]) {
        translate([0, -hip_knee_distance, 0]) {
            translate([0, 0, 21])
                legPieceA(length = hip_knee_distance, width = 6, name = "A");
            
            translate([0,0, -8.2])
            rotate([0,0, angle_s1 - 90]) {
                rotate([0, 0, 180])
                    servoMotor(angle_s1 - 90);

                translate([0, 0, 15.9 - 3]) {
                    legPieceB();
                }
                
            }
        }
    }

    translate([-23, 0, 0])
        rotate([0, 0, -angle_s1 + 180]){
            translate([0, 0, 21])
                legPieceC(length = hip_knee_distance, width = 6, name = "C1");
            translate([0, 0, -1.80])
                legPieceC(length = hip_knee_distance, width = 6, name = "C2");

            translate([0, 16, 1])
                legPieceD(
                    length = 20,
                    height = 6,
                    width = 5
                );
        }

}


use <../pieces/leg-piece-a.scad>
use <../pieces/leg-piece-b.scad>
use <../pieces/leg-piece-c.scad>
use <../pieces/leg-piece-d.scad>

use <./servo-motor.scad>

/**
 * LegComponent
 * @name LegComponent
 * @description Leg assembly
 * @category HipLeg
 * @tag component
 * @type component
 * @parent HipLeg
 */
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

                translate([0, 0, 15.9 - 6]) {
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

            translate([0, 14, 1.2])
                color("orange")
                legPieceD(
                    length = 11.8 + 3 + 3 + 1 + 1,
                    height = 8,
                    width = 8
                );
        }

}


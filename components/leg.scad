use <../pieces/leg-piece-a.scad>
use <../pieces/leg-piece-b.scad>
use <../pieces/leg-piece-c.scad>
use <../pieces/leg-piece-d.scad>
use <../pieces/leg-piece-e.scad>

use <./servo-motor.scad>
use <../assets/screw/screw.scad>

leg(90);

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
                legPieceA(length = hip_knee_distance, width = 6);
            
            translate([0,0, -8.2])
            rotate([0,0, angle_s1 - 90]) {
                rotate([0, 0, 180])
                    servoMotor(angle_s1 - 90);

                translate([0, 0, 15.9 - 3]) {
                    legPieceB();
                }
                
                translate([0, -23, 15.9 - 3]) {
                    rotate([0, 180, 180])
                    legPieceE();

                    translate([0, -15, -5.5])
                        screw();

                    translate([0, -25, -5.5])
                        screw();
                }
            }
        }
    }

    translate([-23, 0, 0])
        rotate([0, 0, -angle_s1 + 180]){
            translate([0, 0, 24])
                mirror([0,0,1])
                    legPieceC(length = hip_knee_distance, width = 6);
            translate([0, 0, -1.80])
                legPieceC(length = hip_knee_distance, width = 6);

            translate([0, 14, 1.2])
                color("orange")
                legPieceD(
                    length = 11.8 + 3 + 3 + 1 + 1,
                    height = 8,
                    width = 8
                );

            screws_offset = -1;

            translate([0, 14, -4.8 - screws_offset])
                screw();

            translate([0, 22, -4.8 - screws_offset])
                screw();

            translate([0, 14, 27 + screws_offset])
                rotate([0, 180, 0])
                    screw();

            translate([0, 22, 27 + screws_offset])
                rotate([0, 180, 0])
                    screw();
        }

}


use <../pieces/leg-piece-a.scad>
use <../pieces/leg-piece-b.scad>
use <../pieces/leg-piece-c.scad>
use <../pieces/leg-piece-d.scad>
use <../pieces/leg-piece-e.scad>

use <./servo-motor.scad>

module leg(param_s1 = 0) {

    angle_s1_start = -90;
    
    angle_s1 = param_s1 + angle_s1_start;
 
    rotate([0, 0, -angle_s1]) {
        translate([0, -50, 0]) {
            translate([0, 0, 29.2])
                legPieceA();
            
            translate([0, 0, -9])
                legPieceD();

            rotate([0,0, angle_s1 - 90]) {
                servoMotor(angle_s1 + 90);


                translate([0, 0, 15.9 - 3]) {
                    legPieceB();
                }
                
                translate([0, 0, -5]) {
                    legPieceC();
                }
            }
        }
    }

    translate([-37, 0, 0])
        rotate([0, 0, -angle_s1 + 180]){
            translate([0, 0, 29.2])
            legPieceE();
            translate([0, 0, -9])
            legPieceE();
        }

}


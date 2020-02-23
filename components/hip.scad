use <../pieces/hip-piece-a.scad>
use <../pieces/hip-piece-b.scad>
use <../pieces/hip-piece-c.scad>

use <./servo-motor.scad>


hip();

module hip() {

    hipPieceA();

    translate([11.8/2, 0, 0])
        hipPieceB();

    translate([- 11.8/2 -3, 0, 0])
        hipPieceC();
    translate([0, 0, 36 - 15.9])
        servoMotor(90);

}

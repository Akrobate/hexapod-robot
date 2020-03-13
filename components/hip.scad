use <../pieces/hip-piece-a.scad>
use <../pieces/hip-piece-b.scad>
use <../pieces/hip-piece-c.scad>
use <../pieces/hip-piece-d.scad>
use <./servo-motor.scad>
use <../assets/screw/screw.scad>

hip();

/**
 * Hip
 * @description Hip assembly
 * @category HipLeg
 * @tag component
 */
module hip(param_s1) {

    
    translate([0, 0, 10])
        color("#337733")
            hipPieceA();
    
    hipPieceD();

    translate([11.8/2, 0, 0])
        hipPieceB();

    translate([- 11.8/2 -3, 0, 0])
        hipPieceC();
 
    translate([0, 0, 36 - 15.9])
        servoMotor(param_s1);

            
    // Hip screw one side
    translate([
        -(11.8 / 2) - 6,
        0,
        0
    ]) {
        translate([0, 6, 15])
            rotate([0, 90, 0])
                screw();

        translate([0, -3, 15])
            rotate([0, 90, 0])
                screw();

        translate([0, 6, 5])
            rotate([0, 90, 0])
                screw();

        translate([0, -3, 5])
            rotate([0, 90, 0])
                screw();
    }
    
    // Hip screw second side
    translate([
        (11.8 / 2) + 6,
        0,
        0
    ]) {
        translate([0, 6, 15])
            rotate([0, -90, 0])
                screw();

        translate([0, -3, 15])
            rotate([0, -90, 0])
                screw();

        translate([0, 6, 5])
            rotate([0, -90, 0])
                screw();

        translate([0, -3, 5])
            rotate([0, -90, 0])
                screw();
    }



}

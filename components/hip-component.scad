use <../pieces/hip-piece-a.scad>
use <../pieces/hip-piece-b.scad>
use <../pieces/hip-piece-c.scad>
use <../pieces/hip-piece-d.scad>
use <./servo-motor.scad>
use <../assets/screw/screw.scad>

hipComponent();

/**
 * hipComponent
 * @name hipComponent
 * @description Hip assembly
 * @type component
 * @parent hipLegComponent
 */
module hipComponent(param_s1) {

    // Display params
    display_screws = true;

    display_general_offset = 0; // Totaly mounted should be 0
    dispaly_screws_offset = 2 * display_general_offset ; // Totaly mounted should be 0
    dispaly_HipPieceB_offset = display_general_offset; // Totaly mounted should be 0
    dispaly_HipPieceC_offset = display_general_offset; // Totaly mounted should be 0

    translate([0, 0, 10])
        color("#337733")
            hipPieceA();
    
    hipPieceD();

    translate([
            11.8/2 + dispaly_HipPieceB_offset,
            0,
            0
        ])
        hipPieceB();

    translate([
            -11.8/2 - 3 - dispaly_HipPieceC_offset,
            0,
            0
        ])
        hipPieceC();
 
    translate([0, 0, 36 - 15.9])
        servoMotor(param_s1 + 90);


    if (display_screws) {
        // Hip screw one side hipPieceC
        translate([
            -(11.8 / 2) - 6 - dispaly_screws_offset,
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
        
        // Hip screw second side hipPieceB
        translate([
            (11.8 / 2) + 6 + dispaly_screws_offset,
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

        // Screw servo arm articulation
        translate([
            -(11.8 / 2) - 3 - 7 - dispaly_screws_offset,
            -15,
            30
        ])
            rotate([0, 90, 0])
                screw();

    }
}

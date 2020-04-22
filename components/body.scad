use <../pieces/body-piece-a.scad>
use <../pieces/body-piece-b.scad>

body();

/**
 * bodyComponent
 * @name bodyComponent
 * @description Body assembly component
 * @type component
 * @parent hexapodRobot
 */
module body() {
    bot_length = 150;
    bot_width = 60;

    bodyPieceA();

    translate([0, bot_width - 4, 0])
        bodyPieceB();

    translate([150 / 2, bot_width - 4, 0])
        bodyPieceB();

    translate([150, bot_width - 4, 0])
        bodyPieceB();

    

    translate([0, 4, 0])
        rotate([0, 0, 180])
            bodyPieceB();

    translate([bot_length / 2, 4, 0])
        rotate([0, 0, 180])
            bodyPieceB();

    translate([bot_length, 4, 0])
        rotate([0, 0, 180])
            bodyPieceB();
}
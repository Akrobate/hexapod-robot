use <../pieces/body-piece-a.scad>
use <../pieces/body-piece-a-1.scad>
use <../pieces/body-piece-b.scad>
use <../pieces/body-piece-c.scad>

bodyComponent();

/**
 * bodyComponent
 * @name bodyComponent
 * @description Body assembly component
 * @type component
 * @parent hexapodRobotComponent
 */
module bodyComponent() {
    bot_length = 150;
    bot_width = 60;


    translate([4.5, 12, 0])
        bodyPieceA();

    translate([4.5 + 75, 12, 0])
        bodyPieceA();

    translate([4.5, 12, 37])
        bodyPieceA1();

    translate([4.5 + 75, 12, 37])
        bodyPieceA1();

    // support for legs (vertical pieces)
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


    // Links between legs blocks top side (horizonal pieces)
    translate([-9, 0, 40])
        bodyPieceC();

    translate([-9 + bot_length / 2, 0, 40])
        bodyPieceC();
    
    translate([-9 + bot_length, 0, 40])
        bodyPieceC();

    
    // Links between legs blocks (horizonal pieces)
    translate([-9, 0, -3])
        bodyPieceC();

    translate([-9 + bot_length / 2, 0, -3])
        bodyPieceC();
    
    translate([-9 + bot_length, 0, -3])
        bodyPieceC();
}
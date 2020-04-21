use <../pieces/body-piece-a.scad>

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
}
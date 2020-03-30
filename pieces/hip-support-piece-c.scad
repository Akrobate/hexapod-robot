hipSupportPieceC();

/**
 * hipSupportPieceC
 * @name hipSupportPieceC
 * @description Holds the hip component
 * @tag piece
 * @type piece
 * @parent LegHipComponent
 */
module hipSupportPieceC(
    length = 8,
    width = 18,
    height = 50.3
) {
    translate([0, 0, height / 2])
    difference() {
        cube(
            [
                width,
                length,
                height
            ],
            center = true
        );
    }
}

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
    length = 6,
    width = 12,
    height = 50
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

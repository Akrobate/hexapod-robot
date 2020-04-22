

bodyPieceA();

/**
 * bodyPieceA
 * @name bodyPieceA
 * @description Body piece A
 * @type piece
 * @parent bodyComponent
 */

module bodyPieceA(){
    
    difference() {
        cube([
            150,
            60,
            3,
        ]);


        translate([10, 10, -1])
            cube([
                130,
                40,
                5,
            ]); 

    }
}

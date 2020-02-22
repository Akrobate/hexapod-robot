use <../envelopes/servo-envelope.scad>

hipPieceB();


module hipPieceB(){

    translate(
        [
            0,
            -32.2 + 5 + (11.8 / 2),
            0
        ])
        cube([3, 32.2, 36]);

}

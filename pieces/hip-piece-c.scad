use <../envelopes/servo-envelope.scad>

hipPieceC();


module hipPieceC(){

    main_piece_height = 36;
    
    translate(
        [
            0,
            -32.2 + 5 + (11.8 / 2),
            0
        ])
        cube([3, 32.2, main_piece_height]);

}
use <../envelopes/servo-envelope.scad>

hipPieceA();


module hipPieceA(){

    _fn = 32;
    debug_colors = false;
    
    main_piece_color = "#FF0000";
    main_piece_height = 36;
    
    articulation_support_color = "#00FF00";
    articulation_support_height = 1;

    articulation_color = "#0000FF";
    articulation_height = 3;

    difference() {
        union() {
            translate(
                [
                    - 11.8 / 2,
                    - 22.2 + (11.8 / 2) - 5,
                    - 0
                ]
            )
                color(debug_colors ? main_piece_color : "")
                cube(
                    [
                        11.8,
                        32.2,
                        main_piece_height
                    ], center = false);

            union() {
                translate(
                    [
                        0,
                        0,
                        - articulation_support_height // -22
                    ]
                ) {
                    color(debug_colors ? articulation_support_color : "")
                    cylinder(
                        r = 11.8 / 2,
                        h = articulation_support_height,
                        $fn = _fn
                    );
                    translate(
                        [
                            0,
                            0,
                            - articulation_height
                        ]
                    )
                        color(debug_colors ? articulation_color : "")
                        cylinder(
                            r = 4.6 / 2,
                            h = articulation_height,
                            $fn = _fn
                        );
                }
            }
        }

        translate([
                0,
                0,
                main_piece_height + 22.7 / 2 - 15.9
            ])
            servoEnvelope(servo_hole_scale = 1.05);
    }
}

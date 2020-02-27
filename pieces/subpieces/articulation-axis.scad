articulationAxisSubPiece();

module articulationAxisSubPiece(
    base_diameter,
    base_height,
    axis_diameter,
    axis_height,
    _fn = 64
) {
    // servo body r = 11.8 / 2
    // servo axis r = 4.6 / 2

    cylinder(
        r = base_diameter / 2,
        h = base_height,
        $fn = _fn
    );
    translate(
        [
            0,
            0,
            base_height
        ])
        cylinder(
            r = axis_diameter / 2,
            h = axis_height,
            $fn = _fn
        );

}
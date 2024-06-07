articulationAxisSubPiece();

/**
 * articulationAxisSubPiece
 * @name articulationAxisSubPiece
 * @description articlulation axis
 * @type subPiece
 */

module articulationAxisSubPiece(
    base_diameter,
    base_height,
    axis_diameter,
    axis_height,
    _fn = 64
) {
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
        ]
    )
        cylinder(
            r = axis_diameter / 2,
            h = axis_height,
            $fn = _fn
        );

}
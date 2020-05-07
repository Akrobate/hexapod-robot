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
    // servo body r = 11.8 / 2
    // servo axis r = 4.6 / 2

    debug_colors = true;
    base_color = "red";
    axis_color = "green";

    color(debug_colors ? base_color : "")
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
        color(debug_colors ? axis_color : "")
        cylinder(
            r = axis_diameter / 2,
            h = axis_height,
            $fn = _fn
        );

}
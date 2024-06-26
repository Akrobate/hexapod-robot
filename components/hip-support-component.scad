use <../pieces/hip-support-piece-a.scad>
use <../pieces/hip-support-piece-b.scad>
use <../pieces/hip-support-piece-c.scad>
use <../assets/screw/screw.scad>

hipSupportComponent();

/**
 * hipSupportComponent
 * @name hipSupportComponent
 * @description Hip support assembly
 * @type component
 * @parent hipLegComponent
 */
module hipSupportComponent(param_s1) {
    
    height = 50.3;
    a_b_thickness = 3;

    translate([0, 0, height + a_b_thickness])
        hipSupportPieceA();

    translate([0, 0, 0])
        hipSupportPieceB();

    translate([0, 25 - (8 / 2), a_b_thickness])
        // hipSupportPieceC(height = height);
        hipSupportPieceC();

    // Screws bottom
    translate([4.5, 25 - (8 / 2), -3])
        screw();
    translate([-4.5, 25 - (8 / 2), -3])
        screw();
    
    // Screws top
    translate([4.5, 25 - (8 / 2), height + a_b_thickness + 6])
        rotate([0, 180, 0])
            screw();

    translate([-4.5, 25 - (8 / 2), height + a_b_thickness + 6])
        rotate([0, 180, 0])
            screw();

}

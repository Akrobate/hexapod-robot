use <../pieces/hip-support-piece-a.scad>
use <../pieces/hip-support-piece-b.scad>
use <../pieces/hip-support-piece-c.scad>
use <../assets/screw/screw.scad>

hipSupport();

/**
 * HipSupportComponent
 * @name HipSupportComponent
 * @description Hip support assembly
 * @category HipLeg
 * @type component
 * @parent HipLeg
 */
module hipSupport(param_s1) {
    
    height = 50.3;
    a_b_thickness = 3;

    translate([0, 0, height + a_b_thickness])
        color("violet")
            hipSupportPieceA();

    translate([0, 0, 0])
        color("violet")
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

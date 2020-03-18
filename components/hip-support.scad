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

    translate([0, 25 - (6 / 2), a_b_thickness])
        hipSupportPieceC(
            height = height
        );

}

use <../pieces/hip-support-piece-a.scad>
use <../pieces/hip-support-piece-b.scad>
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
    
    translate([0, 0, 10])
            hipSupportPieceA();

    translate([0, 0, -10])
            hipSupportPieceB();

}

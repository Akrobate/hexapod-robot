use <./body.scad>
use <./leg/leg.scad>

$fn = 128;

module skeletonAssembly() {

    bot_length = 150;
    bot_width = 50;
    bone_size = 2;

    animated_a = - 45 + ($t < 0.5 ? $t * 180 : 180 - $t * 180);
    
    translate([0, 0, -bone_size])
        bodySkeleton(body_length = bot_length, body_width = bot_width, bode_size = bone_size);


    translate([bot_length / 2, bot_width / 2, 0])
        rotate([0, 0, 90])
            legSkeleton(name = "L1", angle_s1 = animated_a, angle_s2 = 0);

    translate([0, bot_width / 2, 0])
        rotate([0, 0, 90])
            legSkeleton(name = "L2", angle_s1 = animated_a * -1);

    translate([ - bot_length / 2, bot_width / 2, 0])
        rotate([0, 0, 90])
            legSkeleton(name = "L3", angle_s1 = animated_a);


    translate([bot_length / 2, - bot_width / 2, 0])
        rotate([0, 0, -90])
            legSkeleton(name = "R1", angle_s1 = animated_a);

    translate([0, - bot_width / 2, 0])
        rotate([0, 0, -90])
            legSkeleton(name = "R2", angle_s1 = animated_a * -1);

    translate([ - bot_length / 2, - bot_width / 2, 0])
        rotate([0, 0, -90])
            legSkeleton(name = "R3", angle_s1 = animated_a);

}

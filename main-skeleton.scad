use <./skeleton/assembly.scad>
use <./animations/walking-v1.scad>

animation_angle = walkingV1($t);
skeletonAssembly(animation_angle);

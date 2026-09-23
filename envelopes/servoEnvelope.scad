
servoEnvelope();

// Enveloppe for servo holes fixations
// Around the servo motor and the fixation holes

module servoEnvelope(
    servo_hole_scale = 1,
    screw_hole_diameter = 2
) {

    servo_length = 22.2;
    servo_width = 11.8;
    servo_height = 22.7;

    // translating to center the servo motor envelope as servo
    scale(servo_hole_scale)
        translate([-servo_width / 2, - servo_length + (servo_width / 2), -servo_height/2])
            cube([servo_width, servo_length, servo_height], center = false);    

    
    translate([-servo_width / 2, - servo_length + (servo_width / 2), -servo_height/2]) {
        translate([servo_width / 2, - 2.3, 0])
            cylinder(h = servo_height, r = 1, center = false, $fn = 16);

        translate([servo_width / 2, servo_length + 2.3, 0])
            cylinder(h = servo_height, r = 1, center = false, $fn = 16);
    }
}
